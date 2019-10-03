; ModuleID = 'helloWorld.c'
source_filename = "helloWorld.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind  uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca i32, align 4
  %avar = alloca i32*, align 8
  %var1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %var, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 1, i32* %var, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32** %avar, metadata !13, metadata !DIExpression()), !dbg !15
  store i32* %var, i32** %avar, align 8, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 5, i32* %var1, align 4, !dbg !18
  %0 = load i32*, i32** %avar, align 8, !dbg !19
  store i32 7, i32* %0, align 4, !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind  uwtable
define dso_local void @func() #0 !dbg !22 {
entry:
  %myvar = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %myvar, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 5, i32* %myvar, align 4, !dbg !26
  store i32 0, i32* %myvar, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %myvar, align 4, !dbg !30
  %cmp = icmp slt i32 %0, 60, !dbg !32
  br i1 %cmp, label %for.body, label %for.end, !dbg !33

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %myvar, align 4, !dbg !34
  %add = add nsw i32 %1, 1, !dbg !35
  %sub = sub nsw i32 %add, 1, !dbg !36
  store i32 %sub, i32* %myvar, align 4, !dbg !37
  br label %for.inc, !dbg !38

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %myvar, align 4, !dbg !39
  %inc = add nsw i32 %2, 1, !dbg !39
  store i32 %inc, i32* %myvar, align 4, !dbg !39
  br label %for.cond, !dbg !40, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  ret void, !dbg !43
}

attributes #0 = { noinline nounwind  uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!12 = !DILocation(line: 4, column: 6, scope: !7)
!13 = !DILocalVariable(name: "avar", scope: !7, file: !1, line: 5, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!15 = !DILocation(line: 5, column: 7, scope: !7)
!16 = !DILocalVariable(name: "var", scope: !17, file: !1, line: 7, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 2)
!18 = !DILocation(line: 7, column: 7, scope: !17)
!19 = !DILocation(line: 9, column: 3, scope: !7)
!20 = !DILocation(line: 9, column: 8, scope: !7)
!21 = !DILocation(line: 10, column: 2, scope: !7)
!22 = distinct !DISubprogram(name: "func", scope: !1, file: !1, line: 13, type: !23, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !DILocalVariable(name: "myvar", scope: !22, file: !1, line: 14, type: !10)
!26 = !DILocation(line: 14, column: 6, scope: !22)
!27 = !DILocation(line: 15, column: 11, scope: !28)
!28 = distinct !DILexicalBlock(scope: !22, file: !1, line: 15, column: 2)
!29 = !DILocation(line: 15, column: 6, scope: !28)
!30 = !DILocation(line: 15, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 15, column: 2)
!32 = !DILocation(line: 15, column: 19, scope: !31)
!33 = !DILocation(line: 15, column: 2, scope: !28)
!34 = !DILocation(line: 16, column: 11, scope: !31)
!35 = !DILocation(line: 16, column: 16, scope: !31)
!36 = !DILocation(line: 16, column: 18, scope: !31)
!37 = !DILocation(line: 16, column: 9, scope: !31)
!38 = !DILocation(line: 16, column: 3, scope: !31)
!39 = !DILocation(line: 15, column: 28, scope: !31)
!40 = !DILocation(line: 15, column: 2, scope: !31)
!41 = distinct !{!41, !33, !42}
!42 = !DILocation(line: 16, column: 19, scope: !28)
!43 = !DILocation(line: 17, column: 1, scope: !22)
