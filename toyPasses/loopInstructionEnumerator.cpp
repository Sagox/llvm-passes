#define DEBUG_TYPE "loopInstructionEnumerator"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>
#include <unordered_map>
using namespace llvm;

namespace {
	struct loopInstructionEnumerator : public FunctionPass {
		static char ID;
		loopInstructionEnumerator() : FunctionPass(ID) {}
		std::unordered_map<Instruction*, bool> insts;
		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.addRequired<LoopInfoWrapperPass>();
			AU.setPreservesAll();
		}
		void countBBInLoop(Loop* L, int depth) {
			int blocks = 0;
			for(Loop::block_iterator bb = L->block_begin(); bb != L->block_end(); ++bb) {
				BasicBlock::iterator t;				
				errs() << *(*bb) << "\n";
				for(t = (*bb)->begin(); t!= (*bb)->end();t++) {
					if(insts.find(&(*t)) != insts.end())
						errs() << "repeat\n"; 
					insts[&(*t)] = true;
					// errs() << *t << "\n";
				}
			}
			std::vector<Loop*> subLoops  = L->getSubLoops();
			for(auto j=subLoops.begin(), k = subLoops.end(); j!=k; ++j) {
				countBBInLoop(*j, depth+1);
			}
		}
		bool runOnFunction(Function &F) {
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


char loopInstructionEnumerator::ID = 0;
static RegisterPass<loopInstructionEnumerator> X("loopInstructionEnumerator", "Enumerates all the loop facts");
