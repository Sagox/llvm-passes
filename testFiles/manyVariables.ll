; ModuleID = 'manyVariables.c'
source_filename = "manyVariables.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
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
  call void @llvm.dbg.declare(metadata i32* %a, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %a, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %b, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 1, i32* %b, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %c, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 2, i32* %c, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %d, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 3, i32* %d, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %e, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 4, i32* %e, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %f, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 5, i32* %f, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %g, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 6, i32* %g, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %h, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 7, i32* %h, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 8, i32* %i, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 9, i32* %j, align 4, !dbg !30
  %0 = load i32, i32* %a, align 4, !dbg !31
  %1 = load i32, i32* %b, align 4, !dbg !32
  %add = add nsw i32 %0, %1, !dbg !33
  %2 = load i32, i32* %c, align 4, !dbg !34
  %add1 = add nsw i32 %add, %2, !dbg !35
  %3 = load i32, i32* %d, align 4, !dbg !36
  %add2 = add nsw i32 %add1, %3, !dbg !37
  %4 = load i32, i32* %e, align 4, !dbg !38
  %add3 = add nsw i32 %add2, %4, !dbg !39
  %5 = load i32, i32* %f, align 4, !dbg !40
  %add4 = add nsw i32 %add3, %5, !dbg !41
  %6 = load i32, i32* %g, align 4, !dbg !42
  %add5 = add nsw i32 %add4, %6, !dbg !43
  %7 = load i32, i32* %h, align 4, !dbg !44
  %add6 = add nsw i32 %add5, %7, !dbg !45
  %8 = load i32, i32* %i, align 4, !dbg !46
  %add7 = add nsw i32 %add6, %8, !dbg !47
  %9 = load i32, i32* %j, align 4, !dbg !48
  %add8 = add nsw i32 %add7, %9, !dbg !49
  ret i32 %add8, !dbg !50
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "manyVariables.c", directory: "/home/sagar/Documents/llvm-passes/testFiles")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 6, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 2, type: !10)
!14 = !DILocation(line: 2, column: 10, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 2, type: !10)
!16 = !DILocation(line: 2, column: 14, scope: !7)
!17 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 2, type: !10)
!18 = !DILocation(line: 2, column: 18, scope: !7)
!19 = !DILocalVariable(name: "e", scope: !7, file: !1, line: 2, type: !10)
!20 = !DILocation(line: 2, column: 22, scope: !7)
!21 = !DILocalVariable(name: "f", scope: !7, file: !1, line: 3, type: !10)
!22 = !DILocation(line: 3, column: 6, scope: !7)
!23 = !DILocalVariable(name: "g", scope: !7, file: !1, line: 3, type: !10)
!24 = !DILocation(line: 3, column: 10, scope: !7)
!25 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 3, type: !10)
!26 = !DILocation(line: 3, column: 14, scope: !7)
!27 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 3, type: !10)
!28 = !DILocation(line: 3, column: 18, scope: !7)
!29 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 3, type: !10)
!30 = !DILocation(line: 3, column: 22, scope: !7)
!31 = !DILocation(line: 4, column: 9, scope: !7)
!32 = !DILocation(line: 4, column: 11, scope: !7)
!33 = !DILocation(line: 4, column: 10, scope: !7)
!34 = !DILocation(line: 4, column: 13, scope: !7)
!35 = !DILocation(line: 4, column: 12, scope: !7)
!36 = !DILocation(line: 4, column: 15, scope: !7)
!37 = !DILocation(line: 4, column: 14, scope: !7)
!38 = !DILocation(line: 4, column: 17, scope: !7)
!39 = !DILocation(line: 4, column: 16, scope: !7)
!40 = !DILocation(line: 4, column: 19, scope: !7)
!41 = !DILocation(line: 4, column: 18, scope: !7)
!42 = !DILocation(line: 4, column: 21, scope: !7)
!43 = !DILocation(line: 4, column: 20, scope: !7)
!44 = !DILocation(line: 4, column: 23, scope: !7)
!45 = !DILocation(line: 4, column: 22, scope: !7)
!46 = !DILocation(line: 4, column: 25, scope: !7)
!47 = !DILocation(line: 4, column: 24, scope: !7)
!48 = !DILocation(line: 4, column: 27, scope: !7)
!49 = !DILocation(line: 4, column: 26, scope: !7)
!50 = !DILocation(line: 4, column: 2, scope: !7)
