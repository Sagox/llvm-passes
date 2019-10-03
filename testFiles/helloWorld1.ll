; ModuleID = 'helloWorld.ll'
source_filename = "helloWorld.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.value(metadata !2, metadata !13, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.value(metadata i32 5, metadata !15, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 7, metadata !11, metadata !DIExpression()), !dbg !12
  ret i32 0, !dbg !18
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @func() #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata i32 5, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !22, metadata !DIExpression()), !dbg !23
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %myvar.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !26
  call void @llvm.dbg.value(metadata i32 %myvar.0, metadata !22, metadata !DIExpression()), !dbg !23
  %cmp = icmp slt i32 %myvar.0, 60, !dbg !27
  br i1 %cmp, label %for.body, label %for.end, !dbg !29

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %myvar.0, 1, !dbg !30
  %sub = sub nsw i32 %add, 1, !dbg !31
  call void @llvm.dbg.value(metadata i32 %sub, metadata !22, metadata !DIExpression()), !dbg !23
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %sub, 1, !dbg !33
  call void @llvm.dbg.value(metadata i32 %inc, metadata !22, metadata !DIExpression()), !dbg !23
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  ret void, !dbg !37
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "helloWorld.c", directory: "/home/sagar/Documents/llvm-passes/testFiles")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 0, scope: !7)
!13 = !DILocalVariable(name: "avar", scope: !7, file: !1, line: 5, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!15 = !DILocalVariable(name: "var", scope: !16, file: !1, line: 7, type: !10)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 2)
!17 = !DILocation(line: 0, scope: !16)
!18 = !DILocation(line: 10, column: 2, scope: !7)
!19 = distinct !DISubprogram(name: "func", scope: !1, file: !1, line: 13, type: !20, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "myvar", scope: !19, file: !1, line: 14, type: !10)
!23 = !DILocation(line: 0, scope: !19)
!24 = !DILocation(line: 15, column: 6, scope: !25)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 15, column: 2)
!26 = !DILocation(line: 0, scope: !25)
!27 = !DILocation(line: 15, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 15, column: 2)
!29 = !DILocation(line: 15, column: 2, scope: !25)
!30 = !DILocation(line: 16, column: 16, scope: !28)
!31 = !DILocation(line: 16, column: 18, scope: !28)
!32 = !DILocation(line: 16, column: 3, scope: !28)
!33 = !DILocation(line: 15, column: 28, scope: !28)
!34 = !DILocation(line: 15, column: 2, scope: !28)
!35 = distinct !{!35, !29, !36}
!36 = !DILocation(line: 16, column: 19, scope: !25)
!37 = !DILocation(line: 17, column: 1, scope: !19)
