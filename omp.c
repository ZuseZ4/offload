#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

extern int foo();
extern void bar(int*);
extern void baz(int*, int*, long);
extern void fadd(float*, float*, float*);

//        2147483647      
#define N 16000000

int main() {

  int nteams = 16;
  int block_threads = N/nteams;
  float *a, *b, *out; 

  // Allocate memory
  a   = (float*)malloc(sizeof(float) * N);
  b   = (float*)malloc(sizeof(float) * N);
  out = (float*)malloc(sizeof(float) * N);

  // Initialize array
  for(int i = 0; i < N; i++){
      a[i] = 1.0f; b[i] = 2.0f;
  }

#pragma omp target map(tofrom: out) map(to: a,b)
#pragma omp teams num_teams(nteams)
#pragma omp distribute parallel for dist_schedule(static, block_threads)
  for(int i = 0; i < N; i++)
  {
          out[i] = a[i] + b[i];
          //fadd(&a[i], &b[i], &out[i]);
  }
  return out[37];


//  int ret = 0;
//  int in[5] = {0,1,2,3,4};
//  long len = 5;
//#pragma omp target teams distribute parallel for map(from : ret)
//  for(int i=0; i < 32000; i++)
//  {
//    baz(&ret, in, len);
//    //bar(&ret);
//    //ret = foo();
//  }
//  return ret;
}
