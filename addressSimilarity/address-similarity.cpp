#define DEBUG_TYPE "addressSimilarity"
#include "llvm/Pass.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>

using namespace llvm;

namespace {
	struct addressSimilarity : public FunctionPass {
		static char ID;
		addressSimilarity() : FunctionPass(ID) {}
		
		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.addRequired<AAResultsWrapperPass>();
			AU.setPreservesAll();
		}

		bool runOnFunction(Function &F) {
			// auto a = new PassManager();
			errs() << "Function: " <<F.getName() << "\n";
			auto  *AA = &getAnalysis<AAResultsWrapperPass>().getAAResults();
			for(auto i=inst_begin(F), e=inst_end(F); i!=e; i++) {
				for(auto j=i;j!=e;j++) {
					if(j==i)
						continue;
					errs() << AA->alias(i->getValue(), j->getValue()) << "\n";
				}
			}
			return false;
		}
	};
}


char addressSimilarity::ID = 0;
static RegisterPass<addressSimilarity> X("addressSimilarity", "Some address Analysis");
