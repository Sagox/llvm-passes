#ifndef _GLOBAL_VARIABLE_UTILS_H
#define _GLOBAL_VARIABLE_UTILS_H

using namespace llvm;

int printGlobalVarNames(Function &F);
int getGlobalVariableValues(Function &F);
int globalVariableUses(Function &F, AAResults *AA, StringRef s);

#endif