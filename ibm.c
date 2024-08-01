#include <stdio.h>
extern void rust_fadd(float*, float*, float*);

int main() {
const int N = 8000;
float A[N], B[N], C[N];
float A2[N], B2[N], C2[N];
float k = 4.0;
int nteams = 16;
int block_threads = N/nteams;
for(int i=0; i<N; ++i) 
{
   A[i] = 1.0 * 0; 
   B[i] = 1.0 * i;
   C[i] = 1.0 * 3*i;
   A2[i] = 1.0 * 0; 
   B2[i] = 1.0 * i;
   C2[i] = 1.0 * 3*i;
}

#pragma omp target map(tofrom: A) map(to: B, C)
#pragma omp teams num_teams(nteams)
#pragma omp distribute parallel for dist_schedule(static, block_threads)
for(int i=0; i<N; ++i) 
{
  rust_fadd(&B[i], &C[i], &A[i]);
}

#pragma omp target map(tofrom: A) map(to: B, C)
#pragma omp teams num_teams(nteams)
#pragma omp distribute parallel for dist_schedule(static, block_threads)
for(int i=0; i<N; ++i) 
{
  A2[i] = B2[i] + C2[i];
}
printf("%f\n", A[N-1]);
printf("%f\n", A2[N-1]);
return 1;
}
