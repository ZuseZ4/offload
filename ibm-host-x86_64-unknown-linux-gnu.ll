; ModuleID = 'ibm-host-x86_64-unknown-linux-gnu.bc'
source_filename = "ibm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.__tgt_offload_entry = type { ptr, ptr, i64, i32, i32 }
%struct.__tgt_kernel_arguments = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, [3 x i32], [3 x i32], i32 }

@.__omp_offloading_46_5c306b0f_main_l21.region_id = weak constant i8 0
@__omp_offloading_46_5c306b0f_main_l21 = internal constant i8 0
@.offload_sizes = private unnamed_addr constant [9 x i64] [i64 4, i64 4, i64 4, i64 8, i64 32000, i64 8, i64 32000, i64 8, i64 32000]
@.offload_maptypes = private unnamed_addr constant [9 x i64] [i64 800, i64 800, i64 800, i64 800, i64 33, i64 800, i64 33, i64 800, i64 35]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.__omp_offloading_46_5c306b0f_main_l29.region_id = weak constant i8 0
@__omp_offloading_46_5c306b0f_main_l29 = internal constant i8 0
@.offload_sizes.1 = private unnamed_addr constant [12 x i64] [i64 4, i64 4, i64 4, i64 8, i64 32000, i64 8, i64 32000, i64 8, i64 32000, i64 32000, i64 32000, i64 32000]
@.offload_maptypes.2 = private unnamed_addr constant [12 x i64] [i64 800, i64 800, i64 800, i64 800, i64 547, i64 800, i64 547, i64 800, i64 547, i64 3, i64 1, i64 1]
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5c306b0f_main_l21\00"
@.offloading.entry.__omp_offloading_46_5c306b0f_main_l21 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5c306b0f_main_l21.region_id, ptr @.offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.offloading.entry_name.3 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5c306b0f_main_l29\00"
@.offloading.entry.__omp_offloading_46_5c306b0f_main_l29 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5c306b0f_main_l29.region_id, ptr @.offloading.entry_name.3, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %k = alloca float, align 4
  %nteams = alloca i32, align 4
  %block_threads = alloca i32, align 4
  %i = alloca i32, align 4
  %nteams.casted = alloca i64, align 8
  %block_threads.casted = alloca i64, align 8
  %N.casted = alloca i64, align 8
  %.offload_baseptrs = alloca [9 x ptr], align 8
  %.offload_ptrs = alloca [9 x ptr], align 8
  %.offload_mappers = alloca [9 x ptr], align 8
  %tmp = alloca i32, align 4
  %kernel_args = alloca %struct.__tgt_kernel_arguments, align 8
  %nteams.casted26 = alloca i64, align 8
  %block_threads.casted27 = alloca i64, align 8
  %N.casted28 = alloca i64, align 8
  %.offload_baseptrs29 = alloca [12 x ptr], align 8
  %.offload_ptrs30 = alloca [12 x ptr], align 8
  %.offload_mappers31 = alloca [12 x ptr], align 8
  %tmp32 = alloca i32, align 4
  %kernel_args33 = alloca %struct.__tgt_kernel_arguments, align 8
  store i32 0, ptr %retval, align 4
  store i32 8000, ptr %N, align 4
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca float, i64 8000, align 16
  %vla1 = alloca float, i64 8000, align 16
  %vla2 = alloca float, i64 8000, align 16
  %vla3 = alloca float, i64 8000, align 16
  %vla4 = alloca float, i64 8000, align 16
  %vla5 = alloca float, i64 8000, align 16
  store float 4.000000e+00, ptr %k, align 4
  store i32 16, ptr %nteams, align 4
  %1 = load i32, ptr %nteams, align 4
  %div = sdiv i32 8000, %1
  store i32 %div, ptr %block_threads, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 8000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, ptr %vla, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %4 = load i32, ptr %i, align 4
  %conv = sitofp i32 %4 to double
  %mul = fmul double 1.000000e+00, %conv
  %conv6 = fptrunc double %mul to float
  %5 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %vla1, i64 %idxprom7
  store float %conv6, ptr %arrayidx8, align 4
  %6 = load i32, ptr %i, align 4
  %conv9 = sitofp i32 %6 to double
  %mul10 = fmul double 3.000000e+00, %conv9
  %conv11 = fptrunc double %mul10 to float
  %7 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %vla2, i64 %idxprom12
  store float %conv11, ptr %arrayidx13, align 4
  %8 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %vla3, i64 %idxprom14
  store float 0.000000e+00, ptr %arrayidx15, align 4
  %9 = load i32, ptr %i, align 4
  %conv16 = sitofp i32 %9 to double
  %mul17 = fmul double 1.000000e+00, %conv16
  %conv18 = fptrunc double %mul17 to float
  %10 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %vla4, i64 %idxprom19
  store float %conv18, ptr %arrayidx20, align 4
  %11 = load i32, ptr %i, align 4
  %conv21 = sitofp i32 %11 to double
  %mul22 = fmul double 3.000000e+00, %conv21
  %conv23 = fptrunc double %mul22 to float
  %12 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %vla5, i64 %idxprom24
  store float %conv23, ptr %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %nteams, align 4
  store i32 %14, ptr %nteams.casted, align 4
  %15 = load i64, ptr %nteams.casted, align 8
  %16 = load i32, ptr %block_threads, align 4
  store i32 %16, ptr %block_threads.casted, align 4
  %17 = load i64, ptr %block_threads.casted, align 8
  %18 = load i32, ptr %N, align 4
  store i32 %18, ptr %N.casted, align 4
  %19 = load i64, ptr %N.casted, align 8
  %20 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  store i64 %15, ptr %20, align 8
  %21 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  store i64 %15, ptr %21, align 8
  %22 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 0
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 1
  store i64 %17, ptr %23, align 8
  %24 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 1
  store i64 %17, ptr %24, align 8
  %25 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 1
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 2
  store i64 %19, ptr %26, align 8
  %27 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 2
  store i64 %19, ptr %27, align 8
  %28 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 2
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 3
  store i64 8000, ptr %29, align 8
  %30 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 3
  store i64 8000, ptr %30, align 8
  %31 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 3
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 4
  store ptr %vla1, ptr %32, align 8
  %33 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 4
  store ptr %vla1, ptr %33, align 8
  %34 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 4
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 5
  store i64 8000, ptr %35, align 8
  %36 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 5
  store i64 8000, ptr %36, align 8
  %37 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 5
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 6
  store ptr %vla2, ptr %38, align 8
  %39 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 6
  store ptr %vla2, ptr %39, align 8
  %40 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 6
  store ptr null, ptr %40, align 8
  %41 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 7
  store i64 8000, ptr %41, align 8
  %42 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 7
  store i64 8000, ptr %42, align 8
  %43 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 7
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 8
  store ptr %vla, ptr %44, align 8
  %45 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 8
  store ptr %vla, ptr %45, align 8
  %46 = getelementptr inbounds [9 x ptr], ptr %.offload_mappers, i64 0, i64 8
  store ptr null, ptr %46, align 8
  %47 = getelementptr inbounds [9 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  %48 = getelementptr inbounds [9 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  %49 = load i32, ptr %nteams, align 4
  %50 = insertvalue [3 x i32] zeroinitializer, i32 %49, 0
  %51 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 0
  store i32 3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 1
  store i32 9, ptr %52, align 4
  %53 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 2
  store ptr %47, ptr %53, align 8
  %54 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 3
  store ptr %48, ptr %54, align 8
  %55 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 4
  store ptr @.offload_sizes, ptr %55, align 8
  %56 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 5
  store ptr @.offload_maptypes, ptr %56, align 8
  %57 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 6
  store ptr null, ptr %57, align 8
  %58 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 7
  store ptr null, ptr %58, align 8
  %59 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 8
  store i64 8000, ptr %59, align 8
  %60 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 9
  store i64 0, ptr %60, align 8
  %61 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 10
  store [3 x i32] %50, ptr %61, align 4
  %62 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 11
  store [3 x i32] zeroinitializer, ptr %62, align 4
  %63 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 12
  store i32 0, ptr %63, align 4
  %64 = call i32 @__tgt_target_kernel(ptr @1, i64 -1, i32 %49, i32 0, ptr @.__omp_offloading_46_5c306b0f_main_l21.region_id, ptr %kernel_args)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %omp_offload.failed, label %omp_offload.cont

omp_offload.failed:                               ; preds = %for.end
  unreachable

omp_offload.cont:                                 ; preds = %for.end
  %66 = load i32, ptr %nteams, align 4
  store i32 %66, ptr %nteams.casted26, align 4
  %67 = load i64, ptr %nteams.casted26, align 8
  %68 = load i32, ptr %block_threads, align 4
  store i32 %68, ptr %block_threads.casted27, align 4
  %69 = load i64, ptr %block_threads.casted27, align 8
  %70 = load i32, ptr %N, align 4
  store i32 %70, ptr %N.casted28, align 4
  %71 = load i64, ptr %N.casted28, align 8
  %72 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 0
  store i64 %67, ptr %72, align 8
  %73 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 0
  store i64 %67, ptr %73, align 8
  %74 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 0
  store ptr null, ptr %74, align 8
  %75 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 1
  store i64 %69, ptr %75, align 8
  %76 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 1
  store i64 %69, ptr %76, align 8
  %77 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 1
  store ptr null, ptr %77, align 8
  %78 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 2
  store i64 %71, ptr %78, align 8
  %79 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 2
  store i64 %71, ptr %79, align 8
  %80 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 2
  store ptr null, ptr %80, align 8
  %81 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 3
  store i64 8000, ptr %81, align 8
  %82 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 3
  store i64 8000, ptr %82, align 8
  %83 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 3
  store ptr null, ptr %83, align 8
  %84 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 4
  store ptr %vla3, ptr %84, align 8
  %85 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 4
  store ptr %vla3, ptr %85, align 8
  %86 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 4
  store ptr null, ptr %86, align 8
  %87 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 5
  store i64 8000, ptr %87, align 8
  %88 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 5
  store i64 8000, ptr %88, align 8
  %89 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 5
  store ptr null, ptr %89, align 8
  %90 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 6
  store ptr %vla4, ptr %90, align 8
  %91 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 6
  store ptr %vla4, ptr %91, align 8
  %92 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 6
  store ptr null, ptr %92, align 8
  %93 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 7
  store i64 8000, ptr %93, align 8
  %94 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 7
  store i64 8000, ptr %94, align 8
  %95 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 7
  store ptr null, ptr %95, align 8
  %96 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 8
  store ptr %vla5, ptr %96, align 8
  %97 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 8
  store ptr %vla5, ptr %97, align 8
  %98 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 8
  store ptr null, ptr %98, align 8
  %99 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 9
  store ptr %vla, ptr %99, align 8
  %100 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 9
  store ptr %vla, ptr %100, align 8
  %101 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 9
  store ptr null, ptr %101, align 8
  %102 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 10
  store ptr %vla1, ptr %102, align 8
  %103 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 10
  store ptr %vla1, ptr %103, align 8
  %104 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 10
  store ptr null, ptr %104, align 8
  %105 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 11
  store ptr %vla2, ptr %105, align 8
  %106 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 11
  store ptr %vla2, ptr %106, align 8
  %107 = getelementptr inbounds [12 x ptr], ptr %.offload_mappers31, i64 0, i64 11
  store ptr null, ptr %107, align 8
  %108 = getelementptr inbounds [12 x ptr], ptr %.offload_baseptrs29, i32 0, i32 0
  %109 = getelementptr inbounds [12 x ptr], ptr %.offload_ptrs30, i32 0, i32 0
  %110 = load i32, ptr %nteams, align 4
  %111 = insertvalue [3 x i32] zeroinitializer, i32 %110, 0
  %112 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 0
  store i32 3, ptr %112, align 4
  %113 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 1
  store i32 12, ptr %113, align 4
  %114 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 2
  store ptr %108, ptr %114, align 8
  %115 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 3
  store ptr %109, ptr %115, align 8
  %116 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 4
  store ptr @.offload_sizes.1, ptr %116, align 8
  %117 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 5
  store ptr @.offload_maptypes.2, ptr %117, align 8
  %118 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 6
  store ptr null, ptr %118, align 8
  %119 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 7
  store ptr null, ptr %119, align 8
  %120 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 8
  store i64 8000, ptr %120, align 8
  %121 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 9
  store i64 0, ptr %121, align 8
  %122 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 10
  store [3 x i32] %111, ptr %122, align 4
  %123 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 11
  store [3 x i32] zeroinitializer, ptr %123, align 4
  %124 = getelementptr inbounds %struct.__tgt_kernel_arguments, ptr %kernel_args33, i32 0, i32 12
  store i32 0, ptr %124, align 4
  %125 = call i32 @__tgt_target_kernel(ptr @1, i64 -1, i32 %110, i32 0, ptr @.__omp_offloading_46_5c306b0f_main_l29.region_id, ptr %kernel_args33)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %omp_offload.failed34, label %omp_offload.cont35

omp_offload.failed34:                             ; preds = %omp_offload.cont
  unreachable

omp_offload.cont35:                               ; preds = %omp_offload.cont
  %arrayidx36 = getelementptr inbounds float, ptr %vla, i64 7999
  %127 = load float, ptr %arrayidx36, align 4
  %conv37 = fpext float %127 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv37)
  %arrayidx38 = getelementptr inbounds float, ptr %vla3, i64 7999
  %128 = load float, ptr %arrayidx38, align 4
  %conv39 = fpext float %128 to double
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv39)
  store i32 1, ptr %retval, align 4
  %129 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %129)
  %130 = load i32, ptr %retval, align 4
  ret i32 %130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nounwind
declare i32 @__tgt_target_kernel(ptr, i64, i32, i32, ptr, ptr) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 0, i32 70, i32 1546677007, !"main", i32 21, i32 0, i32 0}
!1 = !{i32 0, i32 70, i32 1546677007, !"main", i32 29, i32 0, i32 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 19.0.0git (git@github.com:llvm/llvm-project.git fef144cebb378f550ef098d370316554d647f625)"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
