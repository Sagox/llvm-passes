; ModuleID = 'scopes.cpp'
source_filename = "scopes.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myvar = dso_local global i32 45, align 4, !dbg !0

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %myvar = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %pa = alloca i32*, align 8
  %myvar2 = alloca i32, align 4
  %myvar3 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %myvar, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %myvar, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %b, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %a, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 5, i32* %a, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32** %pa, metadata !20, metadata !DIExpression()), !dbg !22
  store i32* %myvar, i32** %pa, align 8, !dbg !22
  %0 = load i32, i32* %a, align 4, !dbg !23
  %1 = load i32, i32* %a, align 4, !dbg !24
  %mul = mul nsw i32 %0, %1, !dbg !25
  store i32 %mul, i32* %a, align 4, !dbg !26
  %2 = load i32, i32* %a, align 4, !dbg !27
  %3 = load i32, i32* %a, align 4, !dbg !28
  %mul1 = mul nsw i32 %2, %3, !dbg !29
  store i32 %mul1, i32* %b, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %myvar2, metadata !31, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %myvar2, align 4, !dbg !33
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc9, %entry
  %4 = load i32, i32* %myvar2, align 4, !dbg !35
  %cmp = icmp slt i32 %4, 10, !dbg !37
  br i1 %cmp, label %for.body, label %for.end10, !dbg !38

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %pa, align 8, !dbg !39
  %6 = load i32, i32* %5, align 4, !dbg !41
  %add = add nsw i32 %6, 5, !dbg !42
  %7 = load i32*, i32** %pa, align 8, !dbg !43
  store i32 %add, i32* %7, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %myvar3, metadata !45, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %myvar3, align 4, !dbg !47
  br label %for.cond4, !dbg !48

for.cond4:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %myvar3, align 4, !dbg !49
  %cmp5 = icmp slt i32 %8, 10, !dbg !51
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !52

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %myvar3, align 4, !dbg !53
  store i32 %9, i32* %myvar3, align 4, !dbg !55
  br label %for.inc, !dbg !56

for.inc:                                          ; preds = %for.body6
  %10 = load i32, i32* %myvar3, align 4, !dbg !57
  %add7 = add nsw i32 %10, 2, !dbg !57
  store i32 %add7, i32* %myvar3, align 4, !dbg !57
  br label %for.cond4, !dbg !58, !llvm.loop !59

for.end:                                          ; preds = %for.cond4
  %11 = load i32, i32* %myvar2, align 4, !dbg !61
  %add8 = add nsw i32 %11, 1, !dbg !62
  %sub = sub nsw i32 %add8, 1, !dbg !63
  store i32 %sub, i32* %myvar2, align 4, !dbg !64
  br label %for.inc9, !dbg !65

for.inc9:                                         ; preds = %for.end
  %12 = load i32, i32* %myvar2, align 4, !dbg !66
  %inc = add nsw i32 %12, 1, !dbg !66
  store i32 %inc, i32* %myvar2, align 4, !dbg !66
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end10:                                        ; preds = %for.cond
  %13 = load i32, i32* %retval, align 4, !dbg !70
  ret i32 %13, !dbg !70
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!15 = !DILocation(line: 8, column: 6, scope: !11)
!16 = !DILocalVariable(name: "b", scope: !11, file: !3, line: 9, type: !6)
!17 = !DILocation(line: 9, column: 6, scope: !11)
!18 = !DILocalVariable(name: "a", scope: !11, file: !3, line: 10, type: !6)
!19 = !DILocation(line: 10, column: 6, scope: !11)
!20 = !DILocalVariable(name: "pa", scope: !11, file: !3, line: 11, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!22 = !DILocation(line: 11, column: 7, scope: !11)
!23 = !DILocation(line: 12, column: 6, scope: !11)
!24 = !DILocation(line: 12, column: 8, scope: !11)
!25 = !DILocation(line: 12, column: 7, scope: !11)
!26 = !DILocation(line: 12, column: 4, scope: !11)
!27 = !DILocation(line: 13, column: 6, scope: !11)
!28 = !DILocation(line: 13, column: 8, scope: !11)
!29 = !DILocation(line: 13, column: 7, scope: !11)
!30 = !DILocation(line: 13, column: 4, scope: !11)
!31 = !DILocalVariable(name: "myvar", scope: !32, file: !3, line: 14, type: !6)
!32 = distinct !DILexicalBlock(scope: !11, file: !3, line: 14, column: 2)
!33 = !DILocation(line: 14, column: 10, scope: !32)
!34 = !DILocation(line: 14, column: 6, scope: !32)
!35 = !DILocation(line: 14, column: 20, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !3, line: 14, column: 2)
!37 = !DILocation(line: 14, column: 25, scope: !36)
!38 = !DILocation(line: 14, column: 2, scope: !32)
!39 = !DILocation(line: 15, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !3, line: 14, column: 38)
!41 = !DILocation(line: 15, column: 9, scope: !40)
!42 = !DILocation(line: 15, column: 12, scope: !40)
!43 = !DILocation(line: 15, column: 4, scope: !40)
!44 = !DILocation(line: 15, column: 7, scope: !40)
!45 = !DILocalVariable(name: "myvar", scope: !46, file: !3, line: 16, type: !6)
!46 = distinct !DILexicalBlock(scope: !40, file: !3, line: 16, column: 3)
!47 = !DILocation(line: 16, column: 11, scope: !46)
!48 = !DILocation(line: 16, column: 7, scope: !46)
!49 = !DILocation(line: 16, column: 21, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 16, column: 3)
!51 = !DILocation(line: 16, column: 27, scope: !50)
!52 = !DILocation(line: 16, column: 3, scope: !46)
!53 = !DILocation(line: 18, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !3, line: 17, column: 3)
!55 = !DILocation(line: 18, column: 10, scope: !54)
!56 = !DILocation(line: 19, column: 3, scope: !54)
!57 = !DILocation(line: 16, column: 37, scope: !50)
!58 = !DILocation(line: 16, column: 3, scope: !50)
!59 = distinct !{!59, !52, !60}
!60 = !DILocation(line: 19, column: 3, scope: !46)
!61 = !DILocation(line: 20, column: 11, scope: !40)
!62 = !DILocation(line: 20, column: 17, scope: !40)
!63 = !DILocation(line: 20, column: 21, scope: !40)
!64 = !DILocation(line: 20, column: 9, scope: !40)
!65 = !DILocation(line: 21, column: 2, scope: !40)
!66 = !DILocation(line: 14, column: 34, scope: !36)
!67 = !DILocation(line: 14, column: 2, scope: !36)
!68 = distinct !{!68, !38, !69}
!69 = !DILocation(line: 21, column: 2, scope: !32)
!70 = !DILocation(line: 22, column: 1, scope: !11)
