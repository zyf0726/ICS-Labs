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
#define NDEBUG
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

struct head_table {
	void *h0, *h1, *h2, *h3, *h4, *h5;
	void *h6, *h7, *h8, *h9, *h10, *h11;
	void *h12, *h13, *h14, *h15, *h16;
	void *h17, *h18, *h19, *h20, *h21;
};
static struct head_table head_table;
static void **head_t = &head_table.h0;

struct cur_table {
	void *c0;
};
static struct cur_table cur_table;
static void **cur_t = &cur_table.c0;

/************************************  
	 	 words				policy 			
[0]		1 ~  4			LIFO + first_fit
[1]		5 ~  6				....			
[2]		7 ~  8				....			
[3]		9 ~ 10				....			
[4]		11 ~ 12				....			
[5]		13 ~ 14				....			
[6]		15 ~ 16				....			
[7]		17 ~ 18				....			
[8]		19 ~ 20				....					
[9]		21 ~ 32				....			
[10]	33 ~ 40				....			
[11]	41 ~ 48				....			
[12]	49 ~ 64				....			
[13]	65 ~ 128			....			
[14]	129 ~ 216			....			
[15]	217 ~ 448			....			
[16]	449 ~ 768			....			
[17]	769 ~ 1536		LIFO + best_fit		
[18]	1537 ~ 4096			....
[19]	4097 ~ inf			....
*************************************/
#define NXTFIT			0x1
#define FSTFIT			0x2
#define BSTFIT			0x3
#define LIFO			0x4
#define ADDR			0x5
#define TREE			0x6
#define IS_NXTFIT(c)		(((c) & 3) == NXTFIT)
#define IS_FSTFIT(c)		(((c) & 3) == FSTFIT)
#define IS_BSTFIT(c)		(((c) & 3) == BSTFIT)
#define IS_LIFO(c)			(((c) & 12) == LIFO)
#define IS_ADDR(c)			(((c) & 12) == ADDR)
#define IS_TREE(c)			(((c) & 12) == TREE)
#define GET_POLICY(bid)		(((bid) <= 16) ? (LIFO | FSTFIT) :\
							 (LIFO | BSTFIT))
#define BUCKET_CNT			20

static void *EPLG_BP = NULL;				/* epilogue block pointer */
static void *PRLG_BP = NULL;				/* prologue block pointer */
					
/* Given size, find which bucket it fits */
static inline int GET_BUCKETID(int size) {
	if (size >= 1 && size <= 4) return 0;
	if (size >= 5 && size <= 6) return 1;
	if (size >= 7 && size <= 8) return 2;
	if (size >= 9 && size <= 10) return 3;
	if (size >= 11 && size <= 12) return 4;
	if (size >= 13 && size <= 14) return 5;
	if (size >= 15 && size <= 16) return 6;
	if (size >= 17 && size <= 18) return 7;
	if (size >= 19 && size <= 20) return 8;
	if (size >= 21 && size <= 32) return 9;
	if (size >= 33 && size <= 40) return 10;
	if (size >= 41 && size <= 48) return 11;
	if (size >= 49 && size <= 64) return 12;
	if (size >= 65 && size <= 128) return 13;
	if (size >= 129 && size <= 216) return 14;
	if (size >= 217 && size <= 448) return 15;
	if (size >= 449 && size <= 768) return 16;
	if (size >= 769 && size <= 1536) return 17;
	if (size >= 1537 && size <= 4096) return 18;
	if (size >= 4097) return 19;
	dbg_printf("GET_BUCKETID error: size(%d) doesn't fit any bucket.\n", size);
	return -1;
}
static inline int FIT_BUCKET(int bid, int size) {
	return bid == GET_BUCKETID(size);
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
	
	for (int i = 0; i < BUCKET_CNT; ++i) { /* initialize list */
		head_t[i] = PRLG_BP;
		if (IS_NXTFIT(GET_POLICY(i)))
			cur_t[i] = PRLG_BP;
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
	for (i = bid; i < BUCKET_CNT; ++i) {
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
	if(!bp) return;
	
	size_t size = GET_SIZE(HDRP(bp));
	dbg_printf("free(%p) size=%ld\n", bp, size);
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
					   "block(%p)'s allocated fields not consistency.\n",
					   lineno, bp);
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
	
	for (int i = 0; i < BUCKET_CNT; ++i) {
		for (bp = head_t[i]; bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp))) {
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
	char *bp, prev_alloc; size_t size;
	
	/* Allocate an even number of words to maintain alignment */
	size = (words + (words & 1)) * WSIZE;
	dbg_printf("extend_heap %ld bytes\n", size);
	if ((long)(mem_sbrk(size)) == -1)
		return NULL;
	
	/* Initialize free block header/footer and the epilogue header */
	bp = EPLG_BP, prev_alloc = GET_PREVALLOC(HDRP(bp));
	PUT(HDRP(bp), PACK(size, prev_alloc, 0));		/* Free block header */   
	PUT(FTRP(bp), PACK(size, prev_alloc, 0));		/* Free block footer */
	EPLG_BP = NEXT_BLKP(bp);
	PUT(HDRP(EPLG_BP), PACK(0, 0, 1));		/* Update epilogue block*/
	
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
		PUT(HDRP(bp), PACK(size, 1, 0));
		PUT(FTRP(bp), PACK(size, 1, 0));
		bid = GET_BUCKETID(size);
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
	int policy = GET_POLICY(bid);
	void *bp, *oldbp, *bestbp;
	if (IS_NXTFIT(policy)) {
		/* Next fit search */
		oldbp = cur_t[bid];
		
		/* search from the current-pointer to the end of list */
		for (bp = oldbp; bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && (asize <= GET_SIZE(HDRP(bp)))) {
				cur_t[bid] = bp;
				return bp;
			}
				
		/* search from start of list to old current-pointer */
		for (bp = head_t[bid]; bp != oldbp; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && (asize <= GET_SIZE(HDRP(bp)))) {
				cur_t[bid] = bp;
				return bp;
			}		
		
		return NULL;	/* no fit found */
	}
	else if (IS_FSTFIT(policy)) {
		/* First-fit search */
		for (bp = head_t[bid]; bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && (asize <= GET_SIZE(HDRP(bp))))
				return bp;
		return NULL;	/* no fit found */
	}
	else if (IS_BSTFIT(policy)) {
		/* Best-fit search */
		bestbp = NULL;
		for (bp = head_t[bid]; bp != PRLG_BP; bp = GET_ADDR(LIST_NEXT(bp)))
			if (!GET_ALLOC(bp) && asize <= GET_SIZE(HDRP(bp)) &&
				(!bestbp || GET_SIZE(HDRP(bp)) < GET_SIZE(HDRP(bestbp)))) {
				bestbp = bp;	
			}
		return bestbp;
	}
	dbg_printf("find_fit error: unknown bid or policy code.\n");
	return NULL;
}

/*
 * list_insert - Insert a new free block in the list of bucket bid,
 *				 using LIFO or address-order policy
 */
static void list_insert(int bid, void *bp) {
	int policy = GET_POLICY(bid);
	void *head, *cur_bp, *next_bp;
	if (IS_LIFO(policy)) {	/* last-in-first-out */
		head = head_t[bid];
		if (head == PRLG_BP) {
			PUT(LIST_PREV(bp), 0);
			PUT(LIST_NEXT(bp), 0);
			head_t[bid] = bp;
			if (IS_NXTFIT(policy))
				cur_t[bid] = bp;
			return;			
		}
		PUT(LIST_PREV(head), bp - PRLG_BP);
		PUT(LIST_NEXT(bp), head - PRLG_BP);
		PUT(LIST_PREV(bp), 0);
		head_t[bid] = bp;
	}
	else {	/* address-order */
		head = head_t[bid];
		if (head == PRLG_BP) { /* empty list */
			PUT(LIST_PREV(bp), 0);
			PUT(LIST_NEXT(bp), 0);
			head_t[bid] = bp;
			return;
		}
		if (bp < head) {	/* insert at list_head */
			PUT(LIST_PREV(head), bp - PRLG_BP);
			PUT(LIST_NEXT(bp), head - PRLG_BP);
			PUT(LIST_PREV(bp), 0);
			head_t[bid] = bp;
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
		head_t[bid] = next_bp;
	/*Make sure the current-pointer isn't pointing into a erased block */
	if (IS_NXTFIT(policy) && bp == cur_t[bid])
		cur_t[bid] = next_bp;
}
