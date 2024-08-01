/// for (Index_type ii = ibegin; ii < iend; ++ii ) {
///   Index_type i = real_zones[ii];
///
///   Real_type xi  = half * ( x1[i]  + x2[i]  - x3[i]  - x4[i]  ) ;
///   Real_type xj  = half * ( x2[i]  + x3[i]  - x4[i]  - x1[i]  ) ;
///
///   Real_type yi  = half * ( y1[i]  + y2[i]  - y3[i]  - y4[i]  ) ;
///   Real_type yj  = half * ( y2[i]  + y3[i]  - y4[i]  - y1[i]  ) ;
///
///   Real_type fxi = half * ( fx1[i] + fx2[i] - fx3[i] - fx4[i] ) ;
///   Real_type fxj = half * ( fx2[i] + fx3[i] - fx4[i] - fx1[i] ) ;
///
///   Real_type fyi = half * ( fy1[i] + fy2[i] - fy3[i] - fy4[i] ) ;
///   Real_type fyj = half * ( fy2[i] + fy3[i] - fy4[i] - fy1[i] ) ;
///
///   Real_type rarea  = 1.0 / ( xi * yj - xj * yi + ptiny ) ;
///
///   Real_type dfxdx  = rarea * ( fxi * yj - fxj * yi ) ;
///
///   Real_type dfydy  = rarea * ( fyj * xi - fyi * xj ) ;
///
///   Real_type affine = ( fy1[i] + fy2[i] + fy3[i] + fy4[i] ) /
///                      ( y1[i]  + y2[i]  + y3[i]  + y4[i]  ) ;
///
///   div[i] = dfxdx + dfydy + affine ;
/// }
#[no_mangle]
pub fn rust_del_dot_vec_2d(div: &mut f32,
                            x1 : &f32,  x2 : &f32,
                            x3 : &f32,  x4 : &f32,
                            y1 : &f32,  y2 : &f32,
                            y3 : &f32,  y4 : &f32,
                            fx1:  &f32, fx2: &f32,
                            fx3:  &f32, fx4: &f32,
                            fy1:  &f32, fy2: &f32,
                            fy3:  &f32, fy4: &f32,
                            //real_zones: &[usize],
                            half: f32, ptiny: f32,
                            //iend: usize
                            ) {
   let xi  = half * ( x1  + x2  - x3  - x4  ) ;
   let xj  = half * ( x2  + x3  - x4  - x1  ) ;

   let yi  = half * ( y1  + y2  - y3  - y4  ) ;
   let yj  = half * ( y2  + y3  - y4  - y1  ) ;

   let fxi = half * ( fx1 + fx2 - fx3 - fx4 ) ;
   let fxj = half * ( fx2 + fx3 - fx4 - fx1 ) ;

   let fyi = half * ( fy1 + fy2 - fy3 - fy4 ) ;
   let fyj = half * ( fy2 + fy3 - fy4 - fy1 ) ;

   let rarea  = 1.0 / ( xi * yj - xj * yi + ptiny ) ;

   let dfxdx  = rarea * ( fxi * yj - fxj * yi ) ;

   let dfydy  = rarea * ( fyj * xi - fyi * xj ) ;

   let affine = ( fy1 + fy2 + fy3 + fy4 ) /
                      ( y1  + y2  + y3  + y4  ) ;

   *div = dfxdx + dfydy + affine ;
}

//#[no_mangle]
//rust_del_dot_vec_2d(div: &f32,
//                            x1 : &f32,  x2 : &f32,
//                            x3 : &f32,  x4 : &f32,
//                            y1 : &f32,  y2 : &f32,
//                            y3 : &f32,  y4 : &f32,
//                            fx1:  &f32, fx2: &f32,
//                            fx3:  &f32, fx4: &f32,
//                            fy1:  &f32, fy2: &f32,
//                            fy3:  &f32, fy4: &f32,
//                            real_zones: &[usize],
//                            half: f32, ptiny: f32,
//                            iend: usize, ii: usize) {
//    let i = real_zones[ii];
//   let xi  = half * ( x1[i]  + x2[i]  - x3[i]  - x4[i]  ) ;
//   let xj  = half * ( x2[i]  + x3[i]  - x4[i]  - x1[i]  ) ;
//
//   let yi  = half * ( y1[i]  + y2[i]  - y3[i]  - y4[i]  ) ;
//   let yj  = half * ( y2[i]  + y3[i]  - y4[i]  - y1[i]  ) ;
//
//   let fxi = half * ( fx1[i] + fx2[i] - fx3[i] - fx4[i] ) ;
//   let fxj = half * ( fx2[i] + fx3[i] - fx4[i] - fx1[i] ) ;
//
//   let fyi = half * ( fy1[i] + fy2[i] - fy3[i] - fy4[i] ) ;
//   let fyj = half * ( fy2[i] + fy3[i] - fy4[i] - fy1[i] ) ;
//
//   let rarea  = 1.0 / ( xi * yj - xj * yi + ptiny ) ;
//
//   let dfxdx  = rarea * ( fxi * yj - fxj * yi ) ;
//
//   let dfydy  = rarea * ( fyj * xi - fyi * xj ) ;
//
//   let affine = ( fy1[i] + fy2[i] + fy3[i] + fy4[i] ) /
//                      ( y1[i]  + y2[i]  + y3[i]  + y4[i]  ) ;
//
//   div[i] = dfxdx + dfydy + affine ;
//}
