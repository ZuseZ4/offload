#include <stdio.h>
extern void rust_del_dot_vec_2d(
                            float* div,
                            float* x1 , float* x2  ,
                            float* x3 , float* x4  ,
                            float* y1 , float* y2  ,
                            float* y3 , float* y4  ,
                            float* fx1 ,float* fx2 ,
                            float* fx3 ,float* fx4 ,
                            float* fy1 ,float* fy2 ,
                            float* fy3 ,float* fy4 ,
                            float* //real_zones: &[usize],
                            float half, float ptiny,
                            //iend: usize
                            );

int main() {
const int N = 8000;
float x1[N], x2[N], x3[N], x4[N];
float fx1[N], fx2[N], fx3[N], fx4[N];
float y1[N], y2[N], y3[N], y4[N];
float fy1[N], fy2[N], fy3[N], fy4[N];


//#define NDSET2D(jp,v,v1,v2,v3,v4)  \
//   v4 = v ;   \
//   v1 = v4 + 1 ;  \
//   v2 = v1 + jp ;  \
//   v3 = v4 + jp ;

for (RepIndex_type irep = 0; irep < run_reps; ++irep) {

  #pragma omp target is_device_ptr(x1,x2,x3,x4, y1,y2,y3,y4, \
                                   fx1,fx2,fx3,fx4, fy1,fy2,fy3,fy4, \
                                   div) device( did )
  #pragma omp teams distribute parallel for thread_limit(threads_per_team) schedule(static, 1)
  for(int i=0; i<N; ++i) 
  {
    rust_del_dot_vec_2d();
  }
}


printf("%f\n", A[N-1]);
return 1;
}
