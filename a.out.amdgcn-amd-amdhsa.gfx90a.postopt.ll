; ModuleID = 'a.out.amdgcn-amd-amdhsa.gfx90a.postopt.bc'
source_filename = "ld-temp.o"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.DynamicEnvironmentTy = type { i16 }
%struct.KernelEnvironmentTy = type { %struct.ConfigurationEnvironmentTy, ptr, ptr }
%struct.ConfigurationEnvironmentTy = type { i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.DeviceMemoryPoolTy = type { ptr, i64 }
%struct.DeviceMemoryPoolTrackingTy = type { i64, i64, i64, i64 }
%struct.DeviceEnvironmentTy = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t = type { %"struct.ompx::state::TeamStateTy", ptr }
%"struct.ompx::state::TeamStateTy" = type { %"struct.ompx::state::ICVStateTy", i32, i32, ptr }
%"struct.ompx::state::ICVStateTy" = type { i32, i32, i32, i32, i32, i32, i32 }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@__omp_offloading_46_5cc0a2d9_main_l29_dynamic_environment = weak_odr protected addrspace(1) global %struct.DynamicEnvironmentTy zeroinitializer
@__omp_offloading_46_5cc0a2d9_main_l29_kernel_environment = weak_odr protected local_unnamed_addr addrspace(1) constant %struct.KernelEnvironmentTy { %struct.ConfigurationEnvironmentTy { i8 0, i8 1, i8 2, i32 1, i32 256, i32 1, i32 -1, i32 0, i32 0 }, ptr addrspacecast (ptr addrspace(1) @1 to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_46_5cc0a2d9_main_l29_dynamic_environment to ptr) }
@__omp_rtl_device_memory_pool = weak protected addrspace(1) global %struct.DeviceMemoryPoolTy zeroinitializer, align 8
@__omp_rtl_device_memory_pool_tracker = weak protected addrspace(1) global %struct.DeviceMemoryPoolTrackingTy zeroinitializer, align 8
@__omp_rtl_device_environment = weak protected addrspace(4) global %struct.DeviceEnvironmentTy undef, align 8
@llvm.used = appending addrspace(1) global [3 x ptr] [ptr addrspacecast (ptr addrspace(4) @__omp_rtl_device_environment to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool_tracker to ptr)], section "llvm.metadata"
@llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds = internal addrspace(3) global %llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t poison, align 16, !absolute_symbol !0

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define weak_odr protected amdgpu_kernel void @__omp_offloading_46_5cc0a2d9_main_l29(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 {
  call void @llvm.donothing() [ "ExplicitUse"(ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds) ], !alias.scope !15, !noalias !18
  %7 = alloca ptr, align 8, addrspace(5)
  %8 = alloca i64, align 8, addrspace(5)
  %9 = alloca i64, align 8, addrspace(5)
  %10 = alloca ptr, align 8, addrspace(5)
  %11 = alloca ptr, align 8, addrspace(5)
  %12 = alloca ptr, align 8, addrspace(5)
  %13 = alloca i32, align 4, addrspace(5)
  %14 = alloca i32, align 4, addrspace(5)
  %15 = addrspacecast ptr addrspace(5) %7 to ptr
  %16 = addrspacecast ptr addrspace(5) %8 to ptr
  %17 = addrspacecast ptr addrspace(5) %9 to ptr
  %18 = addrspacecast ptr addrspace(5) %10 to ptr
  %19 = addrspacecast ptr addrspace(5) %11 to ptr
  %20 = addrspacecast ptr addrspace(5) %12 to ptr
  %21 = addrspacecast ptr addrspace(5) %13 to ptr
  %22 = addrspacecast ptr addrspace(5) %14 to ptr
  store ptr %0, ptr %15, align 8
  store i64 %1, ptr %16, align 8
  store i64 %2, ptr %17, align 8
  store ptr %3, ptr %18, align 8
  store ptr %4, ptr %19, align 8
  store ptr %5, ptr %20, align 8
  %23 = load ptr, ptr %18, align 8
  %24 = load ptr, ptr %19, align 8
  %25 = load ptr, ptr %20, align 8
  call fastcc void @__kmpc_target_init(ptr %0)
  br label %26

26:                                               ; preds = %6
  %27 = call fastcc i32 @__kmpc_global_thread_num()
  store i32 0, ptr %21, align 4
  store i32 %27, ptr %22, align 4
  call fastcc void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined(ptr %22, ptr %21, ptr %17, ptr %23, ptr %24, ptr %25) #13
  call fastcc void @__kmpc_target_deinit()
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 {
  %7 = alloca i32, align 4, addrspace(5)
  %8 = alloca i32, align 4, addrspace(5)
  %9 = alloca i32, align 4, addrspace(5)
  %10 = alloca i32, align 4, addrspace(5)
  %11 = alloca ptr, align 8, addrspace(5)
  %12 = alloca ptr, align 8, addrspace(5)
  %13 = alloca ptr, align 8, addrspace(5)
  %14 = alloca ptr, align 8, addrspace(5)
  %15 = alloca ptr, align 8, addrspace(5)
  %16 = alloca ptr, align 8, addrspace(5)
  %17 = alloca i32, align 4, addrspace(5)
  %18 = alloca i32, align 4, addrspace(5)
  %19 = alloca i32, align 4, addrspace(5)
  %20 = alloca i32, align 4, addrspace(5)
  %21 = alloca i32, align 4, addrspace(5)
  %22 = alloca i32, align 4, addrspace(5)
  %23 = alloca i32, align 4, addrspace(5)
  %24 = alloca [5 x ptr], align 8, addrspace(5)
  %25 = addrspacecast ptr addrspace(5) %11 to ptr
  %26 = addrspacecast ptr addrspace(5) %12 to ptr
  %27 = addrspacecast ptr addrspace(5) %13 to ptr
  %28 = addrspacecast ptr addrspace(5) %14 to ptr
  %29 = addrspacecast ptr addrspace(5) %15 to ptr
  %30 = addrspacecast ptr addrspace(5) %16 to ptr
  %31 = addrspacecast ptr addrspace(5) %17 to ptr
  %32 = addrspacecast ptr addrspace(5) %18 to ptr
  %33 = addrspacecast ptr addrspace(5) %19 to ptr
  %34 = addrspacecast ptr addrspace(5) %20 to ptr
  %35 = addrspacecast ptr addrspace(5) %21 to ptr
  %36 = addrspacecast ptr addrspace(5) %22 to ptr
  %37 = addrspacecast ptr addrspace(5) %23 to ptr
  %38 = addrspacecast ptr addrspace(5) %24 to ptr
  store ptr %0, ptr %25, align 8
  store ptr %1, ptr %26, align 8
  store ptr %2, ptr %27, align 8
  store ptr %3, ptr %28, align 8
  store ptr %4, ptr %29, align 8
  store ptr %5, ptr %30, align 8
  %39 = load ptr, ptr %27, align 8
  %40 = load ptr, ptr %28, align 8
  %41 = load ptr, ptr %29, align 8
  %42 = load ptr, ptr %30, align 8
  store i32 0, ptr %33, align 4
  store i32 15999999, ptr %34, align 4
  store i32 1, ptr %35, align 4
  store i32 0, ptr %36, align 4
  %43 = load i32, ptr %39, align 4
  %44 = load ptr, ptr %25, align 8
  %45 = load i32, ptr %44, align 4
  call fastcc void @__kmpc_distribute_static_init_4(ptr %36, ptr %33, ptr %34, ptr %35, i32 %43)
  %46 = load i32, ptr %34, align 4
  %47 = icmp sgt i32 %46, 15999999
  br i1 %47, label %48, label %49

48:                                               ; preds = %6
  br label %51

49:                                               ; preds = %6
  %50 = load i32, ptr %34, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 15999999, %48 ], [ %50, %49 ]
  store i32 %52, ptr %34, align 4
  %53 = load i32, ptr %33, align 4
  store i32 %53, ptr %31, align 4
  br label %54

54:                                               ; preds = %267, %51
  %55 = load i32, ptr %31, align 4
  %56 = icmp slt i32 %55, 16000000
  br i1 %56, label %57, label %270

57:                                               ; preds = %54
  %58 = load i32, ptr %33, align 4
  %59 = zext i32 %58 to i64
  %60 = load i32, ptr %34, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [5 x ptr], ptr %38, i64 0, i64 0
  %63 = inttoptr i64 %59 to ptr
  store ptr %63, ptr %62, align 8
  %64 = getelementptr inbounds [5 x ptr], ptr %38, i64 0, i64 1
  %65 = inttoptr i64 %61 to ptr
  store ptr %65, ptr %64, align 8
  %66 = getelementptr inbounds [5 x ptr], ptr %38, i64 0, i64 2
  store ptr %40, ptr %66, align 8
  %67 = getelementptr inbounds [5 x ptr], ptr %38, i64 0, i64 3
  store ptr %41, ptr %67, align 8
  %68 = getelementptr inbounds [5 x ptr], ptr %38, i64 0, i64 4
  store ptr %42, ptr %68, align 8
  %69 = call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #14, !range !20
  %70 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  %71 = load i32, ptr addrspace(3) %70, align 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78, !prof !21

73:                                               ; preds = %57
  %74 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %75 = getelementptr inbounds i8, ptr %74, i64 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %185, label %78, !prof !22

78:                                               ; preds = %73, %57
  %79 = load i64, ptr addrspace(1) getelementptr inbounds (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !23
  %80 = add i64 %79, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %81 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 48 syncscope("agent") seq_cst, align 8
  %82 = add i64 %81, 48
  %83 = icmp ugt i64 %82, %80
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  call void @llvm.trap() #15
  unreachable

85:                                               ; preds = %78
  %86 = inttoptr i64 %81 to ptr
  %87 = atomicrmw or ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), i64 0 syncscope("agent") seq_cst, align 16
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #16
  %91 = getelementptr inbounds i8, ptr addrspace(4) %90, i64 12
  %92 = load i16, ptr addrspace(4) %91, align 4
  %93 = zext i16 %92 to i64
  %94 = shl nuw nsw i64 %93, 3
  %95 = add nuw nsw i64 %94, 15
  %96 = and i64 %95, -16
  %97 = load i64, ptr addrspace(1) getelementptr inbounds (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !23
  %98 = add i64 %97, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %99 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 %96 syncscope("agent") seq_cst, align 8
  %100 = add i64 %99, %96
  %101 = icmp ugt i64 %100, %98
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  call void @llvm.trap() #15
  unreachable

103:                                              ; preds = %89
  %104 = inttoptr i64 %99 to ptr
  %105 = icmp eq i16 %92, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %106, %103
  %107 = phi i64 [ %109, %106 ], [ 0, %103 ]
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  store i8 0, ptr %108, align 1, !tbaa !29
  %109 = add nuw nsw i64 %107, 1
  %110 = icmp eq i64 %109, %94
  br i1 %110, label %111, label %106, !llvm.loop !30

111:                                              ; preds = %106, %103
  %112 = cmpxchg ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), i64 0, i64 %99 syncscope("agent") seq_cst seq_cst, align 16
  %113 = extractvalue { i64, i1 } %112, 1
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %111
  %116 = atomicrmw or ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), i64 0 syncscope("agent") seq_cst, align 16
  %117 = icmp ne i64 %116, 0
  call void @llvm.assume(i1 noundef %117) #17
  br label %118

118:                                              ; preds = %115, %85
  %119 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %120 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %121 = zext nneg i32 %69 to i64
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !32
  %124 = icmp eq ptr %123, null
  %125 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %126 = select i1 %124, ptr %125, ptr %123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %86, ptr noundef nonnull align 8 dereferenceable(28) %126, i64 noundef 28, i1 noundef false) #16, !tbaa.struct !33
  %127 = getelementptr inbounds i8, ptr %86, i64 32
  store ptr %123, ptr %127, align 8, !tbaa !36
  %128 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  store i32 1, ptr addrspace(3) %128, align 16, !tbaa !39
  store ptr %86, ptr %122, align 8, !tbaa !32
  %129 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  %130 = load i32, ptr addrspace(3) %129, align 16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %154, label %132, !prof !22

132:                                              ; preds = %118
  %133 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %134 = getelementptr inbounds ptr, ptr %133, i64 %121
  %135 = load ptr, ptr %134, align 8, !tbaa !32
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %154, !prof !41

137:                                              ; preds = %132
  %138 = load i64, ptr addrspace(1) getelementptr inbounds (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !23
  %139 = add i64 %138, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %140 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 48 syncscope("agent") seq_cst, align 8
  %141 = add i64 %140, 48
  %142 = icmp ugt i64 %141, %139
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  call void @llvm.trap() #15
  unreachable

144:                                              ; preds = %137
  %145 = inttoptr i64 %140 to ptr
  %146 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %147 = getelementptr inbounds ptr, ptr %146, i64 %121
  store ptr %145, ptr %147, align 8, !tbaa !32
  %148 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %149 = getelementptr inbounds ptr, ptr %148, i64 %121
  %150 = load ptr, ptr %149, align 8, !tbaa !32, !nonnull !42, !noundef !42
  %151 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  store i32 1, ptr addrspace(3) %151, align 16, !tbaa !39
  call void @llvm.memcpy.p0.p3.i64(ptr noundef nonnull align 8 dereferenceable(28) %150, ptr addrspace(3) noundef align 8 dereferenceable(28) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i64 noundef 28, i1 noundef false) #16, !tbaa.struct !33
  %152 = getelementptr inbounds i8, ptr %150, i64 32
  store ptr null, ptr %152, align 8, !tbaa !36
  %153 = load ptr, ptr %149, align 8, !tbaa !32
  br label %154

154:                                              ; preds = %144, %132, %118
  %155 = phi ptr [ %119, %118 ], [ %153, %144 ], [ %135, %132 ]
  %156 = getelementptr inbounds i8, ptr %155, i64 4
  %157 = load i32, ptr %156, align 4, !tbaa !34
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 noundef 4, ptr addrspace(5) noundef %7) #16
  call void @llvm.lifetime.start.p5(i64 noundef 4, ptr addrspace(5) noundef %8) #16
  store i32 %69, ptr addrspace(5) %7, align 4, !tbaa !34
  store i32 0, ptr addrspace(5) %8, align 4, !tbaa !34
  %159 = addrspacecast ptr addrspace(5) %8 to ptr
  %160 = addrspacecast ptr addrspace(5) %7 to ptr
  %161 = load ptr, ptr %38, align 8, !tbaa !32
  %162 = getelementptr inbounds i8, ptr %38, i64 8
  %163 = load ptr, ptr %162, align 8, !tbaa !32
  %164 = getelementptr inbounds i8, ptr %38, i64 16
  %165 = load ptr, ptr %164, align 8, !tbaa !32
  %166 = getelementptr inbounds i8, ptr %38, i64 24
  %167 = load ptr, ptr %166, align 8, !tbaa !32
  %168 = getelementptr inbounds i8, ptr %38, i64 32
  %169 = load ptr, ptr %168, align 8, !tbaa !32
  %170 = ptrtoint ptr %161 to i64
  %171 = ptrtoint ptr %163 to i64
  call fastcc void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined_omp_outlined(ptr noundef %160, ptr noundef %159, i64 noundef %170, i64 noundef %171, ptr noundef %165, ptr noundef %167, ptr noundef %169) #18
  call void @llvm.lifetime.end.p5(i64 noundef 4, ptr addrspace(5) noundef %7) #16
  call void @llvm.lifetime.end.p5(i64 noundef 4, ptr addrspace(5) noundef %8) #16
  %172 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  %173 = load i32, ptr addrspace(3) %172, align 16
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %251, label %175

175:                                              ; preds = %154
  %176 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %177 = getelementptr inbounds ptr, ptr %176, i64 %121
  %178 = load ptr, ptr %177, align 8, !tbaa !32
  %179 = icmp eq ptr %178, null
  br i1 %179, label %251, label %180, !prof !43

180:                                              ; preds = %175
  %181 = getelementptr inbounds i8, ptr %178, i64 32
  %182 = load ptr, ptr %181, align 8, !tbaa !36
  %183 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %184 = getelementptr inbounds ptr, ptr %183, i64 %121
  store ptr %182, ptr %184, align 8, !tbaa !32
  br label %251

185:                                              ; preds = %73
  %186 = load i32, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, align 16
  %187 = icmp eq i32 %186, 0
  %188 = call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #16
  %189 = getelementptr inbounds i8, ptr addrspace(4) %188, i64 12
  %190 = load i16, ptr addrspace(4) %189, align 4
  %191 = zext i16 %190 to i32
  %192 = call i32 @llvm.umin.i32(i32 %186, i32 noundef %191) #16
  %193 = select i1 %187, i32 %191, i32 %192
  %194 = icmp eq i32 %193, %191
  %195 = select i1 %194, i32 0, i32 %193
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier() #19
  fence syncscope("workgroup") seq_cst
  %196 = icmp eq i32 %69, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %185
  %198 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 28
  %199 = load i32, ptr addrspace(3) %198, align 4, !tbaa !34
  %200 = icmp eq i32 %199, 1
  call void @llvm.assume(i1 noundef %200) #17
  %201 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 28
  store i32 %195, ptr addrspace(3) %201, align 4, !tbaa !34
  %202 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  %203 = load i32, ptr addrspace(3) %202, align 8, !tbaa !34
  %204 = icmp eq i32 %203, 0
  call void @llvm.assume(i1 noundef %204) #17
  %205 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  store i32 1, ptr addrspace(3) %205, align 8, !tbaa !34
  %206 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 4
  %207 = load i32, ptr addrspace(3) %206, align 4, !tbaa !34
  %208 = icmp eq i32 %207, 0
  call void @llvm.assume(i1 noundef %208) #17
  %209 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 4
  store i32 1, ptr addrspace(3) %209, align 4, !tbaa !34
  br label %210

210:                                              ; preds = %197, %185
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier() #19
  fence syncscope("workgroup") acquire
  %211 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 28
  %212 = load i32, ptr addrspace(3) %211, align 4
  %213 = icmp eq i32 %212, %195
  call void @llvm.assume(i1 noundef %213) #17
  %214 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  %215 = load i32, ptr addrspace(3) %214, align 8
  %216 = icmp eq i32 %215, 1
  call void @llvm.assume(i1 noundef %216) #17
  %217 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 4
  %218 = load i32, ptr addrspace(3) %217, align 4
  %219 = icmp eq i32 %218, 1
  call void @llvm.assume(i1 noundef %219) #17
  call void @llvm.amdgcn.s.barrier() #19
  %220 = add nsw i32 %195, -1
  %221 = icmp ult i32 %220, %69
  br i1 %221, label %236, label %222

222:                                              ; preds = %210
  call void @llvm.lifetime.start.p5(i64 noundef 4, ptr addrspace(5) noundef %9) #16
  call void @llvm.lifetime.start.p5(i64 noundef 4, ptr addrspace(5) noundef %10) #16
  store i32 %69, ptr addrspace(5) %9, align 4, !tbaa !34
  store i32 0, ptr addrspace(5) %10, align 4, !tbaa !34
  %223 = addrspacecast ptr addrspace(5) %10 to ptr
  %224 = addrspacecast ptr addrspace(5) %9 to ptr
  %225 = load ptr, ptr %38, align 8, !tbaa !32
  %226 = getelementptr inbounds i8, ptr %38, i64 8
  %227 = load ptr, ptr %226, align 8, !tbaa !32
  %228 = getelementptr inbounds i8, ptr %38, i64 16
  %229 = load ptr, ptr %228, align 8, !tbaa !32
  %230 = getelementptr inbounds i8, ptr %38, i64 24
  %231 = load ptr, ptr %230, align 8, !tbaa !32
  %232 = getelementptr inbounds i8, ptr %38, i64 32
  %233 = load ptr, ptr %232, align 8, !tbaa !32
  %234 = ptrtoint ptr %225 to i64
  %235 = ptrtoint ptr %227 to i64
  call fastcc void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined_omp_outlined(ptr noundef %224, ptr noundef %223, i64 noundef %234, i64 noundef %235, ptr noundef %229, ptr noundef %231, ptr noundef %233) #18
  call void @llvm.lifetime.end.p5(i64 noundef 4, ptr addrspace(5) noundef %9) #16
  call void @llvm.lifetime.end.p5(i64 noundef 4, ptr addrspace(5) noundef %10) #16
  br label %236

236:                                              ; preds = %222, %210
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier() #19
  fence syncscope("workgroup") seq_cst
  br i1 %196, label %237, label %241

237:                                              ; preds = %236
  %238 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 4
  store i32 0, ptr addrspace(3) %238, align 4, !tbaa !34
  %239 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  store i32 0, ptr addrspace(3) %239, align 8, !tbaa !34
  %240 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 28
  store i32 1, ptr addrspace(3) %240, align 4, !tbaa !34
  br label %241

241:                                              ; preds = %237, %236
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier() #19
  fence syncscope("workgroup") acquire
  %242 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 28
  %243 = load i32, ptr addrspace(3) %242, align 4
  %244 = icmp eq i32 %243, 1
  call void @llvm.assume(i1 noundef %244) #17
  %245 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  %246 = load i32, ptr addrspace(3) %245, align 8
  %247 = icmp eq i32 %246, 0
  call void @llvm.assume(i1 noundef %247) #17
  %248 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 4
  %249 = load i32, ptr addrspace(3) %248, align 4
  %250 = icmp eq i32 %249, 0
  call void @llvm.assume(i1 noundef %250) #17
  call void @llvm.amdgcn.s.barrier() #19
  br label %251

251:                                              ; preds = %241, %180, %175, %154
  br label %252

252:                                              ; preds = %251
  %253 = load i32, ptr %31, align 4
  %254 = load i32, ptr %35, align 4
  %255 = add nsw i32 %253, %254
  store i32 %255, ptr %31, align 4
  %256 = load i32, ptr %33, align 4
  %257 = load i32, ptr %35, align 4
  %258 = add nsw i32 %256, %257
  store i32 %258, ptr %33, align 4
  %259 = load i32, ptr %34, align 4
  %260 = load i32, ptr %35, align 4
  %261 = add nsw i32 %259, %260
  store i32 %261, ptr %34, align 4
  %262 = load i32, ptr %34, align 4
  %263 = icmp sgt i32 %262, 15999999
  br i1 %263, label %264, label %265

264:                                              ; preds = %252
  br label %267

265:                                              ; preds = %252
  %266 = load i32, ptr %34, align 4
  br label %267

267:                                              ; preds = %265, %264
  %268 = phi i32 [ 15999999, %264 ], [ %266, %265 ]
  store i32 %268, ptr %34, align 4
  %269 = load i32, ptr %33, align 4
  store i32 %269, ptr %31, align 4
  br label %54

270:                                              ; preds = %54
  br label %271

271:                                              ; preds = %270
  call fastcc void @__kmpc_distribute_static_fini()
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc void @__omp_offloading_46_5cc0a2d9_main_l29_omp_outlined_omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #1 {
  %8 = alloca ptr, align 8, addrspace(5)
  %9 = alloca ptr, align 8, addrspace(5)
  %10 = alloca i64, align 8, addrspace(5)
  %11 = alloca i64, align 8, addrspace(5)
  %12 = alloca ptr, align 8, addrspace(5)
  %13 = alloca ptr, align 8, addrspace(5)
  %14 = alloca ptr, align 8, addrspace(5)
  %15 = alloca i32, align 4, addrspace(5)
  %16 = alloca i32, align 4, addrspace(5)
  %17 = alloca i32, align 4, addrspace(5)
  %18 = alloca i32, align 4, addrspace(5)
  %19 = alloca i32, align 4, addrspace(5)
  %20 = alloca i32, align 4, addrspace(5)
  %21 = alloca i32, align 4, addrspace(5)
  %22 = addrspacecast ptr addrspace(5) %8 to ptr
  %23 = addrspacecast ptr addrspace(5) %9 to ptr
  %24 = addrspacecast ptr addrspace(5) %10 to ptr
  %25 = addrspacecast ptr addrspace(5) %11 to ptr
  %26 = addrspacecast ptr addrspace(5) %12 to ptr
  %27 = addrspacecast ptr addrspace(5) %13 to ptr
  %28 = addrspacecast ptr addrspace(5) %14 to ptr
  %29 = addrspacecast ptr addrspace(5) %15 to ptr
  %30 = addrspacecast ptr addrspace(5) %16 to ptr
  %31 = addrspacecast ptr addrspace(5) %17 to ptr
  %32 = addrspacecast ptr addrspace(5) %18 to ptr
  %33 = addrspacecast ptr addrspace(5) %19 to ptr
  %34 = addrspacecast ptr addrspace(5) %20 to ptr
  %35 = addrspacecast ptr addrspace(5) %21 to ptr
  store ptr %0, ptr %22, align 8
  store ptr %1, ptr %23, align 8
  store i64 %2, ptr %24, align 8
  store i64 %3, ptr %25, align 8
  store ptr %4, ptr %26, align 8
  store ptr %5, ptr %27, align 8
  store ptr %6, ptr %28, align 8
  %36 = load ptr, ptr %26, align 8
  %37 = load ptr, ptr %27, align 8
  %38 = load ptr, ptr %28, align 8
  store i32 0, ptr %31, align 4
  store i32 15999999, ptr %32, align 4
  %39 = load i64, ptr %24, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, ptr %25, align 8
  %42 = trunc i64 %41 to i32
  store i32 %40, ptr %31, align 4
  store i32 %42, ptr %32, align 4
  store i32 1, ptr %33, align 4
  store i32 0, ptr %34, align 4
  %43 = load ptr, ptr %22, align 8
  %44 = load i32, ptr %43, align 4
  call fastcc void @__kmpc_for_static_init_4(ptr %34, ptr %31, ptr %32, ptr %33)
  %45 = load i32, ptr %31, align 4
  store i32 %45, ptr %29, align 4
  br label %46

46:                                               ; preds = %71, %7
  %47 = load i32, ptr %29, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, ptr %25, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load i32, ptr %29, align 4
  %53 = mul nuw nsw i32 %52, 1
  %54 = add nuw nsw i32 0, %53
  store i32 %54, ptr %35, align 4
  %55 = load ptr, ptr %37, align 8
  %56 = load i32, ptr %35, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, ptr %55, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load ptr, ptr %38, align 8
  %61 = load i32, ptr %35, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %60, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = fadd float %59, %64
  %66 = load ptr, ptr %36, align 8
  %67 = load i32, ptr %35, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, ptr %66, i64 %68
  store float %65, ptr %69, align 4
  br label %70

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %29, align 4
  %73 = load i32, ptr %33, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, ptr %29, align 4
  br label %46

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75
  call fastcc void @__kmpc_for_static_fini()
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn
define internal fastcc void @__kmpc_target_init(ptr nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 {
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  store <2 x i32> zeroinitializer, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, align 16, !tbaa !34
  %5 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  store <2 x i32> zeroinitializer, ptr addrspace(3) %5, align 8, !tbaa !34
  %6 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 16
  store <2 x i32> <i32 1, i32 1>, ptr addrspace(3) %6, align 16, !tbaa !34
  %7 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 24
  store <2 x i32> <i32 1, i32 1>, ptr addrspace(3) %7, align 8, !tbaa !34
  %8 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  store i32 0, ptr addrspace(3) %8, align 16, !tbaa !39
  %9 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 40
  store ptr null, ptr addrspace(3) %9, align 8, !tbaa !44
  store ptr null, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  br label %10

10:                                               ; preds = %4, %1
  tail call void @llvm.amdgcn.s.barrier() #19
  %11 = load i32, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, align 16, !tbaa !45
  %12 = icmp eq i32 %11, 0
  tail call void @llvm.assume(i1 noundef %12) #17
  %13 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 4
  %14 = load i32, ptr addrspace(3) %13, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 0
  tail call void @llvm.assume(i1 noundef %15) #17
  %16 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 8
  %17 = load i32, ptr addrspace(3) %16, align 8, !tbaa !47
  %18 = icmp eq i32 %17, 0
  tail call void @llvm.assume(i1 noundef %18) #17
  %19 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 16
  %20 = load i32, ptr addrspace(3) %19, align 16, !tbaa !48
  %21 = icmp eq i32 %20, 1
  tail call void @llvm.assume(i1 noundef %21) #17
  %22 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 20
  %23 = load i32, ptr addrspace(3) %22, align 4, !tbaa !49
  %24 = icmp eq i32 %23, 1
  tail call void @llvm.assume(i1 noundef %24) #17
  tail call void @llvm.amdgcn.s.barrier() #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.amdgcn.workitem.id.x() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef align 4 ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull align 4 ptr addrspace(4) @llvm.amdgcn.dispatch.ptr() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) nocapture) #6

; Function Attrs: convergent nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) nocapture) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc void @__kmpc_target_deinit() unnamed_addr #8 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.amdgcn.workgroup.id.x() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p3.i64(ptr noalias nocapture writeonly, ptr addrspace(3) noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write)
define internal fastcc noundef range(i32 -1, 1024) i32 @__kmpc_global_thread_num() unnamed_addr #10 {
  %1 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #14, !range !20
  %3 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  %4 = load i32, ptr addrspace(3) %3, align 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %8 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !43

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %6, %0
  %15 = phi ptr [ %11, %13 ], [ %1, %0 ], [ %7, %6 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp sgt i32 %17, -1
  tail call void @llvm.assume(i1 noundef %18) #17
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %14
  %21 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %5, label %30, label %22

22:                                               ; preds = %20
  %23 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %24 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %25 = zext nneg i32 %2 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !43

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %22, %20
  %31 = phi ptr [ %27, %29 ], [ %21, %20 ], [ %23, %22 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = icmp sgt i32 %33, -1
  tail call void @llvm.assume(i1 noundef %34) #17
  %35 = icmp ult i32 %33, %17
  br i1 %35, label %52, label %36, !prof !41

36:                                               ; preds = %30
  %37 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %5, label %46, label %38

38:                                               ; preds = %36
  %39 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %40 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %41 = zext nneg i32 %2 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !43

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %38, %36
  %47 = phi ptr [ %43, %45 ], [ %37, %36 ], [ %39, %38 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = load i32, ptr %48, align 4, !tbaa !34
  %50 = icmp eq i32 %49, %17
  %51 = select i1 %50, i32 %2, i32 0, !prof !43
  br label %52

52:                                               ; preds = %46, %30, %14
  %53 = phi i32 [ 0, %14 ], [ %51, %46 ], [ -1, %30 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write)
define internal fastcc void @__kmpc_for_static_init_4(ptr nocapture nofree noundef writeonly %0, ptr nocapture nofree noundef %1, ptr nocapture nofree noundef %2, ptr nocapture nofree noundef writeonly %3) unnamed_addr #11 {
  %5 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %6 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #14, !range !20
  %7 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  %8 = load i32, ptr addrspace(3) %7, align 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %12 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %13 = zext nneg i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !43

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %10, %4
  %19 = phi ptr [ %15, %17 ], [ %5, %4 ], [ %11, %10 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = icmp sgt i32 %21, -1
  tail call void @llvm.assume(i1 noundef %22) #17
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %18
  %25 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %9, label %34, label %26

26:                                               ; preds = %24
  %27 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %28 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %29 = zext nneg i32 %6 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !43

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %26, %24
  %35 = phi ptr [ %31, %33 ], [ %25, %24 ], [ %27, %26 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !34
  %38 = icmp sgt i32 %37, -1
  tail call void @llvm.assume(i1 noundef %38) #17
  %39 = icmp ult i32 %37, %21
  br i1 %39, label %56, label %40, !prof !41

40:                                               ; preds = %34
  %41 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %9, label %50, label %42

42:                                               ; preds = %40
  %43 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %44 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %45 = zext nneg i32 %6 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !32
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !43

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %42, %40
  %51 = phi ptr [ %47, %49 ], [ %41, %40 ], [ %43, %42 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 8
  %53 = load i32, ptr %52, align 4, !tbaa !34
  %54 = icmp eq i32 %53, %21
  %55 = select i1 %54, i32 %6, i32 0, !prof !43
  br label %56

56:                                               ; preds = %50, %34, %18
  %57 = phi i32 [ 0, %18 ], [ %55, %50 ], [ -1, %34 ]
  %58 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %9, label %67, label %59

59:                                               ; preds = %56
  %60 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %61 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %62 = zext nneg i32 %6 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !32
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66, !prof !43

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %59, %56
  %68 = phi ptr [ %64, %66 ], [ %58, %56 ], [ %60, %59 ]
  %69 = getelementptr inbounds i8, ptr %68, i64 4
  %70 = load i32, ptr %69, align 4, !tbaa !34
  %71 = icmp sgt i32 %70, -1
  tail call void @llvm.assume(i1 noundef %71) #17
  %72 = icmp eq i32 %70, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 28
  %75 = load i32, ptr addrspace(3) %74, align 4, !tbaa !34
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #16
  %79 = getelementptr inbounds i8, ptr addrspace(4) %78, i64 12
  %80 = load i16, ptr addrspace(4) %79, align 4
  %81 = zext i16 %80 to i32
  br label %82

82:                                               ; preds = %77, %73, %67
  %83 = phi i32 [ 1, %67 ], [ %81, %77 ], [ %75, %73 ]
  %84 = load i32, ptr %1, align 4, !tbaa !34
  %85 = load i32, ptr %2, align 4, !tbaa !34
  %86 = add nsw i32 %84, %57
  %87 = sub i32 %85, %86
  %88 = srem i32 %87, %83
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, ptr %0, align 4, !tbaa !34
  store i32 %86, ptr %1, align 4, !tbaa !34
  store i32 %86, ptr %2, align 4, !tbaa !34
  store i32 %83, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write)
define internal fastcc void @__kmpc_distribute_static_init_4(ptr nocapture nofree noundef writeonly %0, ptr nocapture nofree noundef %1, ptr nocapture nofree noundef %2, ptr nocapture nofree noundef writeonly %3, i32 noundef %4) unnamed_addr #11 {
  %6 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %7 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #14, !range !20
  %8 = getelementptr inbounds i8, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 32
  %9 = load i32, ptr addrspace(3) %8, align 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %13 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %14 = zext nneg i32 %7 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !43

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %11, %5
  %20 = phi ptr [ %16, %18 ], [ %6, %5 ], [ %12, %11 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp sgt i32 %22, -1
  tail call void @llvm.assume(i1 noundef %23) #17
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %10, label %35, label %27

27:                                               ; preds = %25
  %28 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %29 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %30 = zext nneg i32 %7 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !32
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !43

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %27, %25
  %36 = phi ptr [ %32, %34 ], [ %26, %25 ], [ %28, %27 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !34
  %39 = icmp sgt i32 %38, -1
  tail call void @llvm.assume(i1 noundef %39) #17
  %40 = icmp ult i32 %38, %22
  br i1 %40, label %43, label %41, !prof !41

41:                                               ; preds = %35
  %42 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %10, label %53, label %45

43:                                               ; preds = %35, %19
  %44 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  br i1 %10, label %53, label %45

45:                                               ; preds = %43, %41
  %46 = addrspacecast ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds.t, ptr addrspace(3) @llvm.amdgcn.kernel.__omp_offloading_46_5cc0a2d9_main_l29.lds, i32 0, i32 1), align 16, !tbaa !32
  %48 = zext nneg i32 %7 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !43

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %45, %43, %41
  %54 = phi ptr [ %50, %52 ], [ %44, %43 ], [ %46, %45 ], [ %42, %41 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 4
  %56 = load i32, ptr %55, align 4, !tbaa !34
  %57 = icmp sgt i32 %56, -1
  tail call void @llvm.assume(i1 noundef %57) #17
  %58 = load i32, ptr %1, align 4, !tbaa !34
  %59 = load i32, ptr %2, align 4, !tbaa !34
  %60 = icmp sgt i32 %4, 0
  %61 = tail call i32 @llvm.amdgcn.workgroup.id.x() #14
  %62 = tail call align 4 dereferenceable(64) ptr addrspace(4) @llvm.amdgcn.dispatch.ptr() #16
  %63 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #16
  %64 = getelementptr inbounds i8, ptr addrspace(4) %63, i64 12
  %65 = load i16, ptr addrspace(4) %64, align 4
  %66 = getelementptr inbounds i8, ptr addrspace(4) %62, i64 12
  %67 = load i32, ptr addrspace(4) %66, align 4, !invariant.load !42
  %68 = zext nneg i16 %65 to i32
  %69 = udiv i32 %67, %68
  %70 = icmp ult i32 %61, %69
  tail call void @llvm.assume(i1 noundef %70) #17
  br i1 %60, label %71, label %82

71:                                               ; preds = %53
  %72 = mul nsw i32 %69, %4
  %73 = mul nsw i32 %61, %4
  %74 = add nsw i32 %58, %73
  %75 = add nsw i32 %4, -1
  %76 = add i32 %75, %74
  %77 = srem i32 %59, %4
  %78 = add i32 %74, %77
  %79 = sub i32 %59, %78
  %80 = srem i32 %79, %72
  %81 = icmp eq i32 %80, 0
  br label %105

82:                                               ; preds = %53
  %83 = sub nsw i32 %59, %58
  %84 = add nsw i32 %83, 1
  %85 = sdiv i32 %84, %69
  %86 = mul nsw i32 %85, %69
  %87 = sub nsw i32 %84, %86
  %88 = icmp sgt i32 %87, %61
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = add nsw i32 %85, 1
  %91 = mul nsw i32 %90, %61
  %92 = add nsw i32 %91, %58
  br label %97

93:                                               ; preds = %82
  %94 = mul nsw i32 %85, %61
  %95 = add i32 %94, %58
  %96 = add i32 %95, %87
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %90, %89 ], [ %85, %93 ]
  %99 = phi i32 [ %92, %89 ], [ %96, %93 ]
  %100 = add nsw i32 %99, %98
  %101 = add nsw i32 %100, -1
  %102 = icmp sle i32 %99, %59
  %103 = icmp slt i32 %59, %100
  %104 = select i1 %102, i1 %103, i1 false
  br label %105

105:                                              ; preds = %97, %71
  %106 = phi i1 [ %104, %97 ], [ %81, %71 ]
  %107 = phi i32 [ %99, %97 ], [ %74, %71 ]
  %108 = phi i32 [ %101, %97 ], [ %76, %71 ]
  %109 = phi i32 [ %84, %97 ], [ %72, %71 ]
  %110 = zext i1 %106 to i32
  store i32 %110, ptr %0, align 4, !tbaa !34
  store i32 %107, ptr %1, align 4, !tbaa !34
  store i32 %108, ptr %2, align 4, !tbaa !34
  store i32 %109, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc void @__kmpc_for_static_fini() unnamed_addr #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc void @__kmpc_distribute_static_fini() unnamed_addr #8 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare void @llvm.donothing() #12

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "amdgpu-flat-work-group-size"="1,256" "amdgpu-lds-size"="56" "frame-pointer"="all" "kernel" "no-trapping-math"="true" "omp_target_thread_limit"="256" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { convergent mustprogress nofree norecurse nounwind willreturn "llvm.assume"="ompx_no_call_asm" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { convergent nocallback nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "llvm.assume"="ompx_no_call_asm" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) "llvm.assume"="ompx_no_call_asm" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) "llvm.assume"="ompx_no_call_asm" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nofree willreturn "llvm.assume"="ompx_no_call_asm" }
attributes #15 = { noreturn "llvm.assume"="ompx_no_call_asm" }
attributes #16 = { "llvm.assume"="ompx_no_call_asm" }
attributes #17 = { memory(write) "llvm.assume"="ompx_no_call_asm" }
attributes #18 = { convergent nounwind }
attributes #19 = { "llvm.assume"="ompx_aligned_barrier,ompx_no_call_asm" }

!omp_offload.info = !{!1}
!nvvm.annotations = !{!2}
!llvm.ident = !{!3, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !3}
!opencl.ocl.version = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}

!0 = !{i32 0, i32 1}
!1 = !{i32 0, i32 70, i32 1556128473, !"main", i32 29, i32 0, i32 0}
!2 = !{ptr @__omp_offloading_46_5cc0a2d9_main_l29, !"kernel", i32 1}
!3 = !{!"clang version 19.0.0git (git@github.com:llvm/llvm-project.git fef144cebb378f550ef098d370316554d647f625)"}
!4 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-6.0.3 24012 af27734ed982b52a9f1be0f035ac91726fc697e4)"}
!5 = !{i32 2, i32 0}
!6 = !{i32 1, !"amdhsa_code_object_version", i32 500}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"openmp", i32 51}
!9 = !{i32 7, !"openmp-device", i32 51}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{i32 4, !"amdgpu_hostcall", i32 1}
!13 = !{i32 1, !"ThinLTO", i32 0}
!14 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{i32 0, i32 1024}
!21 = !{!"branch_weights", i32 4000000, i32 4001}
!22 = !{!"branch_weights", i32 4001, i32 1}
!23 = !{!24, !28, i64 8}
!24 = !{!"_ZTS18DeviceMemoryPoolTy", !25, i64 0, !28, i64 8}
!25 = !{!"any pointer", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!"long", !26, i64 0}
!29 = !{!26, !26, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!25, !25, i64 0}
!33 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !26, i64 0}
!36 = !{!37, !25, i64 32}
!37 = !{!"_ZTSN4ompx5state13ThreadStateTyE", !38, i64 0, !25, i64 32}
!38 = !{!"_ZTSN4ompx5state10ICVStateTyE", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24}
!39 = !{!40, !35, i64 32}
!40 = !{!"_ZTSN4ompx5state11TeamStateTyE", !38, i64 0, !35, i64 28, !35, i64 32, !25, i64 40}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!40, !25, i64 40}
!45 = !{!38, !35, i64 0}
!46 = !{!38, !35, i64 4}
!47 = !{!38, !35, i64 8}
!48 = !{!38, !35, i64 16}
!49 = !{!38, !35, i64 20}
