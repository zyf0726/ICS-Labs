/*
This program is a cache simulater. It takes a VALGRIND memory trace as input,
simulates the hit/miss behavior of a cache memory on this trace, and outputs
the total number of hits, misses and evictions.
****************************************************************************
Name: Yunfan Zhang
ID:   1600012710
****************************************************************************
*/
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include "cachelab.h"

enum CacheStatus {HIT = 0, MISS, EVICT};

typedef struct {
	int valid; // valid bit
	long tag; // tag bit
	int time; // last access time
} CacheLine;

typedef CacheLine *CacheSet;

typedef struct {
	int s, S; // number of sets
	int E; // number of lines per set
	int b, B; // number of block bits	
	int count; // number of data access
	CacheSet *cacheSets;
} Cache;

// Split an address into three parts:
// CO refers to block offset
// CI refers to set index
// CT refers to tag
void parseAddress(Cache *cache, long Addr, int *CO, int *CI, long *CT) {
	*CO = Addr & (cache->B - 1);
	*CI = (Addr >> cache->b) & (cache->S - 1);
	*CT = Addr >> (cache->b + cache->s);
}

// Init a cache with three arguments: s, E, b
void initCache(Cache *cache, int s, int E, int b) {
	cache->s = s, cache->S = 1 << s;
	cache->E = E;
	cache->b = b, cache->B = 1 << b;
	cache->count = 0;
	
	cache->cacheSets = (CacheSet*) malloc(sizeof(CacheSet) * (cache->S));
	for (int i = 0; i < cache->S; ++i) {
		CacheSet set = (CacheLine*) malloc(sizeof(CacheLine) * E);
		for (int j = 0; j < E; ++j)
			set[j].valid = 0;
		cache->cacheSets[i] = set;
	}
}

// Free the memory of a cache
void freeCache(Cache *cache) {
	for (int i = 0; i < cache->S; ++i) {
		printf("%lx\n", (long)(cache->cacheSets[i]));
		free(cache->cacheSets[i]);
		cache->cacheSets[i] = NULL;
	}
	free(cache->cacheSets);
	cache->cacheSets = NULL;
}

// Access data in a cache indexed by a 64-bit address
int accessData(Cache *cache, long addr) {
	int CO, CI; long CT;
	parseAddress(cache, addr, &CO, &CI, &CT);
	CacheSet set = cache->cacheSets[CI];
	++cache->count;
	
	int status = -1;
	for (int i = 0; i < cache->E; ++i)
		if (set[i].valid && set[i].tag == CT) {
			set[i].time = cache->count;
			status = HIT;
			break;
		}
	if (status == HIT)
		return HIT;
	// cache hit
	
	status = MISS; int target = -1;
	for (int i = 0; i < cache->E; ++i)
		if (!set[i].valid) {
			target = i;
			break;
		}
	if (target == -1) {
		status |= EVICT;
		target = 0;
		for (int i = 0; i < cache->E; ++i)
			if (set[i].time < set[target].time)
				target = i;
	} // evict the Least-Frequently-Used line
	set[target].valid = 1;
	set[target].time = cache->count;
	set[target].tag = CT;
	// cache miss
	return status;
}

const int MAXBUF = 1000;
int main(int argc, char *argv[]) {
	int s, E, b, needDisplay = 0;
	const char *filename; char buf[MAXBUF];
	
	for (int ch; (ch = getopt(argc, argv, "hvs:E:b:t:")) != -1;)
		switch (ch) {
		case 'h':
			puts("There is no usage info :)");
			break;
		case 'v':
			needDisplay = 1; break;
		case 's':
			sscanf(optarg, "%d", &s); break;
		case 'E':
			sscanf(optarg, "%d", &E); break;
		case 'b':
			sscanf(optarg, "%d", &b); break;
		case 't':
			filename = optarg; break;
		case '?':
			printf("Unknown option: %c\n", (char)optopt);
			break;
		}
	
	FILE *tracefile = fopen(filename, "r");
	if (tracefile == NULL) {
		fprintf(stderr, "Error: File not exists.");
		return 0;
	}
	Cache *cache = (Cache*) malloc(sizeof(Cache));
	initCache(cache, s, E, b);
	
	int hit_count = 0, miss_count = 0, eviction_count = 0;
	while (fgets(buf, MAXBUF, tracefile) != NULL) {
		long addr; int size, status = 0;
		sscanf(&buf[3], "%lx,%d", &addr, &size);
		buf[strlen(buf)-1] = '\0'; // delete '\n'
		status = accessData(cache, addr);
		
		if (needDisplay) printf("%s ", &buf[1]);
		if (status == HIT) {
			++hit_count;
			if (needDisplay) printf("hit");
		} // cache hit
		else { // cache miss
			++miss_count;
			if (needDisplay) printf("miss");
			if ((status & EVICT) == EVICT) { // block eviction
				++eviction_count;
				if (needDisplay) printf(" eviction");
			}				
		}
		if (buf[1] == 'M') {
			++hit_count;
			if (needDisplay) printf(" hit");
		}
		if (needDisplay) printf("\n");
	}
	
	freeCache(cache);
	free(cache);	
	fclose(tracefile);
	printSummary(hit_count, miss_count, eviction_count);
	return 0;
}
