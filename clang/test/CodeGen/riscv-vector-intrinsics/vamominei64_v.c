// RUN: %clang_cc1 -triple riscv64-unknown-linux-gnu -target-feature +experimental-v -fallow-half-arguments-and-returns -fnative-half-type -S -emit-llvm  %s -o - |  FileCheck %s

#include <riscv_vector.h>

vint32mf2_t test_vamominei64_v_i32mf2 (int32_t *base, vuint64m1_t bindex, vint32mf2_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32mf2
  // CHECK: %{{.*}} = call <vscale x 1 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv1i32{{.*}}(i32* %{{.*}}, <vscale x 1 x i64> %{{.*}}, <vscale x 1 x i32> %{{.*}})
  return vamominei64_v_i32mf2(base, bindex, value);
}

vint32m1_t test_vamominei64_v_i32m1 (int32_t *base, vuint64m2_t bindex, vint32m1_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32m1
  // CHECK: %{{.*}} = call <vscale x 2 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv2i32{{.*}}(i32* %{{.*}}, <vscale x 2 x i64> %{{.*}}, <vscale x 2 x i32> %{{.*}})
  return vamominei64_v_i32m1(base, bindex, value);
}

vint32m2_t test_vamominei64_v_i32m2 (int32_t *base, vuint64m4_t bindex, vint32m2_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32m2
  // CHECK: %{{.*}} = call <vscale x 4 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv4i32{{.*}}(i32* %{{.*}}, <vscale x 4 x i64> %{{.*}}, <vscale x 4 x i32> %{{.*}})
  return vamominei64_v_i32m2(base, bindex, value);
}

vint32m4_t test_vamominei64_v_i32m4 (int32_t *base, vuint64m8_t bindex, vint32m4_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32m4
  // CHECK: %{{.*}} = call <vscale x 8 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv8i32{{.*}}(i32* %{{.*}}, <vscale x 8 x i64> %{{.*}}, <vscale x 8 x i32> %{{.*}})
  return vamominei64_v_i32m4(base, bindex, value);
}

vint64m1_t test_vamominei64_v_i64m1 (int64_t *base, vuint64m1_t bindex, vint64m1_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m1
  // CHECK: %{{.*}} = call <vscale x 1 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv1i64{{.*}}(i64* %{{.*}}, <vscale x 1 x i64> %{{.*}}, <vscale x 1 x i64> %{{.*}})
  return vamominei64_v_i64m1(base, bindex, value);
}

vint64m2_t test_vamominei64_v_i64m2 (int64_t *base, vuint64m2_t bindex, vint64m2_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m2
  // CHECK: %{{.*}} = call <vscale x 2 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv2i64{{.*}}(i64* %{{.*}}, <vscale x 2 x i64> %{{.*}}, <vscale x 2 x i64> %{{.*}})
  return vamominei64_v_i64m2(base, bindex, value);
}

vint64m4_t test_vamominei64_v_i64m4 (int64_t *base, vuint64m4_t bindex, vint64m4_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m4
  // CHECK: %{{.*}} = call <vscale x 4 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv4i64{{.*}}(i64* %{{.*}}, <vscale x 4 x i64> %{{.*}}, <vscale x 4 x i64> %{{.*}})
  return vamominei64_v_i64m4(base, bindex, value);
}

vint64m8_t test_vamominei64_v_i64m8 (int64_t *base, vuint64m8_t bindex, vint64m8_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m8
  // CHECK: %{{.*}} = call <vscale x 8 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv8i64{{.*}}(i64* %{{.*}}, <vscale x 8 x i64> %{{.*}}, <vscale x 8 x i64> %{{.*}})
  return vamominei64_v_i64m8(base, bindex, value);
}

vint32mf2_t test_vamominei64_v_i32mf2_m (vbool64_t mask, int32_t *base, vuint64m1_t bindex, vint32mf2_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32mf2_m
  // CHECK: %{{.*}} = call <vscale x 1 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv1i32{{.*}}(<vscale x 1 x i1> %{{.*}}, i32* %{{.*}}, <vscale x 1 x i64> %{{.*}}, <vscale x 1 x i32> %{{.*}})
  return vamominei64_v_i32mf2_m(mask, base, bindex, value);
}

vint32m1_t test_vamominei64_v_i32m1_m (vbool32_t mask, int32_t *base, vuint64m2_t bindex, vint32m1_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32m1_m
  // CHECK: %{{.*}} = call <vscale x 2 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv2i32{{.*}}(<vscale x 2 x i1> %{{.*}}, i32* %{{.*}}, <vscale x 2 x i64> %{{.*}}, <vscale x 2 x i32> %{{.*}})
  return vamominei64_v_i32m1_m(mask, base, bindex, value);
}

vint32m2_t test_vamominei64_v_i32m2_m (vbool16_t mask, int32_t *base, vuint64m4_t bindex, vint32m2_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32m2_m
  // CHECK: %{{.*}} = call <vscale x 4 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv4i32{{.*}}(<vscale x 4 x i1> %{{.*}}, i32* %{{.*}}, <vscale x 4 x i64> %{{.*}}, <vscale x 4 x i32> %{{.*}})
  return vamominei64_v_i32m2_m(mask, base, bindex, value);
}

vint32m4_t test_vamominei64_v_i32m4_m (vbool8_t mask, int32_t *base, vuint64m8_t bindex, vint32m4_t value) {
  // CHECK-LABEL: test_vamominei64_v_i32m4_m
  // CHECK: %{{.*}} = call <vscale x 8 x i32> @llvm.riscv.vamominei64.v.{{.*}}nxv8i32{{.*}}(<vscale x 8 x i1> %{{.*}}, i32* %{{.*}}, <vscale x 8 x i64> %{{.*}}, <vscale x 8 x i32> %{{.*}})
  return vamominei64_v_i32m4_m(mask, base, bindex, value);
}

vint64m1_t test_vamominei64_v_i64m1_m (vbool64_t mask, int64_t *base, vuint64m1_t bindex, vint64m1_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m1_m
  // CHECK: %{{.*}} = call <vscale x 1 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv1i64{{.*}}(<vscale x 1 x i1> %{{.*}}, i64* %{{.*}}, <vscale x 1 x i64> %{{.*}}, <vscale x 1 x i64> %{{.*}})
  return vamominei64_v_i64m1_m(mask, base, bindex, value);
}

vint64m2_t test_vamominei64_v_i64m2_m (vbool32_t mask, int64_t *base, vuint64m2_t bindex, vint64m2_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m2_m
  // CHECK: %{{.*}} = call <vscale x 2 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv2i64{{.*}}(<vscale x 2 x i1> %{{.*}}, i64* %{{.*}}, <vscale x 2 x i64> %{{.*}}, <vscale x 2 x i64> %{{.*}})
  return vamominei64_v_i64m2_m(mask, base, bindex, value);
}

vint64m4_t test_vamominei64_v_i64m4_m (vbool16_t mask, int64_t *base, vuint64m4_t bindex, vint64m4_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m4_m
  // CHECK: %{{.*}} = call <vscale x 4 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv4i64{{.*}}(<vscale x 4 x i1> %{{.*}}, i64* %{{.*}}, <vscale x 4 x i64> %{{.*}}, <vscale x 4 x i64> %{{.*}})
  return vamominei64_v_i64m4_m(mask, base, bindex, value);
}

vint64m8_t test_vamominei64_v_i64m8_m (vbool8_t mask, int64_t *base, vuint64m8_t bindex, vint64m8_t value) {
  // CHECK-LABEL: test_vamominei64_v_i64m8_m
  // CHECK: %{{.*}} = call <vscale x 8 x i64> @llvm.riscv.vamominei64.v.{{.*}}nxv8i64{{.*}}(<vscale x 8 x i1> %{{.*}}, i64* %{{.*}}, <vscale x 8 x i64> %{{.*}}, <vscale x 8 x i64> %{{.*}})
  return vamominei64_v_i64m8_m(mask, base, bindex, value);
}

