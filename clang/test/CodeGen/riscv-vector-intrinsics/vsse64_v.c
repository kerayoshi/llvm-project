// RUN: %clang_cc1 -triple riscv64-unknown-linux-gnu -target-feature +experimental-v -fallow-half-arguments-and-returns -fnative-half-type -S -emit-llvm  %s -o - |  FileCheck %s

#include <riscv_vector.h>

void test_vsse64_v_i64m1 (int64_t *base, int64_t *bstride, vint64m1_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m1
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m2 (int64_t *base, int64_t *bstride, vint64m2_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m2
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m4 (int64_t *base, int64_t *bstride, vint64m4_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m4
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m8 (int64_t *base, int64_t *bstride, vint64m8_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m8
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m1 (uint64_t *base, int64_t *bstride, vuint64m1_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m1
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m2 (uint64_t *base, int64_t *bstride, vuint64m2_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m2
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m4 (uint64_t *base, int64_t *bstride, vuint64m4_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m4
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m8 (uint64_t *base, int64_t *bstride, vuint64m8_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m8
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m1 (float64_t *base, int64_t *bstride, vfloat64m1_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m1
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m2 (float64_t *base, int64_t *bstride, vfloat64m2_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m2
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m4 (float64_t *base, int64_t *bstride, vfloat64m4_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m4
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m8 (float64_t *base, int64_t *bstride, vfloat64m8_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m8
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m1_m (vbool64_t mask, int64_t *base, int64_t *bstride, vint64m1_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m1_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m2_m (vbool32_t mask, int64_t *base, int64_t *bstride, vint64m2_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m2_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m4_m (vbool16_t mask, int64_t *base, int64_t *bstride, vint64m4_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m4_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_i64m8_m (vbool8_t mask, int64_t *base, int64_t *bstride, vint64m8_t value) {
  // CHECK-LABEL: test_vsse64_v_i64m8_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m1_m (vbool64_t mask, uint64_t *base, int64_t *bstride, vuint64m1_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m1_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m2_m (vbool32_t mask, uint64_t *base, int64_t *bstride, vuint64m2_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m2_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m4_m (vbool16_t mask, uint64_t *base, int64_t *bstride, vuint64m4_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m4_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_u64m8_m (vbool8_t mask, uint64_t *base, int64_t *bstride, vuint64m8_t value) {
  // CHECK-LABEL: test_vsse64_v_u64m8_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m1_m (vbool64_t mask, float64_t *base, int64_t *bstride, vfloat64m1_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m1_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m2_m (vbool32_t mask, float64_t *base, int64_t *bstride, vfloat64m2_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m2_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m4_m (vbool16_t mask, float64_t *base, int64_t *bstride, vfloat64m4_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m4_m
  // CHECK: ret void
  return;
}

void test_vsse64_v_f64m8_m (vbool8_t mask, float64_t *base, int64_t *bstride, vfloat64m8_t value) {
  // CHECK-LABEL: test_vsse64_v_f64m8_m
  // CHECK: ret void
  return;
}

