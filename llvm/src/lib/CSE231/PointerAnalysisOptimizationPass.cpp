#include "llvm/Pass.h"
#include "PointerAnalysis.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include <string>
#include <vector>

using namespace llvm;
using namespace std;



namespace {
  struct PointerAnalysisOptimizationPass : public FunctionPass {
    static char ID;
    vector<PointerAnalysis *>pointerAnalyses;
    PointerAnalysisOptimizationPass() : FunctionPass(ID) {}

    virtual bool runOnFunction(Function &F) {
    	pointerAnalyses.push_back(new PointerAnalysis(F));
    	return false;
    }


    void print(raw_ostream &OS, const Module*) const {

    	for (unsigned int i = 0 ; i < pointerAnalyses.size() ; i++){

    		OS << "\"Function Name\" : \"" << pointerAnalyses[i]->functionName << "\n";

        	//Run worklist algorithm
        	pointerAnalyses[i]->runWorklist();

            pointerAnalyses[i]->print(OS);
        	OS << "\n";
    	}

  	}
  };
}

char PointerAnalysisOptimizationPass::ID = 0;
static RegisterPass<PointerAnalysisOptimizationPass> X("pointerAnalysisOptimization", "Pointer Analysis Optimization Pass", false, false);
