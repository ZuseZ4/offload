; ModuleID = 'omp-host-x86_64-unknown-linux-gnu.bc'
source_filename = "omp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.__tgt_offload_entry = type { ptr, ptr, i64, i32, i32 }
%struct.__tgt_kernel_arguments = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, [3 x i32], [3 x i32], i32 }

@.__omp_offloading_46_5cc0a2d9_main_l29.region_id = weak constant i8 0
@__omp_offloading_46_5cc0a2d9_main_l29 = internal constant i8 0
@.offload_sizes = private unnamed_addr constant [5 x i64] [i64 4, i64 4, i64 8, i64 8, i64 8]
@.offload_maptypes = private unnamed_addr constant [5 x i64] [i64 800, i64 800, i64 35, i64 33, i64 33]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5cc0a2d9_main_l29\00"
@.offloading.entry.__omp_offloading_46_5cc0a2d9_main_l29 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5cc0a2d9_main_l29.region_id, ptr @.offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nteams = alloca i32, align 4
  %block_threads = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %out = alloca ptr, align 8
  %i = alloca i32, align 4
  %nteams.casted = alloca i64, align 8
  %block_threads.casted = alloca i64, align 8
  %.offload_baseptrs = alloca [5 x ptr], align 8
  %.offload_ptrs = alloca [5 x ptr], align 8
  %.offload_mappers = alloca [5 x ptr], align 8
  %tmp = alloca i32, align 4
  %kernel_args = alloca %struct.__tgt_kernel_arguments, align 8
  store i32 0, ptr %retval, align 4
  store i32 16, ptr %nteams, align 4
  %0 = load i32, ptr %nteams, align 4
  %div = sdiv i32 16000000, %0
  store i32 %div, ptr %block_threads, align 4
  %call = call noalias ptr @malloc(i64 noundef 64000000) #3
  store ptr %call, ptr %a, align 8
  %call1 = call noalias ptr @malloc(i64 noundef 64000000) #3
  store ptr %call1, ptr %b, align 8
  %call2 = call noalias ptr @malloc(i64 noundef 64000000) #3
  store ptr %call2, ptr %out, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 16000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %idxprom
  store float 1.000000e+00, ptr %arrayidx, align 4
  %4 = load ptr, ptr %b, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %4, i64 %idxprom3
  store float 2.000000e+00, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %nteams, align 4
  store i32 %7, ptr %nteams.casted, align 4
  %8 = load i64, ptr %nteams.casted, align 8
  %9 = load i32, ptr %block_threads, align 4
  store i32 %9, ptr %block_threads.casted, align 4
  %10 = load i64, ptr %block_threads.casted, align 8
  %11 = getelementptr inbounds [5 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  store i64 %8, ptr %11, align 8
  %12 = getelementptr inbounds [5 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  store i64 %8, ptr %12, align 8
  %13 = getelementptr inbounds [5 x ptr], ptr %.offload_mappers, i64 0, i64 0
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds [5 x ptr], ptr %.offload_baseptrs, i32 0, i32 1
  store i64 %10, ptr %14, align 8
  %15 = getelementptr inbounds [5 x ptr], ptr %.offload_ptrs, i32 0, i32 1
  store i64 %10, ptr %15, align 8
  %16 = getelementptr inbounds [5 x ptr], ptr %.offload_mappers, i64 0, i64 1
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds [5 x ptr], ptr %.offload_baseptrs, i32 0, i32 2
  store ptr %out, ptr %17, align 8
  %18 = getelementptr inbounds [5 x ptr], ptr %.offload_ptrs, i32 0, i32 2
  store ptr %out, ptr %18, align 8
  %19 = getelementptr inbounds [5 x ptr], ptr %.offload_mappers, i64 0, i64 2
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds [5 x ptr], ptr %.offload_baseptrs, i32 0, i32 3
  store ptr %a, ptr %20, align 8
  %21 = getelementptr inbounds [5 x ptr], ptr %.offload_ptrs, i32 0, i32 3
  store ptr %a, ptr %21, align 8
  %22 = getelementptr inbounds [5 x ptr], ptr %.offload_mappers, i64 0, i64 3
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds [5 x ptr], ptr %.offload_baseptrs, i32 0, i32 4
  store ptr %b, ptr %23, align 8
  %24 = getelementptr inbounds [5 x ptr], ptr %.offload_ptrs, i32 0, i32 4
  store ptr %b, ptr %24, align 8
  %25 = getelementptr inbounds [5 x ptr], ptr %.offload_mappers, i64 0, i64 4
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds [5 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  %27 = getelementptr inbounds [5 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  %28 = load i32, ptr %nteams, align 4
  %29 = insertvalue [3 x i32] zeroinitializer, i32 %28, 0
  %30 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 0
  store i32 3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 1
  store i32 5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 2
  store ptr %26, ptr %32, align 8
  %33 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 3
  store ptr %27, ptr %33, align 8
  %34 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 4
  store ptr @.offload_sizes, ptr %34, align 8
  %35 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 5
  store ptr @.offload_maptypes, ptr %35, align 8
  %36 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 6
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 7
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 8
  store i64 16000000, ptr %38, align 8
  %39 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 9
  store i64 0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 10
  store [3 x i32] %29, ptr %40, align 4
  %41 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 11
  store [3 x i32] zeroinitializer, ptr %41, align 4
  %42 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 12
  store i32 0, ptr %42, align 4
  %43 = call i32 @__tgt_target_kernel(ptr @1, i64 -1, i32 %28, i32 0, ptr @.__omp_offloading_46_5cc0a2d9_main_l29.region_id, ptr %kernel_args)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %omp_offload.failed, label %omp_offload.cont

omp_offload.failed:                               ; preds = %for.end
  unreachable

omp_offload.cont:                                 ; preds = %for.end
  %45 = load ptr, ptr %out, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %45, i64 37
  %46 = load float, ptr %arrayidx5, align 4
  %conv = fptosi float %46 to i32
  ret i32 %conv
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare i32 @__tgt_target_kernel(ptr, i64, i32, i32, ptr, ptr) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nounwind allocsize(0) }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 0, i32 70, i32 1556128473, !"main", i32 29, i32 0, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 19.0.0git (git@github.com:llvm/llvm-project.git fef144cebb378f550ef098d370316554d647f625)"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
