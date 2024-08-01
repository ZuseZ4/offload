; ModuleID = 'func.914105e7849d5c08-cgu.0'
source_filename = "func.914105e7849d5c08-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @foo() unnamed_addr #0 {
start:
  ret i32 42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @bar(ptr noalias nocapture noundef writeonly align 4 dereferenceable(4) %x) unnamed_addr #1 {
start:
  store i32 21, ptr %x, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @baz(ptr noalias nocapture noundef writeonly align 4 dereferenceable(4) %x, ptr noalias nocapture noundef nonnull readonly align 4 %y.0, i64 noundef %y.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = icmp eq i64 %y.1, 0
  br i1 %0, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757667cfdee9d5baE.exit", label %bb9.i.preheader

bb9.i.preheader:                                  ; preds = %start
  %min.iters.check = icmp ult i64 %y.1, 8
  br i1 %min.iters.check, label %bb9.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %bb9.i.preheader
  %n.vec = and i64 %y.1, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %3, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %1 = getelementptr inbounds i32, ptr %y.0, i64 %index
  %2 = getelementptr inbounds i32, ptr %1, i64 4
  %wide.load = load <4 x i32>, ptr %1, align 4, !alias.scope !3
  %wide.load3 = load <4 x i32>, ptr %2, align 4, !alias.scope !3
  %3 = add <4 x i32> %wide.load, %vec.phi
  %4 = add <4 x i32> %wide.load3, %vec.phi2
  %index.next = add nuw i64 %index, 8
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %4, %3
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %y.1
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757667cfdee9d5baE.exit", label %bb9.i.preheader4

bb9.i.preheader4:                                 ; preds = %bb9.i.preheader, %middle.block
  %acc.0.i.ph = phi i32 [ 0, %bb9.i.preheader ], [ %6, %middle.block ]
  %i.0.i.ph = phi i64 [ 0, %bb9.i.preheader ], [ %n.vec, %middle.block ]
  br label %bb9.i

bb9.i:                                            ; preds = %bb9.i.preheader4, %bb9.i
  %acc.0.i = phi i32 [ %_5.0.i.i, %bb9.i ], [ %acc.0.i.ph, %bb9.i.preheader4 ]
  %i.0.i = phi i64 [ %_32.i, %bb9.i ], [ %i.0.i.ph, %bb9.i.preheader4 ]
  %_49.i = getelementptr inbounds i32, ptr %y.0, i64 %i.0.i
  %other.i.i = load i32, ptr %_49.i, align 4, !alias.scope !3, !noundef !9
  %_5.0.i.i = add i32 %other.i.i, %acc.0.i
  %_32.i = add nuw i64 %i.0.i, 1
  %_34.i = icmp eq i64 %_32.i, %y.1
  br i1 %_34.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757667cfdee9d5baE.exit", label %bb9.i, !llvm.loop !10

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757667cfdee9d5baE.exit": ; preds = %bb9.i, %middle.block, %start
  %_0.0.i = phi i32 [ 0, %start ], [ %6, %middle.block ], [ %_5.0.i.i, %bb9.i ]
  store i32 %_0.0.i, ptr %x, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @rust_fadd(ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %a, ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %b, ptr noalias nocapture noundef writeonly align 4 dereferenceable(4) %out) unnamed_addr #3 {
start:
  %self = load float, ptr %a, align 4, !noundef !9
  %other = load float, ptr %b, align 4, !noundef !9
  %_4 = fadd float %self, %other
  store float %_4, ptr %out, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" }
attributes #4 = { nonlazybind uwtable "probe-stack"="inline-asm" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.78.0 (9b00956e5 2024-04-29)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17hf34be616d8eddf2aE: %b"}
!5 = distinct !{!5, !"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17hf34be616d8eddf2aE"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{}
!10 = distinct !{!10, !8, !7}
