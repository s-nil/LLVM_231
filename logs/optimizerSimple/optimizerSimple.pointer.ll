; ModuleID = '/home/parallels/Desktop/cse231-proj1/logs/optimizerSimple/optimizerSimple.pointer.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %x1 = alloca i32*, align 8
  %x2 = alloca i32*, align 8
  %x3 = alloca i32*, align 8
  %b = alloca i32, align 4
  %y1 = alloca i32*, align 8
  %y2 = alloca i32*, align 8
  %c = alloca i32, align 4
  %z = alloca i32*, align 8
  store i32 0, i32* %retval
  store i32 5, i32* %a, align 4
  store i32 10, i32* %b, align 4
  store i32 20, i32* %c, align 4
  store i32* %a, i32** %x1, align 8
  store i32* %a, i32** %x2, align 8
  store i32* %a, i32** %x3, align 8
  store i32* %b, i32** %y1, align 8
  store i32* %b, i32** %y2, align 8
  store i32* %c, i32** %z, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
