#define DEBUG_TYPE "userVsuses"
#include "llvm/Pass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstIterator.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <vector>

using namespace llvm;

namespace {
	struct userVsuses : public FunctionPass {
		static char ID;
		userVsuses() : FunctionPass(ID) {}
		bool runOnFunction(Function &F) {
			for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
				errs() << "The following are the users of the instruction: " << *I << "\n";
				for(auto U: I->users()) {
					errs() << "U: " << *U << "\n";
				}
				errs() << "The following are the uses of the instruction: " << *I << "\n";
				for(auto V = I->use_begin(), VE = I->use_end(); V!=VE; ++V) {
					errs() << "U: " << *(V->getUser()) << "\n";
				}
			}
		}
	};
}

char userVsuses::ID = 0;
static RegisterPass<userVsuses> X("user-vs-uses", "print users and uses of instructions/values");
