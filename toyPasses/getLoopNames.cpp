#define DEBUG_TYPE "loopEnumerator"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
	struct enumerateLoops : public LoopPass {
		static char ID;
		enumerateLoops() : LoopPass(ID) {}
		bool runOnLoop(Loop *L, LPPassManager &LPM) {
			errs() << "Loop: " << L->getName() << "\n";
			return false;
		}
	};
}

char enumerateLoops::ID = 0;
static RegisterPass<enumerateLoops> X("enumerateLoops", "Enumerates all the loops");
