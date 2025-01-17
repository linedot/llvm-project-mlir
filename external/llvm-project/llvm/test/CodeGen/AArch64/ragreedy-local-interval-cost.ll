; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64-arm-none-eabi < %s | FileCheck %s

@A = external dso_local local_unnamed_addr global [8 x [8 x i64]], align 8
@B = external dso_local local_unnamed_addr global [8 x [8 x i64]], align 8
@C = external dso_local local_unnamed_addr global [8 x [8 x i64]], align 8

define dso_local void @run_test() local_unnamed_addr #0 {
; CHECK-LABEL: run_test:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    sub sp, sp, #96
; CHECK-NEXT:    .cfi_def_cfa_offset 96
; CHECK-NEXT:    stp d15, d14, [sp, #32] // 16-byte Folded Spill
; CHECK-NEXT:    stp d13, d12, [sp, #48] // 16-byte Folded Spill
; CHECK-NEXT:    stp d11, d10, [sp, #64] // 16-byte Folded Spill
; CHECK-NEXT:    stp d9, d8, [sp, #80] // 16-byte Folded Spill
; CHECK-NEXT:    .cfi_offset b8, -8
; CHECK-NEXT:    .cfi_offset b9, -16
; CHECK-NEXT:    .cfi_offset b10, -24
; CHECK-NEXT:    .cfi_offset b11, -32
; CHECK-NEXT:    .cfi_offset b12, -40
; CHECK-NEXT:    .cfi_offset b13, -48
; CHECK-NEXT:    .cfi_offset b14, -56
; CHECK-NEXT:    .cfi_offset b15, -64
; CHECK-NEXT:    movi v14.2d, #0000000000000000
; CHECK-NEXT:    mov x8, xzr
; CHECK-NEXT:    mov x9, xzr
; CHECK-NEXT:    adrp x10, B+48
; CHECK-NEXT:    add x10, x10, :lo12:B+48
; CHECK-NEXT:    adrp x11, A
; CHECK-NEXT:    add x11, x11, :lo12:A
; CHECK-NEXT:    // implicit-def: $q2
; CHECK-NEXT:    // implicit-def: $q3
; CHECK-NEXT:    // implicit-def: $q15
; CHECK-NEXT:    // implicit-def: $q4
; CHECK-NEXT:    // implicit-def: $q5
; CHECK-NEXT:    // implicit-def: $q6
; CHECK-NEXT:    // implicit-def: $q7
; CHECK-NEXT:    // implicit-def: $q16
; CHECK-NEXT:    // implicit-def: $q17
; CHECK-NEXT:    // implicit-def: $q18
; CHECK-NEXT:    // implicit-def: $q19
; CHECK-NEXT:    // implicit-def: $q20
; CHECK-NEXT:    // implicit-def: $q21
; CHECK-NEXT:    // implicit-def: $q22
; CHECK-NEXT:    // implicit-def: $q23
; CHECK-NEXT:    // implicit-def: $q24
; CHECK-NEXT:    // implicit-def: $q25
; CHECK-NEXT:    // implicit-def: $q26
; CHECK-NEXT:    // implicit-def: $q27
; CHECK-NEXT:    // implicit-def: $q28
; CHECK-NEXT:    // implicit-def: $q29
; CHECK-NEXT:    // implicit-def: $q30
; CHECK-NEXT:    // implicit-def: $q31
; CHECK-NEXT:    // implicit-def: $q8
; CHECK-NEXT:    // implicit-def: $q9
; CHECK-NEXT:    // implicit-def: $q10
; CHECK-NEXT:    // implicit-def: $q11
; CHECK-NEXT:    // implicit-def: $q12
; CHECK-NEXT:    // implicit-def: $q13
; CHECK-NEXT:  .LBB0_1: // %for.cond1.preheader
; CHECK-NEXT:    // =>This Inner Loop Header: Depth=1
; CHECK-NEXT:    mov x12, xzr
; CHECK-NEXT:    stp q15, q14, [sp] // 32-byte Folded Spill
; CHECK-NEXT:    ldr q14, [x8]
; CHECK-NEXT:    add x15, x11, x8
; CHECK-NEXT:    ldr q15, [x10], #64
; CHECK-NEXT:    ldr q0, [x12]
; CHECK-NEXT:    add x9, x9, #1
; CHECK-NEXT:    ldr x12, [x12]
; CHECK-NEXT:    fmov x13, d14
; CHECK-NEXT:    mov x14, v14.d[1]
; CHECK-NEXT:    fmov x0, d15
; CHECK-NEXT:    fmov x16, d0
; CHECK-NEXT:    ldr x15, [x15, #128]
; CHECK-NEXT:    mul x17, x13, x12
; CHECK-NEXT:    mov x18, v0.d[1]
; CHECK-NEXT:    mul x4, x0, x12
; CHECK-NEXT:    mul x1, x16, x12
; CHECK-NEXT:    mul x3, x14, x12
; CHECK-NEXT:    fmov d0, x17
; CHECK-NEXT:    mul x5, x13, x15
; CHECK-NEXT:    mov x17, v15.d[1]
; CHECK-NEXT:    fmov d15, x4
; CHECK-NEXT:    fmov d14, x1
; CHECK-NEXT:    mul x1, x18, x12
; CHECK-NEXT:    mov v0.d[1], x3
; CHECK-NEXT:    mul x3, x16, x15
; CHECK-NEXT:    ldr x2, [x8], #8
; CHECK-NEXT:    mul x12, x17, x12
; CHECK-NEXT:    fmov d1, x5
; CHECK-NEXT:    mov v14.d[1], x1
; CHECK-NEXT:    mul x1, x14, x15
; CHECK-NEXT:    add v12.2d, v12.2d, v0.2d
; CHECK-NEXT:    mul x13, x13, x2
; CHECK-NEXT:    fmov d0, x3
; CHECK-NEXT:    mul x3, x0, x15
; CHECK-NEXT:    mov v15.d[1], x12
; CHECK-NEXT:    mul x12, x18, x2
; CHECK-NEXT:    mov v1.d[1], x1
; CHECK-NEXT:    mul x18, x18, x15
; CHECK-NEXT:    mul x16, x16, x2
; CHECK-NEXT:    cmp x8, #64
; CHECK-NEXT:    mul x15, x17, x15
; CHECK-NEXT:    add v13.2d, v13.2d, v14.2d
; CHECK-NEXT:    mul x14, x14, x2
; CHECK-NEXT:    add v11.2d, v11.2d, v14.2d
; CHECK-NEXT:    fmov d14, x3
; CHECK-NEXT:    add v10.2d, v10.2d, v15.2d
; CHECK-NEXT:    fmov d15, x13
; CHECK-NEXT:    mov v0.d[1], x18
; CHECK-NEXT:    mul x13, x0, x2
; CHECK-NEXT:    add v29.2d, v29.2d, v1.2d
; CHECK-NEXT:    fmov d1, x16
; CHECK-NEXT:    mov v14.d[1], x15
; CHECK-NEXT:    mov v15.d[1], x14
; CHECK-NEXT:    mov v1.d[1], x12
; CHECK-NEXT:    mul x12, x17, x2
; CHECK-NEXT:    add v28.2d, v28.2d, v0.2d
; CHECK-NEXT:    fmov d0, x13
; CHECK-NEXT:    add v27.2d, v27.2d, v14.2d
; CHECK-NEXT:    ldr q14, [sp, #16] // 16-byte Folded Reload
; CHECK-NEXT:    add v8.2d, v8.2d, v15.2d
; CHECK-NEXT:    mov v0.d[1], x12
; CHECK-NEXT:    add v25.2d, v25.2d, v15.2d
; CHECK-NEXT:    add v22.2d, v22.2d, v15.2d
; CHECK-NEXT:    add v18.2d, v18.2d, v15.2d
; CHECK-NEXT:    add v6.2d, v6.2d, v15.2d
; CHECK-NEXT:    add v14.2d, v14.2d, v15.2d
; CHECK-NEXT:    ldr q15, [sp] // 16-byte Folded Reload
; CHECK-NEXT:    add v9.2d, v9.2d, v1.2d
; CHECK-NEXT:    add v31.2d, v31.2d, v1.2d
; CHECK-NEXT:    add v26.2d, v26.2d, v1.2d
; CHECK-NEXT:    add v23.2d, v23.2d, v1.2d
; CHECK-NEXT:    add v21.2d, v21.2d, v1.2d
; CHECK-NEXT:    add v19.2d, v19.2d, v1.2d
; CHECK-NEXT:    add v17.2d, v17.2d, v1.2d
; CHECK-NEXT:    add v7.2d, v7.2d, v1.2d
; CHECK-NEXT:    add v5.2d, v5.2d, v1.2d
; CHECK-NEXT:    add v15.2d, v15.2d, v1.2d
; CHECK-NEXT:    add v3.2d, v3.2d, v1.2d
; CHECK-NEXT:    add v30.2d, v30.2d, v0.2d
; CHECK-NEXT:    add v24.2d, v24.2d, v0.2d
; CHECK-NEXT:    add v20.2d, v20.2d, v0.2d
; CHECK-NEXT:    add v16.2d, v16.2d, v0.2d
; CHECK-NEXT:    add v4.2d, v4.2d, v0.2d
; CHECK-NEXT:    add v2.2d, v2.2d, v0.2d
; CHECK-NEXT:    b.ne .LBB0_1
; CHECK-NEXT:  // %bb.2: // %for.cond.cleanup
; CHECK-NEXT:    adrp x8, C
; CHECK-NEXT:    add x8, x8, :lo12:C
; CHECK-NEXT:    stp q13, q12, [x8]
; CHECK-NEXT:    stp q11, q10, [x8, #32]
; CHECK-NEXT:    stp q9, q8, [x8, #64]
; CHECK-NEXT:    stp q4, q15, [x8, #432]
; CHECK-NEXT:    stp q14, q3, [x8, #464]
; CHECK-NEXT:    ldp d9, d8, [sp, #80] // 16-byte Folded Reload
; CHECK-NEXT:    stp q31, q30, [x8, #96]
; CHECK-NEXT:    ldp d11, d10, [sp, #64] // 16-byte Folded Reload
; CHECK-NEXT:    stp q29, q28, [x8, #144]
; CHECK-NEXT:    ldp d13, d12, [sp, #48] // 16-byte Folded Reload
; CHECK-NEXT:    stp q27, q26, [x8, #176]
; CHECK-NEXT:    ldp d15, d14, [sp, #32] // 16-byte Folded Reload
; CHECK-NEXT:    str q25, [x8, #208]
; CHECK-NEXT:    stp q24, q23, [x8, #240]
; CHECK-NEXT:    stp q22, q21, [x8, #272]
; CHECK-NEXT:    stp q20, q19, [x8, #304]
; CHECK-NEXT:    stp q18, q17, [x8, #336]
; CHECK-NEXT:    stp q16, q7, [x8, #368]
; CHECK-NEXT:    stp q6, q5, [x8, #400]
; CHECK-NEXT:    str q2, [x8, #496]
; CHECK-NEXT:    add sp, sp, #96
; CHECK-NEXT:    ret
; CH`ECK-NEXT:    .cfi_offset b9, -16
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %0 = phi <2 x i64> [ undef, %entry ], [ %118, %for.cond1.preheader ]
  %1 = phi <2 x i64> [ undef, %entry ], [ %116, %for.cond1.preheader ]
  %2 = phi <2 x i64> [ zeroinitializer, %entry ], [ %114, %for.cond1.preheader ]
  %3 = phi <2 x i64> [ undef, %entry ], [ %112, %for.cond1.preheader ]
  %4 = phi <2 x i64> [ undef, %entry ], [ %107, %for.cond1.preheader ]
  %5 = phi <2 x i64> [ undef, %entry ], [ %105, %for.cond1.preheader ]
  %6 = phi <2 x i64> [ undef, %entry ], [ %103, %for.cond1.preheader ]
  %7 = phi <2 x i64> [ undef, %entry ], [ %101, %for.cond1.preheader ]
  %8 = phi <2 x i64> [ undef, %entry ], [ %96, %for.cond1.preheader ]
  %9 = phi <2 x i64> [ undef, %entry ], [ %94, %for.cond1.preheader ]
  %10 = phi <2 x i64> [ undef, %entry ], [ %92, %for.cond1.preheader ]
  %11 = phi <2 x i64> [ undef, %entry ], [ %90, %for.cond1.preheader ]
  %12 = phi <2 x i64> [ undef, %entry ], [ %85, %for.cond1.preheader ]
  %13 = phi <2 x i64> [ undef, %entry ], [ %83, %for.cond1.preheader ]
  %14 = phi <2 x i64> [ undef, %entry ], [ %81, %for.cond1.preheader ]
  %15 = phi <2 x i64> [ undef, %entry ], [ %79, %for.cond1.preheader ]
  %16 = phi <2 x i64> [ undef, %entry ], [ %74, %for.cond1.preheader ]
  %17 = phi <2 x i64> [ undef, %entry ], [ %72, %for.cond1.preheader ]
  %18 = phi <2 x i64> [ undef, %entry ], [ %70, %for.cond1.preheader ]
  %19 = phi <2 x i64> [ undef, %entry ], [ %65, %for.cond1.preheader ]
  %20 = phi <2 x i64> [ undef, %entry ], [ %63, %for.cond1.preheader ]
  %21 = phi <2 x i64> [ undef, %entry ], [ %61, %for.cond1.preheader ]
  %22 = phi <2 x i64> [ undef, %entry ], [ %56, %for.cond1.preheader ]
  %23 = phi <2 x i64> [ undef, %entry ], [ %54, %for.cond1.preheader ]
  %24 = phi <2 x i64> [ undef, %entry ], [ %52, %for.cond1.preheader ]
  %25 = phi <2 x i64> [ undef, %entry ], [ %50, %for.cond1.preheader ]
  %26 = phi <2 x i64> [ undef, %entry ], [ %45, %for.cond1.preheader ]
  %27 = phi <2 x i64> [ undef, %entry ], [ %43, %for.cond1.preheader ]
  %28 = phi <2 x i64> [ undef, %entry ], [ %41, %for.cond1.preheader ]
  %29 = phi <2 x i64> [ undef, %entry ], [ %39, %for.cond1.preheader ]
  %indvars.iv40 = phi i64 [ 0, %entry ], [ %indvars.iv.next41, %for.cond1.preheader ]
  %30 = load <2 x i64>, <2 x i64>* null, align 8
  %31 = load <2 x i64>, <2 x i64>* undef, align 8
  %arrayidx14.4.phi.trans.insert = getelementptr inbounds [8 x [8 x i64]], [8 x [8 x i64]]* @B, i64 0, i64 %indvars.iv40, i64 4
  %32 = load <2 x i64>, <2 x i64>* null, align 8
  %arrayidx14.6.phi.trans.insert = getelementptr inbounds [8 x [8 x i64]], [8 x [8 x i64]]* @B, i64 0, i64 %indvars.iv40, i64 6
  %33 = bitcast i64* %arrayidx14.6.phi.trans.insert to <2 x i64>*
  %34 = load <2 x i64>, <2 x i64>* %33, align 8
  %35 = load i64, i64* null, align 8
  %36 = insertelement <2 x i64> undef, i64 %35, i32 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> undef, <2 x i32> zeroinitializer
  %38 = mul nsw <2 x i64> %30, %37
  %39 = add nsw <2 x i64> %29, %38
  %40 = mul nsw <2 x i64> %31, %37
  %41 = add nsw <2 x i64> %28, %40
  %42 = mul nsw <2 x i64> %32, %37
  %43 = add nsw <2 x i64> %27, %42
  %44 = mul nsw <2 x i64> %34, %37
  %45 = add nsw <2 x i64> %26, %44
  %46 = load i64, i64* undef, align 8
  %47 = insertelement <2 x i64> undef, i64 %46, i32 0
  %48 = shufflevector <2 x i64> %47, <2 x i64> undef, <2 x i32> zeroinitializer
  %49 = mul nsw <2 x i64> %30, %48
  %50 = add nsw <2 x i64> %25, %49
  %51 = mul nsw <2 x i64> %31, %48
  %52 = add nsw <2 x i64> %24, %51
  %53 = mul nsw <2 x i64> %32, %48
  %54 = add nsw <2 x i64> %23, %53
  %55 = mul nsw <2 x i64> %34, %48
  %56 = add nsw <2 x i64> %22, %55
  %arrayidx10.2 = getelementptr inbounds [8 x [8 x i64]], [8 x [8 x i64]]* @A, i64 0, i64 2, i64 %indvars.iv40
  %57 = load i64, i64* %arrayidx10.2, align 8
  %58 = insertelement <2 x i64> undef, i64 %57, i32 0
  %59 = shufflevector <2 x i64> %58, <2 x i64> undef, <2 x i32> zeroinitializer
  %60 = mul nsw <2 x i64> %31, %59
  %61 = add nsw <2 x i64> %21, %60
  %62 = mul nsw <2 x i64> %32, %59
  %63 = add nsw <2 x i64> %20, %62
  %64 = mul nsw <2 x i64> %34, %59
  %65 = add nsw <2 x i64> %19, %64
  %66 = load i64, i64* undef, align 8
  %67 = insertelement <2 x i64> undef, i64 %66, i32 0
  %68 = shufflevector <2 x i64> %67, <2 x i64> undef, <2 x i32> zeroinitializer
  %69 = mul nsw <2 x i64> %30, %68
  %70 = add nsw <2 x i64> %18, %69
  %71 = mul nsw <2 x i64> %31, %68
  %72 = add nsw <2 x i64> %17, %71
  %73 = mul nsw <2 x i64> %34, %68
  %74 = add nsw <2 x i64> %16, %73
  %75 = load i64, i64* undef, align 8
  %76 = insertelement <2 x i64> undef, i64 %75, i32 0
  %77 = shufflevector <2 x i64> %76, <2 x i64> undef, <2 x i32> zeroinitializer
  %78 = mul nsw <2 x i64> %30, %77
  %79 = add nsw <2 x i64> %15, %78
  %80 = mul nsw <2 x i64> %31, %77
  %81 = add nsw <2 x i64> %14, %80
  %82 = mul nsw <2 x i64> %32, %77
  %83 = add nsw <2 x i64> %13, %82
  %84 = mul nsw <2 x i64> %34, %77
  %85 = add nsw <2 x i64> %12, %84
  %86 = load i64, i64* undef, align 8
  %87 = insertelement <2 x i64> undef, i64 %86, i32 0
  %88 = shufflevector <2 x i64> %87, <2 x i64> undef, <2 x i32> zeroinitializer
  %89 = mul nsw <2 x i64> %30, %88
  %90 = add nsw <2 x i64> %11, %89
  %91 = mul nsw <2 x i64> %31, %88
  %92 = add nsw <2 x i64> %10, %91
  %93 = mul nsw <2 x i64> %32, %88
  %94 = add nsw <2 x i64> %9, %93
  %95 = mul nsw <2 x i64> %34, %88
  %96 = add nsw <2 x i64> %8, %95
  %97 = load i64, i64* undef, align 8
  %98 = insertelement <2 x i64> undef, i64 %97, i32 0
  %99 = shufflevector <2 x i64> %98, <2 x i64> undef, <2 x i32> zeroinitializer
  %100 = mul nsw <2 x i64> %30, %99
  %101 = add nsw <2 x i64> %7, %100
  %102 = mul nsw <2 x i64> %31, %99
  %103 = add nsw <2 x i64> %6, %102
  %104 = mul nsw <2 x i64> %32, %99
  %105 = add nsw <2 x i64> %5, %104
  %106 = mul nsw <2 x i64> %34, %99
  %107 = add nsw <2 x i64> %4, %106
  %108 = load i64, i64* undef, align 8
  %109 = insertelement <2 x i64> undef, i64 %108, i32 0
  %110 = shufflevector <2 x i64> %109, <2 x i64> undef, <2 x i32> zeroinitializer
  %111 = mul nsw <2 x i64> %30, %110
  %112 = add nsw <2 x i64> %3, %111
  %113 = mul nsw <2 x i64> %31, %110
  %114 = add nsw <2 x i64> %2, %113
  %115 = mul nsw <2 x i64> %32, %110
  %116 = add nsw <2 x i64> %1, %115
  %117 = mul nsw <2 x i64> %34, %110
  %118 = add nsw <2 x i64> %0, %117
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 8
  br i1 %exitcond42, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  store <2 x i64> %39, <2 x i64>* bitcast ([8 x [8 x i64]]* @C to <2 x i64>*), align 8
  store <2 x i64> %41, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 0, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %43, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 0, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %45, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 0, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %50, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 1, i64 0) to <2 x i64>*), align 8
  store <2 x i64> %52, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 1, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %54, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 1, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %56, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 1, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %61, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 2, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %63, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 2, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %65, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 2, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %70, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 3, i64 0) to <2 x i64>*), align 8
  store <2 x i64> %72, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 3, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %74, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 3, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %79, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 4, i64 0) to <2 x i64>*), align 8
  store <2 x i64> %81, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 4, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %83, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 4, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %85, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 4, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %90, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 5, i64 0) to <2 x i64>*), align 8
  store <2 x i64> %92, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 5, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %94, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 5, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %96, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 5, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %101, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 6, i64 0) to <2 x i64>*), align 8
  store <2 x i64> %103, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 6, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %105, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 6, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %107, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 6, i64 6) to <2 x i64>*), align 8
  store <2 x i64> %112, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 7, i64 0) to <2 x i64>*), align 8
  store <2 x i64> %114, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 7, i64 2) to <2 x i64>*), align 8
  store <2 x i64> %116, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 7, i64 4) to <2 x i64>*), align 8
  store <2 x i64> %118, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x [8 x i64]], [8 x [8 x i64]]* @C, i64 0, i64 7, i64 6) to <2 x i64>*), align 8
  ret void
}
