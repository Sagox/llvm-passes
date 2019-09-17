; ModuleID = 'manyVariables.c'
source_filename = "manyVariables.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %a, align 4
  store i32 1, i32* %b, align 4
  store i32 2, i32* %c, align 4
  store i32 3, i32* %d, align 4
  store i32 4, i32* %e, align 4
  store i32 5, i32* %f, align 4
  store i32 6, i32* %g, align 4
  store i32 7, i32* %h, align 4
  store i32 8, i32* %i, align 4
  store i32 9, i32* %j, align 4
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* %c, align 4
  %add1 = add nsw i32 %add, %2
  %3 = load i32, i32* %d, align 4
  %add2 = add nsw i32 %add1, %3
  %4 = load i32, i32* %e, align 4
  %add3 = add nsw i32 %add2, %4
  %5 = load i32, i32* %f, align 4
  %add4 = add nsw i32 %add3, %5
  %6 = load i32, i32* %g, align 4
  %add5 = add nsw i32 %add4, %6
  %7 = load i32, i32* %h, align 4
  %add6 = add nsw i32 %add5, %7
  %8 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %add6, %8
  %9 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %add7, %9
  ret i32 %add8
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"}
