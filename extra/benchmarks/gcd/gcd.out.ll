; ModuleID = 'gcd.out.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@0 = private unnamed_addr constant [7 x i8] c"alloca\00"
@1 = private unnamed_addr constant [3 x i8] c"br\00"
@2 = private unnamed_addr constant [5 x i8] c"icmp\00"
@3 = private unnamed_addr constant [5 x i8] c"load\00"
@4 = private unnamed_addr constant [6 x i8] c"store\00"
@5 = private unnamed_addr constant [3 x i8] c"br\00"
@6 = private unnamed_addr constant [5 x i8] c"load\00"
@7 = private unnamed_addr constant [3 x i8] c"br\00"
@8 = private unnamed_addr constant [5 x i8] c"call\00"
@9 = private unnamed_addr constant [5 x i8] c"load\00"
@10 = private unnamed_addr constant [5 x i8] c"urem\00"
@11 = private unnamed_addr constant [4 x i8] c"phi\00"
@12 = private unnamed_addr constant [4 x i8] c"ret\00"
@13 = private unnamed_addr constant [7 x i8] c"alloca\00"
@14 = private unnamed_addr constant [5 x i8] c"call\00"
@15 = private unnamed_addr constant [4 x i8] c"ret\00"
@16 = private unnamed_addr constant [6 x i8] c"store\00"

; Function Attrs: uwtable
define i32 @_Z3gcdjj(i32 %n1, i32 %n2) #0 {
entry:
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  %0 = load i32* %n2.addr, align 4
  %cmp = icmp eq i32 %0, 0
  call void @_Z5CountPci(i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @4, i32 0, i32 0), i32 2)
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32* %n1.addr, align 4
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i32 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32* %n2.addr, align 4
  %3 = load i32* %n1.addr, align 4
  %4 = load i32* %n2.addr, align 4
  %rem = urem i32 %3, %4
  %call = call i32 @_Z3gcdjj(i32 %2, i32 %rem)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i32 3)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i32 1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %call, %cond.false ]
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i32 1)
  ret i32 %cond
}

; Function Attrs: uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @_Z3gcdjj(i32 72, i32 32)
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %call)
  call void @_Z5CountPci(i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @14, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @15, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @16, i32 0, i32 0), i32 1)
  call void @_Z7printDIv()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @_Z5CountPci(i8*, i32)

declare void @_Z7printDIv()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
