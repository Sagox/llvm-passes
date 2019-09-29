#define DEBUG_TYPE "printDebugLoc"
#include "llvm/Pass.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Metadata.h"
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpander.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>

using namespace llvm;

namespace {
	struct printDebugLoc : public FunctionPass {
		static char ID;
		printDebugLoc() : FunctionPass(ID) {}

		DIScope *getGlobalScope(inst_iterator& I) {
			auto a = I->getDebugLoc()->getScope();
			DIScope *tr = a->getScope();
			while(!isa<DIFile>(tr)) {
				tr = tr->getScope();
			}
			// tr->dump();
			return tr;
		}

		void getAnalysisUsage (AnalysisUsage &AU) const {
			AU.addRequired<AAResultsWrapperPass>();
			AU.setPreservesAll();
		}

		bool runOnFunction(Function &F) {
			std::vector<Value*> Values;
			bool globalScopePopulated = false;
			DIScope *globalScope;
			std::string varName;
			std::vector<std::string> ValueSrcNames;
			for(auto I=inst_begin(F), E=inst_end(F); I!=E; I++) {
				if(isa<DbgDeclareInst>(*I)) {
					if(!globalScopePopulated) {
						globalScope = getGlobalScope(I);
						globalScopePopulated = true;
					}
					auto a = cast<DIVariable>(cast<MetadataAsValue>(I->getOperand(1))->getMetadata());
					varName = a->getName();
					Metadata *Meta = cast<MetadataAsValue>(I->getOperand(0))->getMetadata();
					if (isa<ValueAsMetadata>(Meta)) {
						Value *V = cast <ValueAsMetadata>(Meta)->getValue();
						Values.vector::push_back(V);
						ValueSrcNames.vector::push_back(varName);
					}
				}
			}
			auto  *AA = &getAnalysis<AAResultsWrapperPass>().getAAResults();
			errs() << "Checking for: " << *Values[0] << "\n";
			for(auto I=inst_begin(F), E=inst_end(F); I!=E; I++) {
				for(auto O = I->op_begin(), OE = I->op_end(); O!=OE;O++) {
					// errs() << AA->alias(Values[0], *O) << "\n";
					if(int(AA->alias(Values[0], *O)) >= 1) {
						errs() << *I << "\n";
					}
				}

			}
			// for(auto i=0;i<ValueSrcNames.size();i++)
			// 	errs() << *Values[i] << "\n";
			// return false;
		}
	};
}


char printDebugLoc::ID = 0;
static RegisterPass<printDebugLoc> X("printDebugLoc", "Some address Analysis");
