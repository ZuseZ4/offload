; ModuleID = 'del_dot_vec_2d.63894e38b4576d1a-cgu.0'
source_filename = "del_dot_vec_2d.63894e38b4576d1a-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @rust_del_dot_vec_2d(ptr noalias nocapture noundef writeonly align 4 dereferenceable(4) %div, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %x1, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %x2, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %x3, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %x4, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %y1, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %y2, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %y3, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %y4, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fx1, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fx2, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fx3, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fx4, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fy1, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fy2, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fy3, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %fy4, float noundef %half, float noundef %ptiny) unnamed_addr #0 {
start:
  %self = load float, ptr %x1, align 4, !noundef !3
  %other = load float, ptr %x2, align 4, !noundef !3
  %self1 = fadd float %self, %other
  %other2 = load float, ptr %x3, align 4, !noundef !3
  %self3 = fsub float %self1, %other2
  %other4 = load float, ptr %x4, align 4, !noundef !3
  %_21 = fsub float %self3, %other4
  %xi = fmul float %_21, %half
  %self5 = fadd float %other, %other2
  %self6 = fsub float %self5, %other4
  %_25 = fsub float %self6, %self
  %xj = fmul float %_25, %half
  %self7 = load float, ptr %y1, align 4, !noundef !3
  %other8 = load float, ptr %y2, align 4, !noundef !3
  %self9 = fadd float %self7, %other8
  %other10 = load float, ptr %y3, align 4, !noundef !3
  %self11 = fsub float %self9, %other10
  %other12 = load float, ptr %y4, align 4, !noundef !3
  %_29 = fsub float %self11, %other12
  %yi = fmul float %_29, %half
  %self13 = fadd float %other8, %other10
  %self14 = fsub float %self13, %other12
  %_33 = fsub float %self14, %self7
  %yj = fmul float %_33, %half
  %self15 = load float, ptr %fx1, align 4, !noundef !3
  %other16 = load float, ptr %fx2, align 4, !noundef !3
  %self17 = fadd float %self15, %other16
  %other18 = load float, ptr %fx3, align 4, !noundef !3
  %self19 = fsub float %self17, %other18
  %other20 = load float, ptr %fx4, align 4, !noundef !3
  %_37 = fsub float %self19, %other20
  %fxi = fmul float %_37, %half
  %self21 = fadd float %other16, %other18
  %self22 = fsub float %self21, %other20
  %_41 = fsub float %self22, %self15
  %fxj = fmul float %_41, %half
  %self23 = load float, ptr %fy1, align 4, !noundef !3
  %other24 = load float, ptr %fy2, align 4, !noundef !3
  %self25 = fadd float %self23, %other24
  %other26 = load float, ptr %fy3, align 4, !noundef !3
  %self27 = fsub float %self25, %other26
  %other28 = load float, ptr %fy4, align 4, !noundef !3
  %_45 = fsub float %self27, %other28
  %fyi = fmul float %_45, %half
  %self29 = fadd float %other24, %other26
  %self30 = fsub float %self29, %other28
  %_49 = fsub float %self30, %self23
  %fyj = fmul float %_49, %half
  %_55 = fmul float %xi, %yj
  %_56 = fmul float %xj, %yi
  %_54 = fsub float %_55, %_56
  %_53 = fadd float %_54, %ptiny
  %rarea = fdiv float 1.000000e+00, %_53
  %_59 = fmul float %yj, %fxi
  %_60 = fmul float %yi, %fxj
  %_58 = fsub float %_59, %_60
  %dfxdx = fmul float %rarea, %_58
  %_63 = fmul float %xi, %fyj
  %_64 = fmul float %xj, %fyi
  %_62 = fsub float %_63, %_64
  %dfydy = fmul float %rarea, %_62
  %self31 = fadd float %self25, %other26
  %_66 = fadd float %self31, %other28
  %self32 = fadd float %self9, %other10
  %_68 = fadd float %self32, %other12
  %affine = fdiv float %_66, %_68
  %_70 = fadd float %dfxdx, %dfydy
  %0 = fadd float %affine, %_70
  store float %0, ptr %div, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.78.0 (9b00956e5 2024-04-29)"}
!3 = !{}
