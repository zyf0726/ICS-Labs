#include "cache.h"

/* Recommended max cache sizes */
#define MAX_CACHE_SIZE 1049000

#define INIT_BLOCK_NUMBER   64

/* initCache: initialize a cache */
void initCache(Cache *cache) {
    cache->count = cache->size = 0;
    cache->block_n = INIT_BLOCK_NUMBER;
    cache->blocks = (CacheBlock **)Calloc(cache->block_n, sizeof(CacheBlock*));
    
    Sem_init(&cache->mutex, 0, 1);
    Sem_init(&cache->w, 0, 1);
    cache->readcnt = 0;    
}

/* findBlock: find a cache block by URL */
int findBlock(Cache *cache, const char *url, char *header,
              void *body, int *content_length) {
    P(&cache->mutex);
    ++cache->count;
    if (!cache->readcnt++)
        P(&cache->w);
    V(&cache->mutex);    
    
    int found = 0;
    for (int i = 0; i < cache->block_n; ++i) {
        if (cache->blocks[i] == NULL)
            continue;
        if (strcasecmp(cache->blocks[i]->url, url) == 0) {
            cache->blocks[i]->time = cache->count;
            strcpy(header, cache->blocks[i]->header);
            memcpy(body, cache->blocks[i]->body,
                   cache->blocks[i]->content_length);
            *content_length = cache->blocks[i]->content_length;
            found = 1;
            break;
        }
    }
        
    P(&cache->mutex);
    if (!--cache->readcnt)
        V(&cache->w);
    V(&cache->mutex);

    return found;
}

/* insertBlock: insert a new cache block */
void insertBlock(Cache *cache, char *url, char *header,
                 void *body, int content_length) {
    P(&cache->w);
    
    ++cache->count;
    CacheBlock **blocks = cache->blocks;
    
    /* evict */
    while (cache->size + content_length > MAX_CACHE_SIZE) {
          int tar = -1;
        for (int i = 0; i < cache->block_n; ++i) {
            if (blocks[i] == NULL)
                continue;
            if ((tar == -1) || (blocks[i]->time) < (blocks[tar]->time))
                tar = i;
        }
        if (tar != -1) {
            cache->size -= blocks[tar]->content_length;
            free(blocks[tar]->url);
            free(blocks[tar]->header);
            free(blocks[tar]->body);
            free(blocks[tar]);
            blocks[tar] = NULL;
        }
    }
    
    int tar = -1;
    for (int i = 0; i < cache->block_n; ++i)
        if (blocks[i] == NULL) {
            tar = i;
            break;
        }
    
    if (tar == -1) {
        cache->blocks = realloc(cache->blocks,
                                sizeof(CacheBlock*) * (cache->block_n << 1));
        for (int i = cache->block_n; i < (cache->block_n << 1); ++i)
            cache->blocks[i] = NULL;
        tar = cache->block_n;
        cache->block_n <<= 1;
        blocks = cache->blocks;
    }

    /* insert */
    CacheBlock *block = Malloc(sizeof(CacheBlock));
    block->url = Malloc(strlen(url) + 1);
    strcpy(block->url, url);
    block->header = Malloc(strlen(header) + 1);
    strcpy(block->header, header);
    block->body = Malloc(content_length);
    memcpy(block->body, body, content_length);
    block->content_length = content_length;
    
    block->time = cache->count;
    blocks[tar] = block;
    cache->size += content_length;
    
    V(&cache->w);
}

