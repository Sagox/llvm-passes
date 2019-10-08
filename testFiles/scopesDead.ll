; ModuleID = 'testFiles/scopes.ll'
source_filename = "scopes.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@myvar = dso_local global i32 45, align 4
@myglobalvar1 = dso_local global float 1.000000e+00, align 4
@myglobalvar2 = dso_local global float 1.000000e+00, align 4
@myglobalvar3 = dso_local global float 1.000000e+00, align 4
@myglobalvar4 = dso_local global float 1.000000e+00, align 4
@myglobalvar5 = dso_local global float 1.000000e+00, align 4
@myglobalvar6 = dso_local global i32 7, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_scopes.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse nounwind uwtable
define dso_local i32 @main() #4 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %myvar.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc8 ]
  %cmp = icmp slt i32 %myvar.0, 10
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %0 = load i32, i32* @myvar, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, i32* @myvar, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.cond3
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  br label %for.body5.1

for.end:                                          ; preds = %for.inc.4
  %add7 = add nsw i32 %myvar.0, 1
  %sub = sub nsw i32 %add7, 1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc = add nsw i32 %sub, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  ret i32 0

for.body5.1:                                      ; preds = %for.inc
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.body5.1
  br label %for.body5.2

for.body5.2:                                      ; preds = %for.inc.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.body5.2
  br label %for.body5.3

for.body5.3:                                      ; preds = %for.inc.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.body5.3
  br label %for.body5.4

for.body5.4:                                      ; preds = %for.inc.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.body5.4
  br i1 false, label %for.body5.5, label %for.end

for.body5.5:                                      ; preds = %for.inc.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.body5.5
  unreachable
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_scopes.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
