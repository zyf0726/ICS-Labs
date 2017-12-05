/* Name : Yunfan Zhang
 * ID	: 1600012710
 ******************************************************************
 * mm.c
 ******************************************************************
 *  31				3 2  1 0			31				3 2  1 0			
 *  -------------------------		------------------------
 *	 	size     	|.|pa|a|		     size     	|.|pa|a|
 *  -------------------------		------------------------
 *											list_next
 *									------------------------					
 *			payload							list_prev
 *			  and					------------------------
 *			padding								..
 *									------------------------		
 *										size		|.|pa|a|
 *  -------------------------		------------------------
 *			[allocated]						[free]
 ******************************************************************
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
//#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE       	4       	/* Word and header/footer size (bytes) */ 
#define DSIZE       	8       	/* Double word size (bytes) */
#define MIN_BLKSIZE		((DSIZE)*2)	/* Minimal block size in heap */

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bits into a word */
#define PACK(size, prev_alloc, alloc)  ((size) | ((prev_alloc) << 1) | (alloc)) 

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1) 
#define GET_PREVALLOC(p)	((GET(p) & 0x2) >> 1)

/* Read the offset and compute the real address from address p */
#define GET_ADDR(p)	 ((char *)PRLG_BP + GET(p))

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of its list fields */
#define LIST_NEXT(bp)		(bp)
#define LIST_PREV(bp)		((char *)(bp) + WSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

/* head/cur node of each list */	/*   words				policy 			*/
static void *head_1, *cur_1,		/*   1 ~  4			LIFO + next_fit		*/
		    *head_2, *cur_2,		/*   5 ~  6				....			*/
			*head_3, *cur_3,		/*   7 ~  8				....			*/
			*head_4, *cur_4,		/*   9 ~ 10				....			*/
			*head_5, *cur_5,		/*   11 ~ 12			....			*/
			*head_6, *cur_6,		/*   13 ~ 14			....			*/
			*head_7, *cur_7,		/*   15 ~ 16			....			*/
			*head_8, *cur_8,		/*   17 ~ 18			....			*/
			*head_9, *cur_9,		/*   19 ~ 20			....			*/		
			*head_10, *cur_10,		/*	 21 ~ 32			....			*/
			*head_11, *cur_11,		/*   33 ~ 40			....			*/
			*head_12, *cur_12,		/*   41 ~ 48			....			*/
			*head_13, 				/*   49 ~ 64		LIFO + first_fit	*/
			*head_14,				/*   65 ~ 128			....			*/
			*head_15,				/*	129 ~ 216			....			*/
			*head_16,				/*	217 ~ 448			....			*/
			*head_17,				/*	449 ~ 768			....			*/
			*head_18,				/*  769 ~ 1536		ADDR + first_fit	*/
			*head_19,				/*  1537 ~ 4096			....			*/
			*head_20;				/*  4097 ~ inf			....			*/
					
#define LIFO_NXTFIT			0x2
#define LIFO_FSTFIT			0x3
#define ADDR_FSTFIT			0x1
#define GET_POLICY(bid)		(((bid) <= 12) ? (LIFO_NXTFIT) :\
							 ((bid) <= 17) ? (LIFO_FSTFIT) :\
							 (ADDR_FSTFIT))
#define IS_NXTFIT(code)		(!((code) & 1))
#define IS_FSTFIT(code)		((code) & 1)
#define IS_LIFO(code)		((code) >> 1)
#define IS_ADDR(code)		(!((code) >> 1))
#define BUCKET_CNT			20

static void *EPLG_BP = NULL;				/* epilogue block pointer */
static void *PRLG_BP = NULL;				/* prologue block pointer */
					
/* Given size, find which bucket it fits */
static inline int GET_BUCKETID(int size) {
	if (size >= 1 && size <= 4) return 1;
	if (size >= 5 && size <= 6) return 2;
	if (size >= 7 && size <= 8) return 3;
	if (size >= 9 && size <= 10) return 4;
	if (size >= 11 && size <= 12) return 5;
	if (size >= 13 && size <= 14) return 6;
	if (size >= 15 && size <= 16) return 7;
	if (size >= 17 && size <= 18) return 8;
	if (size >= 19 && size <= 20) return 9;
	if (size >= 21 && size <= 32) return 10;
	if (size >= 33 && size <= 40) return 11;
	if (size >= 41 && size <= 48) return 12;
	if (size >= 49 && size <= 64) return 13;
	if (size >= 65 && size <= 128) return 14;
	if (size >= 129 && size <= 216) return 15;
	if (size >= 217 && size <= 448) return 16;
	if (size >= 449 && size <= 768) return 17;
	if (size >= 769 && size <= 1536) return 18;
	if (size >= 1537 && size <= 4096) return 19;
	if (size >= 4097) return 20;
	dbg_printf("GET_BUCKETID error: size(%d) doesn't fit any bucket.\n", size);
	return 0;
}
static inline int FIT_BUCKET(int bid, int size) {
	switch (bid) {
		case 1: return size >= 1 && size <= 4;
		case 2: return size >= 5 && size <= 6;
		case 3: return size >= 7 && size <= 8;
		case 4: return size >= 9 && size <= 10;
		case 5: return size >= 11 && size <= 12;
		case 6:	return size >= 13 && size <= 14;
		case 7: return size >= 15 && size <= 16;
		case 8: return size >= 17 && size <= 18;
		case 9: return size >= 19 && size <= 20;
		case 10: return size >= 21 && size <= 32;
		case 11: return size >= 33 && size <= 40;
		case 12: return size >= 41 && size <= 48;
		case 13: return size >= 49 && size <= 64;
		case 14: return size >= 65 && size <= 128;
		case 15: return size >= 129 && size <= 216;
		case 16: return size >= 217 && size <= 448;
		case 17: return size >= 449 && size <= 768;
		case 18: return size >= 769 && size <= 1536;
		case 19: return size >= 1537 && size <= 4096;
		case 20: return size >= 4097;
	}
	dbg_printf("FIT_BUCKET error: bid(%d) illegal.\n", bid);
	return 0;
}
static inline void *LIST_HEAD(int bid) {
	switch (bid) {
		case 1:	return head_1;
		case 2:	return head_2;
		case 3:	return head_3;
		case 4:	return head_4;
		case 5:	return head_5;
		case 6:	return head_6;
		case 7: return head_7;
		case 8: return head_8;
		case 9: return head_9;
		case 10: return head_10;
		case 11: return head_11;
		case 12: return head_12;
		case 13: return head_13;
		case 14: return head_14;
		case 15: return head_15;
		case 16: return head_16;
		case 17: return head_17;	
		case 18: return head_18;	
		case 19: return head_19;	
		case 20: return head_20;	
	}
	dbg_printf("LIST_HEAD error: bid(%d) illegal.\n", bid);
	return 0;
}
static inline void *LIST_CUR(int bid) {
	switch (bid) {
		case 1:	return cur_1;
		case 2: return cur_2;
		case 3: return cur_3;
		case 4: return cur_4;
		case 5: return cur_5;
		case 6:	return cur_6;
		case 7: return cur_7;
		case 8: return cur_8;
		case 9: return cur_9;
		case 10: return cur_10;
		case 11: return cur_11;
		case 12: return cur_12;
	}
	dbg_printf("LIST_HEAD error: bid(%d) illegal.\n", bid);
	return 0;
}
static inline void SET_HEAD(int bid, void *head) {
	switch (bid) {
		case 1:	head_1 = head; return;
		case 2:	head_2 = head; return;
		case 3:	head_3 = head; return;
		case 4:	head_4 = head; return;
		case 5:	head_5 = head; return;
		case 6:	head_6 = head; return;
		case 7: head_7 = head; return;
		case 8: head_8 = head; return;
		case 9: head_9 = head; return;
		case 10: head_10 = head; return;
		case 11: head_11 = head; return;
		case 12: head_12 = head; return;
		case 13: head_13 = head; return;
		case 14: head_14 = head; return;
		case 15: head_15 = head; return;
		case 16: head_16 = head; return;
		case 17: head_17 = head; return;
		case 18: head_18 = head; return;
		case 19: head_19 = head; return;
		case 20: head_20 = head; return;
	}
	dbg_printf("SET_HEAD error: bid(%d) illegal.\n", bid);
}
static inline void SET_CUR(int bid, void *cur) {
	switch (bid) {
		case 1:	cur_1 = cur; return;
		case 2: cur_2 = cur; return;
		case 3: cur_3 = cur; return;
		case 4: cur_4 = cur; return;
		case 5: cur_5 = cur; return;
		case 6:	cur_6 = cur; return;
		case 7: cur_7 = cur; return;
		case 8: cur_8 = cur; return;
		case 9: cur_9 = cur; return;
		case 10: cur_10 = cur; return;
		case 11: cur_11 = cur; return;
		case 12: cur_12 = cur; return;
	}
	dbg_printf("SET_CUR error: bid(%d) illegal.\n", bid);
}

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(int bid, size_t asize);
static void *coalesce(void *bp);
static void list_insert(int bid, void *bp);
static void list_erase(int bid, void *bp);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
	/* Create the initial empty heap */
	if ((PRLG_BP = mem_sbrk(6*WSIZE)) == (void *)-1) 
		return -1;
	
	dbg_printf("\nheap_start = %p\n", PRLG_BP);
	PUT(PRLG_BP, 0);									/* Alignment padding */
	PUT(PRLG_BP + (1*WSIZE), PACK(MIN_BLKSIZE, 0, 1));	/* Prologue header */ 
	PUT(PRLG_BP + (4*WSIZE), PACK(MIN_BLKSIZE, 0, 1));	/* Prologue footer */ 
	PUT(PRLG_BP + (5*WSIZE), PACK(0, 1, 1));			/* Epilogue header */
	
	EPLG_BP = PRLG_BP + (6*WSIZE);		/* Epilogue block pointer */
	PRLG_BP = PRLG_BP + (2*WSIZE);		/* Prologue block pointer */
	dbg_printf("\nPRLG_BP = %p\tEPLG_BP = %p\n", PRLG_BP, EPLG_BP);
	
	for (int i = 1; i <= BUCKET_CNT; ++i) { /* initialize list */
		SET_HEAD(i, PRLG_BP);
		if (IS_NXTFIT(GET_POLICY(i)))
			SET_CUR(i, PRLG_BP);
	}
	
    return 0;
}

/* 
 * malloc - Allocate a block with at least size bytes of payload 
 */
void *malloc (size_t size) {
	dbg_printf("malloc(%ld)\n", size);
	size_t asize;		/* Adjusted block size */
	size_t extsize;		/* Amount to extend heap if no fit */
	int i, bid; char *bp;
	
	if (PRLG_BP == NULL)
		mm_init();
	/* Ignore spurious requests */
	if (size == 0)
		return NULL;
	
	/* Adjust block size to include overhead and alignment reqs. */
	asize = DSIZE * ((size + WSIZE + (DSIZE-1)) / DSIZE);
	if (asize < MIN_BLKSIZE)
		asize = MIN_BLKSIZE;
	
	/* Search the free list for a fit */
	bid = GET_BUCKETID(asize);
	for (i = bid; i <= BUCKET_CNT; ++i) {
		bp = find_fit(i, asize);
		if (bp != NULL) {
			place(bp, asize);
			return bp;
		}
	}
	
	/* No fit found. Get more memory and place the block */
	extsize = asize;
	if ((bp = extend_heap(extsize/WSIZE)) == NULL)
		return NULL;
	place(bp, asize);
	return bp;
}

/* 
 * free - Free a block 
 */
void free (void *bp) {
	dbg_printf("free(%p)\n", bp);
	if(!bp) return;
	
	size_t size = GET_SIZE(HDRP(bp));
	char pa = GET_PREVALLOC(HDRP(bp)), a;
	PUT(HDRP(bp), PACK(size, pa, 0));
	PUT(FTRP(bp), PACK(size, pa, 0));
	
	size = GET_SIZE(HDRP(NEXT_BLKP(bp)));
	a = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
	PUT(HDRP(NEXT_BLKP(bp)), PACK(size, 0, a));
	if (!a)
		PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0, a));
	
	coalesce(bp);
}

/*
 * realloc - Returns a pointer to an allocated region of at least size bytes
 */
void *realloc(void *oldptr, size_t size) {
	size_t oldsize;
	void *newptr;
	
	/* If oldptr is NULL, then this is just malloc. */
	if (oldptr == NULL)
		return malloc(size);
	
	/* If size == 0 then this is just free, and we return NULL. */
	if (size == 0) {
		free(oldptr);
		return NULL;
	}
	
	newptr = malloc(size);
	
	/* If realloc() fails the original block is left untouched  */
	if (!newptr) return NULL;
	
	/* Copy the old data. */
	oldsize = GET_SIZE(HDRP(oldptr));
	if(size < oldsize) oldsize = size;
	memcpy(newptr, oldptr, oldsize);
	
	/* Free the old block. */
	free(oldptr);
	
	return newptr;
}

/*
 * calloc - Allocates memory for an array of nmemb elements of size bytes each
 *			Returns a pointer to the allocated memory
 *			Note that the memory is set to zero before returning
 */
void *calloc (size_t nmemb, size_t size) {
	void *ptr = malloc(nmemb * size);
	if (!ptr) return NULL;
	memset(ptr, 0, nmemb * size);
    return ptr;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {

	/* Check epilogue and prologue blocks. */
	if (EPLG_BP == NULL || PRLG_BP == NULL || 
		GET_SIZE(HDRP(PRLG_BP)) != MIN_BLKSIZE ||
		GET_SIZE(HDRP(EPLG_BP)) != 0 ||
		GET_ALLOC(HDRP(PRLG_BP)) != 1 ||
		GET_ALLOC(HDRP(EPLG_BP)) != 1) {
		dbg_printf("Heap Checker Error(line %d): "
				   "epilogue/prologue blocks illegal.\n", lineno);
		exit(0);
	}
	
	void *bp, *next; int free_cnt = 0;
	for (bp = NEXT_BLKP(PRLG_BP); bp != EPLG_BP; bp = NEXT_BLKP(bp)) {
		/* Check each block’s address alignment. */
		if (!aligned(bp)) { 
			dbg_printf("Heap Checker Error(line %d): "
					   "block's address unaligned.\n", lineno);
			exit(0);
		}
		
		/* Check each block’s header and footer. */
		if (!in_heap(bp) || GET_SIZE(HDRP(bp)) == 0) { 
			dbg_printf("Heap Checker Error(line %d): "
					   "block(%p)'s header illegal.\n", lineno, bp);
			exit(0);
		}
		if (!GET_ALLOC(HDRP(bp)) && GET(HDRP(bp)) != GET(FTRP(bp))) {
			dbg_printf("Heap Checker Error(line %d): "
					   "block(%p)'s footer not equal to header.\n", lineno, bp);
			exit(0);
		}
		next = NEXT_BLKP(bp);
		if (GET_ALLOC(HDRP(bp)) != GET_PREVALLOC(HDRP(next))) {
			dbg_printf("Heap Checker Error(line %d): "
					   "block(%p)'s allocated fields not consistency.\n", lineno, bp);
			exit(0);
		}
		
		/* Check coalescing. */
		if (!GET_ALLOC(HDRP(bp)) && !GET_ALLOC(HDRP(next))) {
			dbg_printf("Heap Checker Error(line %d): "
					   "two consecutive free blocks in the heap.\n", lineno);
			exit(0);
		}
		
		if (!GET_ALLOC(HDRP(bp))) ++free_cnt;
	}
	
	for (int i = 1; i <= BUCKET_CNT; ++i) {
		for (bp = LIST_HEAD(i); bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp))) {
			/* Check all free list pointers */
			if (!in_heap(bp)) {
				dbg_printf("Heap Checker Error(line %d): "
						   "free list pointers illegal.\n", lineno);
				exit(0);
			}
			
			/* Check block size fall within bucket size range */
			if (!FIT_BUCKET(i, GET_SIZE(HDRP(bp)))) {
				dbg_printf("Heap Checker Error(line %d): "
						   "block size doesn't match the bucket.\n", lineno);
				exit(0);
			}
			
			/* Check all next/previous pointers. */
			next = GET_ADDR(LIST_NEXT(bp));
			if (next != PRLG_BP && GET_ADDR(LIST_PREV(next)) != bp) {
				dbg_printf("Heap Checker Error(line %d): "
						   "next/previous pointers not consistent.\n", lineno);
				exit(0);
			}
			
			--free_cnt;
		}
	}
	
	/* Check memory leak */
	if (free_cnt != 0) {
		dbg_printf("Heap Checker Error(line %d): "
				   "free blocks counting by iterating and traversing"
				   "doesn't match.\n", lineno);
	}
}

/***********************************************************************
 * 		The remaining routines are internal helper routines 
 ***********************************************************************
*/

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words) 
{
	char *bp, pa; size_t size;
	
	/* Allocate an even number of words to maintain alignment */
	size = (words + (words & 1)) * WSIZE;
	dbg_printf("extend_heap %ld bytes\n", size);
	if ((long)(mem_sbrk(size)) == -1)
		return NULL;
	
	/* Initialize free block header/footer and the epilogue header */
	bp = EPLG_BP, pa = GET_PREVALLOC(HDRP(bp));
	PUT(HDRP(bp), PACK(size, pa, 0));		/* Free block header */   
	PUT(FTRP(bp), PACK(size, pa, 0));		/* Free block footer */
	EPLG_BP = NEXT_BLKP(bp);
	PUT(HDRP(EPLG_BP), PACK(0, 0, 1));		/* Update epilogue block*/
//	dbg_printf("PRLG_BP = %p  EPLG_BP=%p\n", PRLG_BP, EPLG_BP);		
//	for (void *bp = PRLG_BP - WSIZE; bp != EPLG_BP; bp += WSIZE)
//		dbg_printf("*%p = %u | %u | %u\n", bp, GET_SIZE(bp), GET_PREVALLOC(bp), GET_ALLOC(bp));
	
    /* Coalesce if the previous block was free */
    bp = coalesce(bp);
    return bp;
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */

static void *coalesce(void *bp) {
	int prev_alloc = GET_PREVALLOC(HDRP(bp));
	int next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
	
	size_t size = GET_SIZE(HDRP(bp)), prev_size;
	size_t next_size = GET_SIZE(HDRP(NEXT_BLKP(bp)));
	
	int bid = GET_BUCKETID(size), prev_bid, next_bid;
	
	dbg_printf("coalesce(%p) size=%ld bid=%d\n", bp, size, bid);
	
	if (prev_alloc && next_alloc) {			/* Case 1 */
		list_insert(bid, bp);
	}
	else if (prev_alloc && !next_alloc)	{	/* Case 2 */
		next_bid = GET_BUCKETID(next_size);
		list_erase(next_bid, NEXT_BLKP(bp));

		size += next_size;
		PUT(HDRP(bp), PACK(size, prev_alloc, 0));
		PUT(FTRP(bp), PACK(size, prev_alloc, 0));
		bid = GET_BUCKETID(size);
		list_insert(bid, bp);
	}
	else if (!prev_alloc && next_alloc) {	/* Case 3 */
		prev_size = GET_SIZE(FTRP(PREV_BLKP(bp)));
		prev_bid = GET_BUCKETID(prev_size);
		list_erase(prev_bid, PREV_BLKP(bp));

		bp = PREV_BLKP(bp);
		size += prev_size;
		prev_alloc = GET_PREVALLOC(FTRP(bp));
		PUT(HDRP(bp), PACK(size, prev_alloc, 0));
		PUT(FTRP(bp), PACK(size, prev_alloc, 0));
		bid = GET_BUCKETID(size);
		list_insert(bid, bp);
	}
	else {
		prev_size = GET_SIZE(FTRP(PREV_BLKP(bp)));
		prev_bid = GET_BUCKETID(prev_size);
		next_bid = GET_BUCKETID(next_size);
		list_erase(prev_bid, PREV_BLKP(bp));
		list_erase(next_bid, NEXT_BLKP(bp));
		
		bp = PREV_BLKP(bp);
		size += prev_size + next_size;
		prev_alloc = GET_PREVALLOC(FTRP(bp));
		PUT(HDRP(bp), PACK(size, prev_alloc, 0));
		PUT(FTRP(bp), PACK(size, prev_alloc, 0));
		bid = GET_BUCKETID(size);
		list_insert(bid, bp);
	}
	return bp;
}

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static void place(void *bp, size_t asize) {

//	dbg_printf("PRLG_BP = %p  EPLG_BP=%p\n", PRLG_BP, EPLG_BP);		
//	for (void *bp = PRLG_BP - WSIZE; bp != EPLG_BP; bp += WSIZE)
//		dbg_printf("*%p = %u | %u | %u\n", bp, GET_SIZE(bp), GET_PREVALLOC(bp), GET_ALLOC(bp));
		
	size_t size = GET_SIZE(HDRP(bp));
	dbg_printf("place(%p, asize=%ld) size=%ld\n", bp, asize, size);
	int bid = GET_BUCKETID(size);
	int prev_alloc = GET_PREVALLOC(HDRP(bp));
	
	if (size - asize >= MIN_BLKSIZE) {
		PUT(HDRP(bp), PACK(asize, prev_alloc, 1));
		list_erase(bid, bp);
		bp = NEXT_BLKP(bp);
		size -= asize;
		bid = GET_BUCKETID(size);
		PUT(HDRP(bp), PACK(size, 1, 0));
		PUT(FTRP(bp), PACK(size, 1, 0));
		list_insert(bid, bp);
	}
	else {
		PUT(HDRP(bp), PACK(size, prev_alloc, 1));
		list_erase(bid, bp);
		bp = NEXT_BLKP(bp);
		size = GET_SIZE(HDRP(bp));
		if (GET_ALLOC(HDRP(bp)))
			PUT(HDRP(bp), PACK(size, 1, 1));
		else {
			PUT(HDRP(bp), PACK(size, 1, 0));
			PUT(FTRP(bp), PACK(size, 1, 0));
		}
	}
	
}

/* 
 * find_fit - Find a fit for a block with asize bytes,
 *			  using next-fit or first-fit policy
 */
static void *find_fit(int bid, size_t asize) {
	int policy = GET_POLICY(bid); void *bp, *oldbp;
	if (IS_NXTFIT(policy)) {
		/* Next fit search */
		oldbp = LIST_CUR(bid);
		
		/* search from the current-pointer to the end of list */
		for (bp = oldbp; bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && (asize <= GET_SIZE(HDRP(bp)))) {
				SET_CUR(bid, bp);
				return bp;
			}
				
		/* search from start of list to old current-pointer */
		for (bp = LIST_HEAD(bid); bp != oldbp; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && (asize <= GET_SIZE(HDRP(bp)))) {
				SET_CUR(bid, bp);
				return bp;
			}		
		
		return NULL;	/* no fit found */
	}
	else {
		/* First-fit search */
		for (bp = LIST_HEAD(bid); bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && (asize <= GET_SIZE(HDRP(bp))))
				return bp;
		return NULL;	/* no fit found */
	}
}

/*
 * list_insert - Insert a new free block in the list of bucket bid,
 *				 using LIFO or address-order policy
 */
static void list_insert(int bid, void *bp) {
	int policy = GET_POLICY(bid);
	void *head, *cur_bp, *next_bp;
	if (IS_LIFO(policy)) {	/* last-in-first-out */
		head = LIST_HEAD(bid);
		if (head == PRLG_BP) {
			PUT(LIST_PREV(bp), 0);
			PUT(LIST_NEXT(bp), 0);
			SET_HEAD(bid, bp);
			SET_CUR(bid, bp);
			return;			
		}
		PUT(LIST_PREV(head), bp - PRLG_BP);
		PUT(LIST_NEXT(bp), head - PRLG_BP);
		PUT(LIST_PREV(bp), 0);
		SET_HEAD(bid, bp);
	}
	else {	/* address-order */
		head = LIST_HEAD(bid);
		if (head == PRLG_BP) {
			PUT(LIST_PREV(bp), 0);
			PUT(LIST_NEXT(bp), 0);
			SET_HEAD(bid, bp);
			return;
		}
		if (bp < head) {	/* insert at list_head */
			PUT(LIST_PREV(head), bp - PRLG_BP);
			PUT(LIST_NEXT(bp), head - PRLG_BP);
			PUT(LIST_PREV(bp), 0);
			SET_HEAD(bid, bp);
			return;
		}
		/* insert inside the list */
		for (cur_bp = head; ; cur_bp = next_bp) {
			next_bp = GET_ADDR(LIST_NEXT(cur_bp));
			if (bp > cur_bp && bp < next_bp) {
				PUT(LIST_PREV(bp), cur_bp - PRLG_BP);
				PUT(LIST_NEXT(bp), next_bp - PRLG_BP);
				PUT(LIST_NEXT(cur_bp), bp - PRLG_BP);
				PUT(LIST_PREV(next_bp), bp - PRLG_BP);
				return;
			}
			if (next_bp == PRLG_BP) break;
		}
		/* insert at list_tail */
		PUT(LIST_PREV(bp), cur_bp - PRLG_BP);
		PUT(LIST_NEXT(bp), 0);
		PUT(LIST_NEXT(cur_bp), bp - PRLG_BP);
	}
}

/*
 * list_ease - Erase a block in the list of bucket bid
 */
static void list_erase(int bid, void *bp) {
	int policy = GET_POLICY(bid);
	void *prev_bp = GET_ADDR(LIST_PREV(bp));
	void *next_bp = GET_ADDR(LIST_NEXT(bp));
	PUT(LIST_NEXT(prev_bp), next_bp - PRLG_BP);
	PUT(LIST_PREV(next_bp), prev_bp - PRLG_BP);
	if (prev_bp == PRLG_BP)
		SET_HEAD(bid, next_bp);
	/*Make sure the current-pointer isn't pointing into a erased block */
	if (IS_NXTFIT(policy) && bp == LIST_CUR(bid))
		SET_CUR(bid, next_bp);
}
