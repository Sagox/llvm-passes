#define DEBUG_TYPE "printGloablVars"
#include "llvm/Pass.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Metadata.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/ADT/APFloat.h"
#include <vector>
#include <algorithm>
#include <string>
#include <exception>
#include <utility>
#include "globalVariableUtils.h"

using namespace llvm;

namespace {
	struct printGlobalVars : public FunctionPass {
		static char ID;
		printGlobalVars() : FunctionPass(ID) {}

		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.setPreservesAll();
		}

		bool runOnFunction(Function &F) {
			printGlobalVarss(F);
			return false;
		}
	};
}


char printGlobalVars::ID = 0;
static RegisterPass<printGlobalVars> X("printGlobalVars", "Print names of all the global variables");

