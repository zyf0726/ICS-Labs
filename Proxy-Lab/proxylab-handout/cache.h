#ifndef __CACHE_H__
#define __CACHE_H__

#include "csapp.h"

typedef struct {
	char *url;       /* tag: URL */
	char *header;    /* response line and header */
	void *body;      /* response body */
	int content_length;    /* body length */
	int time;        /* last access time */
} CacheBlock;

typedef struct Cache {
	CacheBlock **blocks;    /* array of cache blocks */
	int block_n;     /* number of cache blocks */
	int count;       /* number of data access */
	int size;        /* total size of web objects */
	
	sem_t mutex;
	sem_t w;         /* semaphore */
	int readcnt;     /* number of reader */
} Cache;

/* initialize a cache */
void initCache(Cache *cache);

/* find a cache block by URL */
int findBlock(Cache *cache, const char *url, char *header,
               void *body, int *content_length);

/* insert a new cache block */
void insertBlock(Cache *cache, char *url, char *header,
                 void *body, int content_length);


#endif /* __CACHE_H__ */
