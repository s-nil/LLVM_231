; ModuleID = '/home/parallels/Desktop/cse231-proj1/P2test/pointerAnalysisSimple/crazyPointer/crazyPointer.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %massive_p1 = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %crazy_p2 = alloca i32*, align 8
  store i32 0, i32* %retval
  store i32* %a, i32** %massive_p1, align 8
  store i32* %b, i32** %massive_p1, align 8
  store i32* %c, i32** %massive_p1, align 8
  store i32* %d, i32** %massive_p1, align 8
  store i32* %x, i32** %crazy_p2, align 8
  store i32* %y, i32** %crazy_p2, align 8
  store i32* %z, i32** %crazy_p2, align 8
  store i32* %z, i32** %massive_p1, align 8
  store i32* %a, i32** %crazy_p2, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
