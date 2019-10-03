; ModuleID = 'scopes.cpp'
source_filename = "scopes.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myvar = dso_local global i32 45, align 4, !dbg !0
@myglobalvar1 = dso_local global float 1.000000e+00, align 4, !dbg !6
@myglobalvar2 = dso_local global float 1.000000e+00, align 4, !dbg !9
@myglobalvar3 = dso_local global float 1.000000e+00, align 4, !dbg !11
@myglobalvar4 = dso_local global float 1.000000e+00, align 4, !dbg !13
@myglobalvar5 = dso_local global float 1.000000e+00, align 4, !dbg !15
@myglobalvar6 = dso_local global i32 7, align 4, !dbg !17

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %myvar = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %pa = alloca i32*, align 8
  %myvar2 = alloca i32, align 4
  %myvar3 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %myvar, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %myvar, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %b, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %a, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 5, i32* %a, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32** %pa, metadata !33, metadata !DIExpression()), !dbg !35
  store i32* %myvar, i32** %pa, align 8, !dbg !35
  %0 = load i32, i32* %a, align 4, !dbg !36
  %1 = load i32, i32* %a, align 4, !dbg !37
  %mul = mul nsw i32 %0, %1, !dbg !38
  store i32 %mul, i32* %a, align 4, !dbg !39
  %2 = load i32, i32* %a, align 4, !dbg !40
  %3 = load i32, i32* %a, align 4, !dbg !41
  %mul1 = mul nsw i32 %2, %3, !dbg !42
  store i32 %mul1, i32* %b, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %myvar2, metadata !44, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %myvar2, align 4, !dbg !46
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc9, %entry
  %4 = load i32, i32* %myvar2, align 4, !dbg !48
  %cmp = icmp slt i32 %4, 10, !dbg !50
  br i1 %cmp, label %for.body, label %for.end10, !dbg !51

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %pa, align 8, !dbg !52
  %6 = load i32, i32* %5, align 4, !dbg !54
  %add = add nsw i32 %6, 5, !dbg !55
  %7 = load i32*, i32** %pa, align 8, !dbg !56
  store i32 %add, i32* %7, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %myvar3, metadata !58, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %myvar3, align 4, !dbg !60
  br label %for.cond4, !dbg !61

for.cond4:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %myvar3, align 4, !dbg !62
  %cmp5 = icmp slt i32 %8, 10, !dbg !64
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !65

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %myvar3, align 4, !dbg !66
  store i32 %9, i32* %myvar3, align 4, !dbg !68
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body6
  %10 = load i32, i32* %myvar3, align 4, !dbg !70
  %add7 = add nsw i32 %10, 2, !dbg !70
  store i32 %add7, i32* %myvar3, align 4, !dbg !70
  br label %for.cond4, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond4
  %11 = load i32, i32* %myvar2, align 4, !dbg !74
  %add8 = add nsw i32 %11, 1, !dbg !75
  %sub = sub nsw i32 %add8, 1, !dbg !76
  store i32 %sub, i32* %myvar2, align 4, !dbg !77
  br label %for.inc9, !dbg !78

for.inc9:                                         ; preds = %for.end
  %12 = load i32, i32* %myvar2, align 4, !dbg !79
  %inc = add nsw i32 %12, 1, !dbg !79
  store i32 %inc, i32* %myvar2, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end10:                                        ; preds = %for.cond
  %13 = load i32, i32* %retval, align 4, !dbg !83
  ret i32 %13, !dbg !83
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "myvar", scope: !2, file: !3, line: 1, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "scopes.cpp", directory: "/home/sagar/Documents/llvm-passes/testFiles")
!4 = !{}
!5 = !{!0, !6, !9, !11, !13, !15, !17}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "myglobalvar1", scope: !2, file: !3, line: 2, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "myglobalvar2", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "myglobalvar3", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "myglobalvar4", scope: !2, file: !3, line: 5, type: !8, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "myglobalvar5", scope: !2, file: !3, line: 6, type: !8, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "myglobalvar6", scope: !2, file: !3, line: 28, type: !19, isLocal: false, isDefinition: true)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 9.0.0 (git@github.com:llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
!24 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 11, type: !25, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{!19}
!27 = !DILocalVariable(name: "myvar", scope: !24, file: !3, line: 12, type: !19)
!28 = !DILocation(line: 12, column: 6, scope: !24)
!29 = !DILocalVariable(name: "b", scope: !24, file: !3, line: 13, type: !19)
!30 = !DILocation(line: 13, column: 6, scope: !24)
!31 = !DILocalVariable(name: "a", scope: !24, file: !3, line: 14, type: !19)
!32 = !DILocation(line: 14, column: 6, scope: !24)
!33 = !DILocalVariable(name: "pa", scope: !24, file: !3, line: 15, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!35 = !DILocation(line: 15, column: 7, scope: !24)
!36 = !DILocation(line: 16, column: 6, scope: !24)
!37 = !DILocation(line: 16, column: 8, scope: !24)
!38 = !DILocation(line: 16, column: 7, scope: !24)
!39 = !DILocation(line: 16, column: 4, scope: !24)
!40 = !DILocation(line: 17, column: 6, scope: !24)
!41 = !DILocation(line: 17, column: 8, scope: !24)
!42 = !DILocation(line: 17, column: 7, scope: !24)
!43 = !DILocation(line: 17, column: 4, scope: !24)
!44 = !DILocalVariable(name: "myvar", scope: !45, file: !3, line: 18, type: !19)
!45 = distinct !DILexicalBlock(scope: !24, file: !3, line: 18, column: 2)
!46 = !DILocation(line: 18, column: 10, scope: !45)
!47 = !DILocation(line: 18, column: 6, scope: !45)
!48 = !DILocation(line: 18, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 18, column: 2)
!50 = !DILocation(line: 18, column: 25, scope: !49)
!51 = !DILocation(line: 18, column: 2, scope: !45)
!52 = !DILocation(line: 19, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !3, line: 18, column: 38)
!54 = !DILocation(line: 19, column: 9, scope: !53)
!55 = !DILocation(line: 19, column: 12, scope: !53)
!56 = !DILocation(line: 19, column: 4, scope: !53)
!57 = !DILocation(line: 19, column: 7, scope: !53)
!58 = !DILocalVariable(name: "myvar", scope: !59, file: !3, line: 20, type: !19)
!59 = distinct !DILexicalBlock(scope: !53, file: !3, line: 20, column: 3)
!60 = !DILocation(line: 20, column: 11, scope: !59)
!61 = !DILocation(line: 20, column: 7, scope: !59)
!62 = !DILocation(line: 20, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 20, column: 3)
!64 = !DILocation(line: 20, column: 27, scope: !63)
!65 = !DILocation(line: 20, column: 3, scope: !59)
!66 = !DILocation(line: 22, column: 12, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !3, line: 21, column: 3)
!68 = !DILocation(line: 22, column: 10, scope: !67)
!69 = !DILocation(line: 23, column: 3, scope: !67)
!70 = !DILocation(line: 20, column: 37, scope: !63)
!71 = !DILocation(line: 20, column: 3, scope: !63)
!72 = distinct !{!72, !65, !73}
!73 = !DILocation(line: 23, column: 3, scope: !59)
!74 = !DILocation(line: 24, column: 11, scope: !53)
!75 = !DILocation(line: 24, column: 17, scope: !53)
!76 = !DILocation(line: 24, column: 21, scope: !53)
!77 = !DILocation(line: 24, column: 9, scope: !53)
!78 = !DILocation(line: 25, column: 2, scope: !53)
!79 = !DILocation(line: 18, column: 34, scope: !49)
!80 = !DILocation(line: 18, column: 2, scope: !49)
!81 = distinct !{!81, !51, !82}
!82 = !DILocation(line: 25, column: 2, scope: !45)
!83 = !DILocation(line: 26, column: 1, scope: !24)
