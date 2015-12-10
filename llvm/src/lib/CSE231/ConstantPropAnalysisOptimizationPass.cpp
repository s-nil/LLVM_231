#include "llvm/Pass.h"
#include "ConstantPropAnalysis.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include <string>
#include <vector>

using namespace llvm;
using namespace std;

namespace {
  struct ConstantPropAnalysisOptimizationPass : public FunctionPass {
    static char ID;
    vector<ConstantPropAnalysis *>constantPropAnalyses;
    ConstantPropAnalysisOptimizationPass() : FunctionPass(ID) {}

    virtual bool runOnFunction(Function &F) {
    	constantPropAnalyses.push_back(new ConstantPropAnalysis(F));
    	return false;
    }

    void print(raw_ostream &OS, const Module*) const {

    	for (unsigned int i = 0 ; i < constantPropAnalyses.size() ; i++){
        	//Run worklist
        	constantPropAnalyses[i]->runWorklist();
  
        	OS << "FINISH WORKLIST : " << "\n";
    	}

  	}
  };
}

char ConstantPropAnalysisOptimizationPass::ID = 0;
static RegisterPass<ConstantPropAnalysisOptimizationPass> X("ConstantPropAnalysisOptimization", "Constant Propagation Analysis Optimization Pass", false, false);
