#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Metadata.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include "globalVariableUtils.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;


// takes any function of a file and prints outs the names of all
// the global variables in that file.
int printGlobalVarss(Function &F) {
	SmallVector<DIGlobalVariableExpression*, 1000> sv; 			
	auto b = F.begin();
	auto m = b->getModule();
	auto &gl = m->getGlobalList();
	for(auto i=gl.begin();i!=gl.end();++i) {
		i->getDebugInfo(sv);
	}
	for(auto j=sv.begin();j!=sv.end();j++)
		errs() << (*j)->getVariable()->getName() << "\n";
	return 0;
}