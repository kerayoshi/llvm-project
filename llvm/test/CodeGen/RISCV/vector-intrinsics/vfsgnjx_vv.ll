; RUN: llc -mtriple=riscv64 -mattr=+experimental-v < %s \
; RUN:   | FileCheck -check-prefix=CHECK %s

declare <vscale x 1 x half> @llvm.riscv.vfsgnjx.vv.f16mf4(<vscale x 1 x half>, <vscale x 1 x half>);
define <vscale x 1 x half> @vfsgnjx_vv_f16mf4(<vscale x 1 x half> %0, <vscale x 1 x half> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16mf4
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 1 x half> @llvm.riscv.vfsgnjx.vv.f16mf4(<vscale x 1 x half> %0, <vscale x 1 x half> %1)
  ret <vscale x 1 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfsgnjx.vv.f16mf2(<vscale x 2 x half>, <vscale x 2 x half>);
define <vscale x 2 x half> @vfsgnjx_vv_f16mf2(<vscale x 2 x half> %0, <vscale x 2 x half> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16mf2
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 2 x half> @llvm.riscv.vfsgnjx.vv.f16mf2(<vscale x 2 x half> %0, <vscale x 2 x half> %1)
  ret <vscale x 2 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfsgnjx.vv.f16m1(<vscale x 4 x half>, <vscale x 4 x half>);
define <vscale x 4 x half> @vfsgnjx_vv_f16m1(<vscale x 4 x half> %0, <vscale x 4 x half> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m1
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 4 x half> @llvm.riscv.vfsgnjx.vv.f16m1(<vscale x 4 x half> %0, <vscale x 4 x half> %1)
  ret <vscale x 4 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfsgnjx.vv.f16m2(<vscale x 8 x half>, <vscale x 8 x half>);
define <vscale x 8 x half> @vfsgnjx_vv_f16m2(<vscale x 8 x half> %0, <vscale x 8 x half> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m2
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 8 x half> @llvm.riscv.vfsgnjx.vv.f16m2(<vscale x 8 x half> %0, <vscale x 8 x half> %1)
  ret <vscale x 8 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfsgnjx.vv.f16m4(<vscale x 16 x half>, <vscale x 16 x half>);
define <vscale x 16 x half> @vfsgnjx_vv_f16m4(<vscale x 16 x half> %0, <vscale x 16 x half> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m4
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 16 x half> @llvm.riscv.vfsgnjx.vv.f16m4(<vscale x 16 x half> %0, <vscale x 16 x half> %1)
  ret <vscale x 16 x half> %a
}

declare <vscale x 32 x half> @llvm.riscv.vfsgnjx.vv.f16m8(<vscale x 32 x half>, <vscale x 32 x half>);
define <vscale x 32 x half> @vfsgnjx_vv_f16m8(<vscale x 32 x half> %0, <vscale x 32 x half> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m8
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 32 x half> @llvm.riscv.vfsgnjx.vv.f16m8(<vscale x 32 x half> %0, <vscale x 32 x half> %1)
  ret <vscale x 32 x half> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfsgnjx.vv.f32mf2(<vscale x 1 x float>, <vscale x 1 x float>);
define <vscale x 1 x float> @vfsgnjx_vv_f32mf2(<vscale x 1 x float> %0, <vscale x 1 x float> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32mf2
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 1 x float> @llvm.riscv.vfsgnjx.vv.f32mf2(<vscale x 1 x float> %0, <vscale x 1 x float> %1)
  ret <vscale x 1 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfsgnjx.vv.f32m1(<vscale x 2 x float>, <vscale x 2 x float>);
define <vscale x 2 x float> @vfsgnjx_vv_f32m1(<vscale x 2 x float> %0, <vscale x 2 x float> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m1
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 2 x float> @llvm.riscv.vfsgnjx.vv.f32m1(<vscale x 2 x float> %0, <vscale x 2 x float> %1)
  ret <vscale x 2 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfsgnjx.vv.f32m2(<vscale x 4 x float>, <vscale x 4 x float>);
define <vscale x 4 x float> @vfsgnjx_vv_f32m2(<vscale x 4 x float> %0, <vscale x 4 x float> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m2
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 4 x float> @llvm.riscv.vfsgnjx.vv.f32m2(<vscale x 4 x float> %0, <vscale x 4 x float> %1)
  ret <vscale x 4 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfsgnjx.vv.f32m4(<vscale x 8 x float>, <vscale x 8 x float>);
define <vscale x 8 x float> @vfsgnjx_vv_f32m4(<vscale x 8 x float> %0, <vscale x 8 x float> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m4
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 8 x float> @llvm.riscv.vfsgnjx.vv.f32m4(<vscale x 8 x float> %0, <vscale x 8 x float> %1)
  ret <vscale x 8 x float> %a
}

declare <vscale x 16 x float> @llvm.riscv.vfsgnjx.vv.f32m8(<vscale x 16 x float>, <vscale x 16 x float>);
define <vscale x 16 x float> @vfsgnjx_vv_f32m8(<vscale x 16 x float> %0, <vscale x 16 x float> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m8
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 16 x float> @llvm.riscv.vfsgnjx.vv.f32m8(<vscale x 16 x float> %0, <vscale x 16 x float> %1)
  ret <vscale x 16 x float> %a
}

declare <vscale x 1 x double> @llvm.riscv.vfsgnjx.vv.f64m1(<vscale x 1 x double>, <vscale x 1 x double>);
define <vscale x 1 x double> @vfsgnjx_vv_f64m1(<vscale x 1 x double> %0, <vscale x 1 x double> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m1
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 1 x double> @llvm.riscv.vfsgnjx.vv.f64m1(<vscale x 1 x double> %0, <vscale x 1 x double> %1)
  ret <vscale x 1 x double> %a
}

declare <vscale x 2 x double> @llvm.riscv.vfsgnjx.vv.f64m2(<vscale x 2 x double>, <vscale x 2 x double>);
define <vscale x 2 x double> @vfsgnjx_vv_f64m2(<vscale x 2 x double> %0, <vscale x 2 x double> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m2
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 2 x double> @llvm.riscv.vfsgnjx.vv.f64m2(<vscale x 2 x double> %0, <vscale x 2 x double> %1)
  ret <vscale x 2 x double> %a
}

declare <vscale x 4 x double> @llvm.riscv.vfsgnjx.vv.f64m4(<vscale x 4 x double>, <vscale x 4 x double>);
define <vscale x 4 x double> @vfsgnjx_vv_f64m4(<vscale x 4 x double> %0, <vscale x 4 x double> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m4
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 4 x double> @llvm.riscv.vfsgnjx.vv.f64m4(<vscale x 4 x double> %0, <vscale x 4 x double> %1)
  ret <vscale x 4 x double> %a
}

declare <vscale x 8 x double> @llvm.riscv.vfsgnjx.vv.f64m8(<vscale x 8 x double>, <vscale x 8 x double>);
define <vscale x 8 x double> @vfsgnjx_vv_f64m8(<vscale x 8 x double> %0, <vscale x 8 x double> %1) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m8
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 8 x double> @llvm.riscv.vfsgnjx.vv.f64m8(<vscale x 8 x double> %0, <vscale x 8 x double> %1)
  ret <vscale x 8 x double> %a
}

declare <vscale x 1 x half> @llvm.riscv.vfsgnjx.vv.mask.f16mf4(<vscale x 1 x i1>, <vscale x 1 x half>, <vscale x 1 x half>, <vscale x 1 x half>);
define <vscale x 1 x half> @vfsgnjx_vv_f16mf4_m(<vscale x 1 x i1> %0, <vscale x 1 x half> %1, <vscale x 1 x half> %2, <vscale x 1 x half> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16mf4_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 1 x half> @llvm.riscv.vfsgnjx.vv.mask.f16mf4(<vscale x 1 x i1> %0, <vscale x 1 x half> %1, <vscale x 1 x half> %2, <vscale x 1 x half> %3)
  ret <vscale x 1 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfsgnjx.vv.mask.f16mf2(<vscale x 2 x i1>, <vscale x 2 x half>, <vscale x 2 x half>, <vscale x 2 x half>);
define <vscale x 2 x half> @vfsgnjx_vv_f16mf2_m(<vscale x 2 x i1> %0, <vscale x 2 x half> %1, <vscale x 2 x half> %2, <vscale x 2 x half> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16mf2_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 2 x half> @llvm.riscv.vfsgnjx.vv.mask.f16mf2(<vscale x 2 x i1> %0, <vscale x 2 x half> %1, <vscale x 2 x half> %2, <vscale x 2 x half> %3)
  ret <vscale x 2 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m1(<vscale x 4 x i1>, <vscale x 4 x half>, <vscale x 4 x half>, <vscale x 4 x half>);
define <vscale x 4 x half> @vfsgnjx_vv_f16m1_m(<vscale x 4 x i1> %0, <vscale x 4 x half> %1, <vscale x 4 x half> %2, <vscale x 4 x half> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m1_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 4 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m1(<vscale x 4 x i1> %0, <vscale x 4 x half> %1, <vscale x 4 x half> %2, <vscale x 4 x half> %3)
  ret <vscale x 4 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m2(<vscale x 8 x i1>, <vscale x 8 x half>, <vscale x 8 x half>, <vscale x 8 x half>);
define <vscale x 8 x half> @vfsgnjx_vv_f16m2_m(<vscale x 8 x i1> %0, <vscale x 8 x half> %1, <vscale x 8 x half> %2, <vscale x 8 x half> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m2_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 8 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m2(<vscale x 8 x i1> %0, <vscale x 8 x half> %1, <vscale x 8 x half> %2, <vscale x 8 x half> %3)
  ret <vscale x 8 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m4(<vscale x 16 x i1>, <vscale x 16 x half>, <vscale x 16 x half>, <vscale x 16 x half>);
define <vscale x 16 x half> @vfsgnjx_vv_f16m4_m(<vscale x 16 x i1> %0, <vscale x 16 x half> %1, <vscale x 16 x half> %2, <vscale x 16 x half> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m4_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 16 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m4(<vscale x 16 x i1> %0, <vscale x 16 x half> %1, <vscale x 16 x half> %2, <vscale x 16 x half> %3)
  ret <vscale x 16 x half> %a
}

declare <vscale x 32 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m8(<vscale x 32 x i1>, <vscale x 32 x half>, <vscale x 32 x half>, <vscale x 32 x half>);
define <vscale x 32 x half> @vfsgnjx_vv_f16m8_m(<vscale x 32 x i1> %0, <vscale x 32 x half> %1, <vscale x 32 x half> %2, <vscale x 32 x half> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f16m8_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 32 x half> @llvm.riscv.vfsgnjx.vv.mask.f16m8(<vscale x 32 x i1> %0, <vscale x 32 x half> %1, <vscale x 32 x half> %2, <vscale x 32 x half> %3)
  ret <vscale x 32 x half> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfsgnjx.vv.mask.f32mf2(<vscale x 1 x i1>, <vscale x 1 x float>, <vscale x 1 x float>, <vscale x 1 x float>);
define <vscale x 1 x float> @vfsgnjx_vv_f32mf2_m(<vscale x 1 x i1> %0, <vscale x 1 x float> %1, <vscale x 1 x float> %2, <vscale x 1 x float> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32mf2_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 1 x float> @llvm.riscv.vfsgnjx.vv.mask.f32mf2(<vscale x 1 x i1> %0, <vscale x 1 x float> %1, <vscale x 1 x float> %2, <vscale x 1 x float> %3)
  ret <vscale x 1 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m1(<vscale x 2 x i1>, <vscale x 2 x float>, <vscale x 2 x float>, <vscale x 2 x float>);
define <vscale x 2 x float> @vfsgnjx_vv_f32m1_m(<vscale x 2 x i1> %0, <vscale x 2 x float> %1, <vscale x 2 x float> %2, <vscale x 2 x float> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m1_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 2 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m1(<vscale x 2 x i1> %0, <vscale x 2 x float> %1, <vscale x 2 x float> %2, <vscale x 2 x float> %3)
  ret <vscale x 2 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m2(<vscale x 4 x i1>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>);
define <vscale x 4 x float> @vfsgnjx_vv_f32m2_m(<vscale x 4 x i1> %0, <vscale x 4 x float> %1, <vscale x 4 x float> %2, <vscale x 4 x float> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m2_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 4 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m2(<vscale x 4 x i1> %0, <vscale x 4 x float> %1, <vscale x 4 x float> %2, <vscale x 4 x float> %3)
  ret <vscale x 4 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m4(<vscale x 8 x i1>, <vscale x 8 x float>, <vscale x 8 x float>, <vscale x 8 x float>);
define <vscale x 8 x float> @vfsgnjx_vv_f32m4_m(<vscale x 8 x i1> %0, <vscale x 8 x float> %1, <vscale x 8 x float> %2, <vscale x 8 x float> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m4_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 8 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m4(<vscale x 8 x i1> %0, <vscale x 8 x float> %1, <vscale x 8 x float> %2, <vscale x 8 x float> %3)
  ret <vscale x 8 x float> %a
}

declare <vscale x 16 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m8(<vscale x 16 x i1>, <vscale x 16 x float>, <vscale x 16 x float>, <vscale x 16 x float>);
define <vscale x 16 x float> @vfsgnjx_vv_f32m8_m(<vscale x 16 x i1> %0, <vscale x 16 x float> %1, <vscale x 16 x float> %2, <vscale x 16 x float> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f32m8_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 16 x float> @llvm.riscv.vfsgnjx.vv.mask.f32m8(<vscale x 16 x i1> %0, <vscale x 16 x float> %1, <vscale x 16 x float> %2, <vscale x 16 x float> %3)
  ret <vscale x 16 x float> %a
}

declare <vscale x 1 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m1(<vscale x 1 x i1>, <vscale x 1 x double>, <vscale x 1 x double>, <vscale x 1 x double>);
define <vscale x 1 x double> @vfsgnjx_vv_f64m1_m(<vscale x 1 x i1> %0, <vscale x 1 x double> %1, <vscale x 1 x double> %2, <vscale x 1 x double> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m1_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 1 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m1(<vscale x 1 x i1> %0, <vscale x 1 x double> %1, <vscale x 1 x double> %2, <vscale x 1 x double> %3)
  ret <vscale x 1 x double> %a
}

declare <vscale x 2 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m2(<vscale x 2 x i1>, <vscale x 2 x double>, <vscale x 2 x double>, <vscale x 2 x double>);
define <vscale x 2 x double> @vfsgnjx_vv_f64m2_m(<vscale x 2 x i1> %0, <vscale x 2 x double> %1, <vscale x 2 x double> %2, <vscale x 2 x double> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m2_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 2 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m2(<vscale x 2 x i1> %0, <vscale x 2 x double> %1, <vscale x 2 x double> %2, <vscale x 2 x double> %3)
  ret <vscale x 2 x double> %a
}

declare <vscale x 4 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m4(<vscale x 4 x i1>, <vscale x 4 x double>, <vscale x 4 x double>, <vscale x 4 x double>);
define <vscale x 4 x double> @vfsgnjx_vv_f64m4_m(<vscale x 4 x i1> %0, <vscale x 4 x double> %1, <vscale x 4 x double> %2, <vscale x 4 x double> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m4_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 4 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m4(<vscale x 4 x i1> %0, <vscale x 4 x double> %1, <vscale x 4 x double> %2, <vscale x 4 x double> %3)
  ret <vscale x 4 x double> %a
}

declare <vscale x 8 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m8(<vscale x 8 x i1>, <vscale x 8 x double>, <vscale x 8 x double>, <vscale x 8 x double>);
define <vscale x 8 x double> @vfsgnjx_vv_f64m8_m(<vscale x 8 x i1> %0, <vscale x 8 x double> %1, <vscale x 8 x double> %2, <vscale x 8 x double> %3) {
entry:
  ; CHECK-LABEL: vfsgnjx_vv_f64m8_m
  ; CHECK: vfsgnjx.vv v{{.*}}, v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 8 x double> @llvm.riscv.vfsgnjx.vv.mask.f64m8(<vscale x 8 x i1> %0, <vscale x 8 x double> %1, <vscale x 8 x double> %2, <vscale x 8 x double> %3)
  ret <vscale x 8 x double> %a
}

