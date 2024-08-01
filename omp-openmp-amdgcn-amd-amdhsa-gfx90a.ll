; ModuleID = 'omp-openmp-amdgcn-amd-amdhsa-gfx90a.bc'
source_filename = "omp.c"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.DynamicEnvironmentTy = type { i16 }
%struct.KernelEnvironmentTy = type { %struct.ConfigurationEnvironmentTy, ptr, ptr }
%struct.ConfigurationEnvironmentTy = type { i8, i8, i8, i32, i32, i32, i32, i32, i32 }

@__omp_rtl_debug_kind = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_thread_state = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_nested_parallelism = weak_odr hidden addrspace(1) constant i32 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@__omp_offloading_46_5cc0a2d9_main_l29_dynamic_environment = weak_odr protected addrspace(1) global %struct.DynamicEnvironmentTy zeroinitializer
@__omp_offloading_46_5cc0a2d9_main_l29_kernel_environment = weak_odr protected addrspace(1) constant %struct.KernelEnvironmentTy { %struct.ConfigurationEnvironmentTy { i8 0, i8 1, i8 2, i32 1, i32 256, i32 1, i32 -1, i32 0, i32 0 }, ptr addrspacecast (ptr addrspace(1) @1 to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_46_5cc0a2d9_main_l29_dynamic_environment to ptr) }
@2 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, ptr @0 }, align 8
@3 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@__oclc_ABI_version = weak_odr hidden local_unnamed_addr addrspace(4) constant i32 500

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define weak_odr protected amdgpu_kernel void @__omp_offloading_46_5cc0a2d9_main_l29(ptr noalias noundef %dyn_ptr, i64 noundef %nteams, i64 noundef %block_threads, ptr noundef nonnull align 8 dereferenceable(8) %out, ptr noundef nonnull align 8 dereferenceable(8) %a, ptr noundef nonnull align 8 dereferenceable(8) %b) #0 {
entry:
  %dyn_ptr.addr = alloca ptr, align 8, addrspace(5)
  %nteams.addr = alloca i64, align 8, addrspace(5)
  %block_threads.addr = alloca i64, align 8, addrspace(5)
  %out.addr = alloca ptr, align 8, addrspace(5)
  %a.addr = alloca ptr, align 8, addrspace(5)
  %b.addr = alloca ptr, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %dyn_ptr.addr.ascast = addrspacecast ptr addrspace(5) %dyn_ptr.addr to ptr
  %nteams.addr.ascast = addrspacecast ptr addrspace(5) %nteams.addr to ptr
  %block_threads.addr.ascast = addrspacecast ptr addrspace(5) %block_threads.addr to ptr
  %out.addr.ascast = addrspacecast ptr addrspace(5) %out.addr to ptr
  %a.addr.ascast = addrspacecast ptr addrspace(5) %a.addr to ptr
  %b.addr.ascast = addrspacecast ptr addrspace(5) %b.addr to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store ptr %dyn_ptr, ptr %dyn_ptr.addr.ascast, align 8
  store i64 %nteams, ptr %nteams.addr.ascast, align 8
  store i64 %block_threads, ptr %block_threads.addr.ascast, align 8
  store ptr %out, ptr %out.addr.ascast, align 8
  store ptr %a, ptr %a.addr.ascast, align 8
  store ptr %b, ptr %b.addr.ascast, align 8
  %0 = load ptr, ptr %out.addr.ascast, align 8
  %1 = load ptr, ptr %a.addr.ascast, align 8
  %2 = load ptr, ptr %b.addr.ascast, align 8
  %3 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @__omp_offloading_46_5cc0a2d9_main_l29_kernel_environment to ptr), ptr %dyn_ptr)
  %exec_user_code = icmp eq i32 %3, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %4 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %4, ptr %.threadid_temp..ascast, align 4
  call void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, ptr %block_threads.addr.ascast, ptr %0, ptr %1, ptr %2) #2
  call void @__kmpc_target_deinit()
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

declare i32 @__kmpc_target_init(ptr, ptr)

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %block_threads, ptr noundef nonnull align 8 dereferenceable(8) %out, ptr noundef nonnull align 8 dereferenceable(8) %a, ptr noundef nonnull align 8 dereferenceable(8) %b) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %block_threads.addr = alloca ptr, align 8, addrspace(5)
  %out.addr = alloca ptr, align 8, addrspace(5)
  %a.addr = alloca ptr, align 8, addrspace(5)
  %b.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %captured_vars_addrs = alloca [5 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %block_threads.addr.ascast = addrspacecast ptr addrspace(5) %block_threads.addr to ptr
  %out.addr.ascast = addrspacecast ptr addrspace(5) %out.addr to ptr
  %a.addr.ascast = addrspacecast ptr addrspace(5) %a.addr to ptr
  %b.addr.ascast = addrspacecast ptr addrspace(5) %b.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8
  store ptr %block_threads, ptr %block_threads.addr.ascast, align 8
  store ptr %out, ptr %out.addr.ascast, align 8
  store ptr %a, ptr %a.addr.ascast, align 8
  store ptr %b, ptr %b.addr.ascast, align 8
  %0 = load ptr, ptr %block_threads.addr.ascast, align 8
  %1 = load ptr, ptr %out.addr.ascast, align 8
  %2 = load ptr, ptr %a.addr.ascast, align 8
  %3 = load ptr, ptr %b.addr.ascast, align 8
  store i32 0, ptr %.omp.comb.lb.ascast, align 4
  store i32 15999999, ptr %.omp.comb.ub.ascast, align 4
  store i32 1, ptr %.omp.stride.ascast, align 4
  store i32 0, ptr %.omp.is_last.ascast, align 4
  %4 = load i32, ptr %0, align 4
  %5 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %6 = load i32, ptr %5, align 4
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %6, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %4)
  %7 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %cmp = icmp sgt i32 %7, 15999999
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15999999, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4
  %9 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %9, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end7, %cond.end
  %10 = load i32, ptr %.omp.iv.ascast, align 4
  %cmp1 = icmp slt i32 %10, 16000000
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %16 = inttoptr i64 %12 to ptr
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %18 = inttoptr i64 %14 to ptr
  store ptr %18, ptr %17, align 8
  %19 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  store ptr %1, ptr %19, align 8
  %20 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %2, ptr %20, align 8
  %21 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %3, ptr %21, align 8
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %6, i32 1, i32 -1, i32 -1, ptr @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined_omp_outlined, ptr null, ptr %captured_vars_addrs.ascast, i64 5)
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, ptr %.omp.iv.ascast, align 4
  %23 = load i32, ptr %.omp.stride.ascast, align 4
  %add = add nsw i32 %22, %23
  store i32 %add, ptr %.omp.iv.ascast, align 4
  %24 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %25 = load i32, ptr %.omp.stride.ascast, align 4
  %add2 = add nsw i32 %24, %25
  store i32 %add2, ptr %.omp.comb.lb.ascast, align 4
  %26 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %27 = load i32, ptr %.omp.stride.ascast, align 4
  %add3 = add nsw i32 %26, %27
  store i32 %add3, ptr %.omp.comb.ub.ascast, align 4
  %28 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %cmp4 = icmp sgt i32 %28, 15999999
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %omp.inner.for.inc
  br label %cond.end7

cond.false6:                                      ; preds = %omp.inner.for.inc
  %29 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i32 [ 15999999, %cond.true5 ], [ %29, %cond.false6 ]
  store i32 %cond8, ptr %.omp.comb.ub.ascast, align 4
  %30 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %30, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %6)
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_distribute_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #2

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., ptr noundef nonnull align 8 dereferenceable(8) %out, ptr noundef nonnull align 8 dereferenceable(8) %a, ptr noundef nonnull align 8 dereferenceable(8) %b) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %out.addr = alloca ptr, align 8, addrspace(5)
  %a.addr = alloca ptr, align 8, addrspace(5)
  %b.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %out.addr.ascast = addrspacecast ptr addrspace(5) %out.addr to ptr
  %a.addr.ascast = addrspacecast ptr addrspace(5) %a.addr to ptr
  %b.addr.ascast = addrspacecast ptr addrspace(5) %b.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8
  store ptr %out, ptr %out.addr.ascast, align 8
  store ptr %a, ptr %a.addr.ascast, align 8
  store ptr %b, ptr %b.addr.ascast, align 8
  %0 = load ptr, ptr %out.addr.ascast, align 8
  %1 = load ptr, ptr %a.addr.ascast, align 8
  %2 = load ptr, ptr %b.addr.ascast, align 8
  store i32 0, ptr %.omp.lb.ascast, align 4
  store i32 15999999, ptr %.omp.ub.ascast, align 4
  %3 = load i64, ptr %.previous.lb..addr.ascast, align 8
  %conv = trunc i64 %3 to i32
  %4 = load i64, ptr %.previous.ub..addr.ascast, align 8
  %conv1 = trunc i64 %4 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4
  store i32 %conv1, ptr %.omp.ub.ascast, align 4
  store i32 1, ptr %.omp.stride.ascast, align 4
  store i32 0, ptr %.omp.is_last.ascast, align 4
  %5 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %6 = load i32, ptr %5, align 4
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %6, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %7 = load i32, ptr %.omp.lb.ascast, align 4
  store i32 %7, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i32, ptr %.omp.iv.ascast, align 4
  %conv2 = sext i32 %8 to i64
  %9 = load i64, ptr %.previous.ub..addr.ascast, align 8
  %cmp = icmp ule i64 %conv2, %9
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, ptr %.omp.iv.ascast, align 4
  %mul = mul nsw i32 %10, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i.ascast, align 4
  %11 = load ptr, ptr %1, align 8
  %12 = load i32, ptr %i.ascast, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds float, ptr %11, i64 %idxprom
  %13 = load float, ptr %arrayidx, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %i.ascast, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds float, ptr %14, i64 %idxprom4
  %16 = load float, ptr %arrayidx5, align 4
  %add6 = fadd float %13, %16
  %17 = load ptr, ptr %0, align 8
  %18 = load i32, ptr %i.ascast, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %17, i64 %idxprom7
  store float %add6, ptr %arrayidx8, align 4
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, ptr %.omp.iv.ascast, align 4
  %20 = load i32, ptr %.omp.stride.ascast, align 4
  %add9 = add nsw i32 %19, %20
  store i32 %add9, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %6)
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #2

; Function Attrs: alwaysinline
declare void @__kmpc_parallel_51(ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64) #3

; Function Attrs: nounwind
declare void @__kmpc_distribute_static_fini(ptr, i32) #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #2

declare void @__kmpc_target_deinit()

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="all" "kernel" "no-trapping-math"="true" "omp_target_thread_limit"="256" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #2 = { nounwind }
attributes #3 = { alwaysinline }

!omp_offload.info = !{!0}
!nvvm.annotations = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}
!opencl.ocl.version = !{!11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11}

!0 = !{i32 0, i32 70, i32 1556128473, !"main", i32 29, i32 0, i32 0}
!1 = !{ptr @__omp_offloading_46_5cc0a2d9_main_l29, !"kernel", i32 1}
!2 = !{i32 1, !"amdhsa_code_object_version", i32 500}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 7, !"openmp-device", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 4, !"amdgpu_hostcall", i32 1}
!9 = !{!"clang version 19.0.0git (git@github.com:llvm/llvm-project.git fef144cebb378f550ef098d370316554d647f625)"}
!10 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-6.0.3 24012 af27734ed982b52a9f1be0f035ac91726fc697e4)"}
!11 = !{i32 2, i32 0}
