; ModuleID = 'helloWorld.c'
source_filename = "helloWorld.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"My name is ..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %myvar = alloca i32, align 4
  %rando = alloca i32, align 4
  %myvar1 = alloca i32, align 4
  %myvar12 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %myvar, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %myvar, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %rando, metadata !13, metadata !DIExpression()), !dbg !15
  store i32 4, i32* %rando, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %myvar1, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %myvar1, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %myvar1, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 5, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !23

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %myvar12, metadata !24, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %myvar12, align 4, !dbg !26
  %1 = load i32, i32* %myvar1, align 4, !dbg !27
  %sub = sub nsw i32 %1, 1, !dbg !28
  %add = add nsw i32 %sub, 1, !dbg !29
  store i32 %add, i32* %myvar1, align 4, !dbg !30
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !31
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %myvar1, align 4, !dbg !33
  %inc = add nsw i32 %2, 1, !dbg !33
  store i32 %inc, i32* %myvar1, align 4, !dbg !33
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  store i32 5, i32* %myvar, align 4, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!11 = !DILocalVariable(name: "myvar", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 6, scope: !7)
!13 = !DILocalVariable(name: "rando", scope: !14, file: !1, line: 6, type: !10)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 2)
!15 = !DILocation(line: 6, column: 7, scope: !14)
!16 = !DILocalVariable(name: "myvar", scope: !17, file: !1, line: 8, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 2)
!18 = !DILocation(line: 8, column: 10, scope: !17)
!19 = !DILocation(line: 8, column: 6, scope: !17)
!20 = !DILocation(line: 8, column: 20, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 8, column: 2)
!22 = !DILocation(line: 8, column: 25, scope: !21)
!23 = !DILocation(line: 8, column: 2, scope: !17)
!24 = !DILocalVariable(name: "myvar1", scope: !25, file: !1, line: 10, type: !10)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 2)
!26 = !DILocation(line: 10, column: 7, scope: !25)
!27 = !DILocation(line: 11, column: 11, scope: !25)
!28 = !DILocation(line: 11, column: 17, scope: !25)
!29 = !DILocation(line: 11, column: 21, scope: !25)
!30 = !DILocation(line: 11, column: 9, scope: !25)
!31 = !DILocation(line: 12, column: 3, scope: !25)
!32 = !DILocation(line: 13, column: 2, scope: !25)
!33 = !DILocation(line: 8, column: 33, scope: !21)
!34 = !DILocation(line: 8, column: 2, scope: !21)
!35 = distinct !{!35, !23, !36}
!36 = !DILocation(line: 13, column: 2, scope: !17)
!37 = !DILocation(line: 14, column: 8, scope: !7)
!38 = !DILocation(line: 15, column: 2, scope: !7)
