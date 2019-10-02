; ModuleID = 'scopes.ll'
source_filename = "scopes.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myvar = dso_local global i32 45, align 4, !dbg !0

; Function Attrs: noinline norecurse nounwind uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32 5, metadata !16, metadata !DIExpression()), !dbg !15
  %mul = mul nsw i32 5, 5, !dbg !17
  call void @llvm.dbg.value(metadata i32 %mul, metadata !16, metadata !DIExpression()), !dbg !15
  %mul1 = mul nsw i32 %mul, %mul, !dbg !18
  call void @llvm.dbg.value(metadata i32 %mul1, metadata !19, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32 1, metadata !20, metadata !DIExpression()), !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %myvar2.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !22
  call void @llvm.dbg.value(metadata i32 %myvar2.0, metadata !20, metadata !DIExpression()), !dbg !22
  %cmp = icmp slt i32 %myvar2.0, 5, !dbg !24
  br i1 %cmp, label %for.body, label %for.end, !dbg !26

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 6, metadata !27, metadata !DIExpression()), !dbg !30
  %add = add nsw i32 %myvar2.0, 1, !dbg !31
  %sub = sub nsw i32 %add, 1, !dbg !32
  call void @llvm.dbg.value(metadata i32 %sub, metadata !20, metadata !DIExpression()), !dbg !22
  br label %for.inc, !dbg !33

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %sub, 1, !dbg !34
  call void @llvm.dbg.value(metadata i32 %inc, metadata !20, metadata !DIExpression()), !dbg !22
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "myvar", scope: !2, file: !3, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "scopes.cpp", directory: "/home/sagar/Documents/llvm-passes/testFiles")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 7, type: !12, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocalVariable(name: "myvar", scope: !11, file: !3, line: 8, type: !6)
!15 = !DILocation(line: 0, scope: !11)
!16 = !DILocalVariable(name: "a", scope: !11, file: !3, line: 10, type: !6)
!17 = !DILocation(line: 11, column: 7, scope: !11)
!18 = !DILocation(line: 12, column: 7, scope: !11)
!19 = !DILocalVariable(name: "b", scope: !11, file: !3, line: 9, type: !6)
!20 = !DILocalVariable(name: "myvar", scope: !21, file: !3, line: 13, type: !6)
!21 = distinct !DILexicalBlock(scope: !11, file: !3, line: 13, column: 2)
!22 = !DILocation(line: 0, scope: !21)
!23 = !DILocation(line: 13, column: 6, scope: !21)
!24 = !DILocation(line: 13, column: 25, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !3, line: 13, column: 2)
!26 = !DILocation(line: 13, column: 2, scope: !21)
!27 = !DILocalVariable(name: "myvar", scope: !28, file: !3, line: 15, type: !6)
!28 = distinct !DILexicalBlock(scope: !29, file: !3, line: 14, column: 3)
!29 = distinct !DILexicalBlock(scope: !25, file: !3, line: 13, column: 37)
!30 = !DILocation(line: 0, scope: !28)
!31 = !DILocation(line: 17, column: 17, scope: !29)
!32 = !DILocation(line: 17, column: 21, scope: !29)
!33 = !DILocation(line: 18, column: 2, scope: !29)
!34 = !DILocation(line: 13, column: 33, scope: !25)
!35 = !DILocation(line: 13, column: 2, scope: !25)
!36 = distinct !{!36, !26, !37}
!37 = !DILocation(line: 18, column: 2, scope: !21)
!38 = !DILocation(line: 19, column: 1, scope: !11)
