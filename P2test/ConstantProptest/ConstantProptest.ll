; ModuleID = '/home/parallels/Desktop/cse231-proj1/P2test/ConstantProptest/ConstantProptest.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca i32, align 4
  %z_ = alloca float, align 4
  %a1 = alloca i16, align 2
  %a2 = alloca i16, align 2
  store i32 0, i32* %retval
  store float 0x400921CAC0000000, float* %x, align 4
  store float 0x4022C28F60000000, float* %y, align 4
  %0 = load float* %x, align 4
  %conv = fptosi float %0 to i32
  store i32 %conv, i32* %z, align 4
  %1 = load float* %y, align 4
  %conv1 = fptosi float %1 to i32
  store i32 %conv1, i32* %z, align 4
  %2 = load i32* %z, align 4
  %conv2 = sitofp i32 %2 to float
  %3 = load float* %y, align 4
  %add = fadd float %conv2, %3
  store float %add, float* %z_, align 4
  %4 = load float* %y, align 4
  %add3 = fadd float %4, 9.000000e+00
  store float %add3, float* %z_, align 4
  %5 = load float* %x, align 4
  %add4 = fadd float %5, 9.000000e+00
  %conv5 = fptosi float %add4 to i32
  store i32 %conv5, i32* %z, align 4
  store i16 1, i16* %a1, align 2
  %6 = load i16* %a1, align 2
  %conv6 = zext i16 %6 to i32
  %shl = shl i32 %conv6, 3
  %conv7 = trunc i32 %shl to i16
  store i16 %conv7, i16* %a2, align 2
  ret i32 0
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
