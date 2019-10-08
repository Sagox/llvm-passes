#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils.h"
using namespace llvm;

#define DEBUG_TYPE "myPipeline"

namespace {
  struct myPipeline : public FunctionPass {
    static char ID;
    myPipeline() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      legacy::FunctionPassManager FPM(F.getParent());
      FPM.add(createPromoteMemoryToRegisterPass());
      FPM.add(createDeadCodeEliminationPass());
      FPM.add(createSimpleLoopUnrollPass());
      bool modified = FPM.run(F);
      
      return modified;
    }
  };
}

char myPipeline::ID = 0;
static RegisterPass<myPipeline> X("myPipeline", "Custom Pipeline of LLVM passes");