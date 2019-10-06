#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/DebugLoc.h>
#include "globalVariableUtils.h"


using namespace llvm;


// takes any function of a file and prints outs the names of all
// the global variables in that file.
int printGlobalVarNames(Function &F) {
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

int getGlobalVariableValues(Function &F) {
	SmallVector<DIGlobalVariableExpression*, 1000> sv; 			
	auto b = F.begin();
	auto m = b->getModule();
	auto &gl = m->getGlobalList();
	for(auto i=gl.begin();i!=gl.end();++i) {
		i->getDebugInfo(sv);
		errs() << *i << "\n";
	}
	return 0;	
}

int globalVariableUses(Function &F, AAResults *AA, StringRef s) {
	// errs() << "I got called\n";
	SmallVector<DIGlobalVariableExpression*, 1000> sv; 			
	Value *globalReqValue;
	auto b = F.begin();
	auto m = b->getModule();
	auto &gl = m->getGlobalList();
	bool out = false;
	for(auto i=gl.begin();i!=gl.end();++i) {
		i->getDebugInfo(sv);
	}
	for(auto G = gl.begin(), GE = gl.end(); G!=GE; ++G) {
		for(auto I=sv.begin(),E=sv.end();I!=E;++I) {
			if((*I)->getVariable()->getName() == s) {
				out = true;
				globalReqValue = &(*G);
			}
		}
		if(out)
			break;
	}
	for(auto I=inst_begin(F), E=inst_end(F); I!=E; ++I) {
		for(auto O = I->op_begin(), OE = I->op_end(); O!=OE;O++) {
			if(AA->alias(globalReqValue, *O) >= 1)
				errs() << *I << "\n";			
		}
	}
}
