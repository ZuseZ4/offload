figure out differences between wrapper files.


;;;;;;;;;;;; every FOO.c file:
%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.__tgt_offload_entry = type { ptr, ptr, i64, i32, i32 }
%struct.__tgt_kernel_arguments = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, [3 x i32], [3 x i32], i32 }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

;;;;;;;;;;;;;; every FOO.c file, per kernel:
@.__omp_offloading_46_5cc0a2d9_main_l29.region_id = weak constant i8 0
@.offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5cc0a2d9_main_l29\00"
@.offloading.entry.__omp_offloading_46_5cc0a2d9_main_l29 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5cc0a2d9_main_l29.region_id, ptr @.offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1

;;;;;;;;;;; OMP.c

@.__omp_offloading_46_5cc0a2d9_main_l29.region_id = weak constant i8 0
@__omp_offloading_46_5cc0a2d9_main_l29 = internal constant i8 0
@.offload_sizes = private unnamed_addr constant [5 x i64] [i64 4, i64 4, i64 8, i64 8, i64 8]
@.offload_maptypes = private unnamed_addr constant [5 x i64] [i64 800, i64 800, i64 35, i64 33, i64 33]
@.offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5cc0a2d9_main_l29\00"
@.offloading.entry.__omp_offloading_46_5cc0a2d9_main_l29 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5cc0a2d9_main_l29.region_id, ptr @.offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1


; Code to be generated for the host

;;;;;;;; IBM.c
; Not sure if I need the following ones
@.offload_sizes.1 = private unnamed_addr constant [12 x i64] [i64 4, i64 4, i64 4, i64 8, i64 32000, i64 8, i64 32000, i64 8, i64 32000, i64 32000, i64 32000, i64 32000]
@.offload_sizes = private unnamed_addr constant [9 x i64] [i64 4, i64 4, i64 4, i64 8, i64 32000, i64 8, i64 32000, i64 8, i64 32000]
@.offload_maptypes = private unnamed_addr constant [9 x i64] [i64 800, i64 800, i64 800, i64 800, i64 33, i64 800, i64 33, i64 800, i64 35]
@.offload_maptypes.2 = private unnamed_addr constant [12 x i64] [i64 800, i64 800, i64 800, i64 800, i64 547, i64 800, i64 547, i64 800, i64 547, i64 3, i64 1, i64 1]
@__omp_offloading_46_5c306b0f_main_l21 = internal constant i8 0
@__omp_offloading_46_5c306b0f_main_l29 = internal constant i8 0
@.offloading.entry.__omp_offloading_46_5c306b0f_main_l21 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5c306b0f_main_l21.region_id, ptr @.offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1


; I do need the following ones likely?
source_filename = "ibm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


@.__omp_offloading_46_5c306b0f_main_l21.region_id = weak constant i8 0
@.__omp_offloading_46_5c306b0f_main_l29.region_id = weak constant i8 0
@.offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5c306b0f_main_l21\00"
@.offloading.entry_name.3 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_46_5c306b0f_main_l29\00"
@.offloading.entry.__omp_offloading_46_5c306b0f_main_l29 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_46_5c306b0f_main_l29.region_id, ptr @.offloading.entry_name.3, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1

; Function Attrs: nounwind
declare i32 @__tgt_target_kernel(ptr, i64, i32, i32, ptr, ptr) #2


main() {
;;;
   %64 = call i32 @__tgt_target_kernel(ptr @1, i64 -1, i32 %49,  i32 0, ptr @.__omp_offloading_46_5c306b0f_main_l21.region_id, ptr %kernel_args)
  %125 = call i32 @__tgt_target_kernel(ptr @1, i64 -1, i32 %110, i32 0, ptr @.__omp_offloading_46_5c306b0f_main_l29.region_id, ptr %kernel_args33)
;;;
}
