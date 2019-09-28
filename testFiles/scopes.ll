; ModuleID = 'scopes.cpp'
source_filename = "scopes.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %myvar = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %myvar2 = alloca i32, align 4
  %myvar3 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %myvar, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %myvar, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %b, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %a, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 5, i32* %a, align 4, !dbg !16
  %0 = load i32, i32* %a, align 4, !dbg !17
  %1 = load i32, i32* %a, align 4, !dbg !18
  %mul = mul nsw i32 %0, %1, !dbg !19
  store i32 %mul, i32* %a, align 4, !dbg !20
  %2 = load i32, i32* %a, align 4, !dbg !21
  %3 = load i32, i32* %a, align 4, !dbg !22
  %mul1 = mul nsw i32 %2, %3, !dbg !23
  store i32 %mul1, i32* %b, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %myvar2, metadata !25, metadata !DIExpression()), !dbg !27
  store i32 1, i32* %myvar2, align 4, !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %myvar2, align 4, !dbg !29
  %cmp = icmp slt i32 %4, 5, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %myvar3, metadata !33, metadata !DIExpression()), !dbg !36
  store i32 6, i32* %myvar3, align 4, !dbg !36
  %5 = load i32, i32* %myvar2, align 4, !dbg !37
  %add = add nsw i32 %5, 1, !dbg !38
  %sub = sub nsw i32 %add, 1, !dbg !39
  store i32 %sub, i32* %myvar2, align 4, !dbg !40
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %myvar2, align 4, !dbg !42
  %inc = add nsw i32 %6, 1, !dbg !42
  store i32 %inc, i32* %myvar2, align 4, !dbg !42
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %retval, align 4, !dbg !46
  ret i32 %7, !dbg !46
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "scopes.cpp", directory: "/home/sagar/Documents/llvm-passes/testFiles")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "myvar", scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 6, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 3, type: !10)
!14 = !DILocation(line: 3, column: 6, scope: !7)
!15 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 6, scope: !7)
!17 = !DILocation(line: 5, column: 6, scope: !7)
!18 = !DILocation(line: 5, column: 8, scope: !7)
!19 = !DILocation(line: 5, column: 7, scope: !7)
!20 = !DILocation(line: 5, column: 4, scope: !7)
!21 = !DILocation(line: 6, column: 6, scope: !7)
!22 = !DILocation(line: 6, column: 8, scope: !7)
!23 = !DILocation(line: 6, column: 7, scope: !7)
!24 = !DILocation(line: 6, column: 4, scope: !7)
!25 = !DILocalVariable(name: "myvar", scope: !26, file: !1, line: 7, type: !10)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 2)
!27 = !DILocation(line: 7, column: 10, scope: !26)
!28 = !DILocation(line: 7, column: 6, scope: !26)
!29 = !DILocation(line: 7, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 2)
!31 = !DILocation(line: 7, column: 25, scope: !30)
!32 = !DILocation(line: 7, column: 2, scope: !26)
!33 = !DILocalVariable(name: "myvar", scope: !34, file: !1, line: 9, type: !10)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 3)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 7, column: 37)
!36 = !DILocation(line: 9, column: 8, scope: !34)
!37 = !DILocation(line: 11, column: 11, scope: !35)
!38 = !DILocation(line: 11, column: 17, scope: !35)
!39 = !DILocation(line: 11, column: 21, scope: !35)
!40 = !DILocation(line: 11, column: 9, scope: !35)
!41 = !DILocation(line: 12, column: 2, scope: !35)
!42 = !DILocation(line: 7, column: 33, scope: !30)
!43 = !DILocation(line: 7, column: 2, scope: !30)
!44 = distinct !{!44, !32, !45}
!45 = !DILocation(line: 12, column: 2, scope: !26)
!46 = !DILocation(line: 13, column: 1, scope: !7)
