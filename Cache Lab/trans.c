/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 ********************************************************************
 Name: Yunfan Zhang
 ID  : 1600012710
 ********************************************************************
 */ 
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * trans_sol1 - This is the solution transpose function for 32*32 matrix.
 * I partition the 32*32 matrix into several 8*8 blocks to make each block
 * fit into cache.
 */
void trans_sol1(int N, int A[N][N], int B[N][N]) {
	int bi, bj, i, j, x, y, val_e;
	for (bi = 0; bi < N/8; ++bi)
		for (bj = 0; bj < N/8; ++bj) {
			for (i = 0; i < 8; ++i) {
				for (j = 0; j < 8; ++j) {
					x = bi * 8 + i;
					y = bj * 8 + j;
					if (x == y) {
						val_e = A[x][y];
						// When x == y, load A[x][y] and B[x][y] will cause cache thrashing,
						// so I use a temporary variable to store value of A[x][y]
						continue;
					}
					B[y][x] = A[x][y];
				}
				if (bi == bj) {
					x = bi * 8 + i;
					B[x][x] = val_e;
				}
			}			
		}
}

/* trans_sol2 - This is the solution transpose function for 64*64 matrix.
 * The number of columns is 64, so it will cause cache thrashing when we
 * operate directly on each 8*8 block. So I use one block which will be 
 * accessed soon to store some values in matrix A.
 */
void trans_sol2(int N, int A[N][N], int B[N][N]) {
	int bi, bj, i, j, ci, cj;
	for (bi = 0; bi < N/8; ++bi)
		for (bj = 0; bj < N/8; ++bj) {
			ci = bi, cj = bj + 1;
			if (cj == 8) ++ci, cj = 0;
			if (cj == bi) ++cj;
			if (cj == 8) ++ci, cj = 0;
			// find next block (ci, cj)
			
			if (bi != bj || ci == N/8 || cj == N/8) {
				if (ci < N/8 && cj < N/8) {	
					for (i = 0; i < 4; ++i) 
						for (j = 0; j < 4; ++j)
							B[ci*8+i][cj*8+j] = A[bj*8+j][bi*8+4+i];
				}
			
				for (i = 0; i < 4; ++i) 
					for (j = 0; j < 4; ++j)
						B[bi*8+i][bj*8+j] = A[bj*8+j][bi*8+i];
				
				for (i = 0; i < 4; ++i) 
					for (j = 0; j < 4; ++j)
						B[bi*8+i][bj*8+4+j] = A[bj*8+4+j][bi*8+i];

				for (i = 0; i < 4; ++i) 
					for (j = 0; j < 4; ++j)
						B[bi*8+4+i][bj*8+4+j] = A[bj*8+4+j][bi*8+4+i];

				if (ci < N/8 && cj < N/8) {	
					for (i = 0; i < 4; ++i)
						for (j = 0; j < 4; ++j) {
							B[bi*8+4+i][bj*8+j] = B[ci*8+i][cj*8+j];
						}
				}
				else {
					for (i = 0; i < 4; ++i) 
						for (j = 0; j < 4; ++j)
							B[bi*8+4+i][bj*8+j] = A[bj*8+j][bi*8+4+i];
				}
			} // case 1: bi != bj
			else {
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[ci*8+i][cj*8+j] = A[bj*8+j][bi*8+i];
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[bi*8+i][bj*8+j] = B[ci*8+i][cj*8+j];

				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[ci*8+i][cj*8+j] = A[bj*8+4+j][bi*8+i];
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[bi*8+i][bj*8+4+j] = B[ci*8+i][cj*8+j];
					
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[ci*8+i][cj*8+j] = A[bj*8+4+j][bi*8+4+i];
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[bi*8+4+i][bj*8+4+j] = B[ci*8+i][cj*8+j];
				
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[ci*8+i][cj*8+j] = A[bj*8+j][bi*8+4+i];
				for (i = 0; i < 4; ++i)
					for (j = 0; j < 4; ++j)
						B[bi*8+4+i][bj*8+j] = B[ci*8+i][cj*8+j];
			} // case 2: bi == bj
		}
}

/* 
 * trans_sol3  - This is the solution transpose function for 61*67 matrix.
 * Both the number of rows and columns are not multiples of 8, so cache
 * misses are hard to predict. So I try K = 1, 2, ..., 20 and find it get
 * the best performance when K = 18.
 */
void trans_sol3(int N, int M, int A[N][M], int B[M][N]) {
	const int K = 18; // K is the block size
	int bi, bj, i, j, x, y;
	for (bi = 0; bi <= N/K; ++bi)
		for (bj = 0; bj <= M/K; ++bj)
			for (i = 0; i < K; ++i)
				for (j = 0; j < K; ++j) {
					x = bi * K + i;
					y = bj * K + j;
					if (x >= N || y >= M)
						continue;
					B[y][x] = A[x][y];
				}
}

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
	// s = 5 ---> S = 32
	// E = 1
	// b = 5 ---> B = 32(byte)
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
	if (N == 32 && M == 32)
    	trans_sol1(N, A, B);
    else if (N == 64 && M == 64)
    	trans_sol2(N, A, B);
   	else
   		trans_sol3(N, M, A, B);

    ENSURES(is_transpose(M, N, A, B));
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

