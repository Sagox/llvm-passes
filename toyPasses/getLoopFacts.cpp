#define DEBUG_TYPE "loopFacts"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>

using namespace llvm;

namespace {
	struct loopFacts : public FunctionPass {
		static char ID;
		loopFacts() : FunctionPass(ID) {}
		
		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.addRequired<LoopInfoWrapperPass>();
			AU.setPreservesAll();
		}
		void countBBInLoop(Loop* L, int depth) {
			int blocks = 0;
			for(Loop::block_iterator bb = L->block_begin(); bb != L->block_end(); ++bb) {
				blocks++;
				BasicBlock::iterator t;
				for(t = (*bb)->begin(); t!= (*bb)->end();t++) {
					errs() << t->getOpcodeName() << "\n";
				}
			}
			errs() << "Loop Depth: " << depth << " has " << blocks << " blocks\n";
			std::vector<Loop*> subLoops  = L->getSubLoops();
			Loop::iterator j,k;
			for(j=subLoops.begin(), k = subLoops.end(); j!=k; ++j) {
				countBBInLoop(*j, depth+1);
			}
		}
		bool runOnFunction(Function &F) {
			errs() << "Function: " <<F.getName() << "\n";
			LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
			int loopCounter = 0;
			for (LoopInfo::iterator i = LI.begin(), e = LI.end(); i != e; ++i) {
				Loop* L = *i;
				countBBInLoop(L, 0);
			}
				return false;
		}
	};
}


char loopFacts::ID = 0;
static RegisterPass<loopFacts> X("loopFacts", "Enumerates all the loop facts");
