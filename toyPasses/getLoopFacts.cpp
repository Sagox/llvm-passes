#define DEBUG_TYPE "loopFacts"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
	struct loopFacts : public FunctionPass {
		static char ID;
		loopFacts() : FunctionPass(ID) {}
		
		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.addRequired<LoopInfoWrapperPass>();
			AU.setPreservesAll();
		}
		
		bool runOnFunction(Function &F) {
			errs() << "Function: " <<F.getName() << "\n";
			LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
			int loopCounter = 0;
			for (LoopInfo::iterator i = LI.begin(), e = LI.end(); i != e; ++i) {
				Loop* L = *i;
				int bbCounter = 0;
				loopCounter++;
				for(Loop::block_iterator bb = L->block_begin();bb != L->block_end();++bb){
					bbCounter+=1;
				}
				errs()<<"Loop";
				errs()<<loopCounter;
				errs()<<":#BBs=";
				errs()<<bbCounter;
				errs()<<"\n";
				return false;
			}
		}
	};
}


char loopFacts::ID = 0;
static RegisterPass<loopFacts> X("loopFacts", "Enumerates all the loop facts");
