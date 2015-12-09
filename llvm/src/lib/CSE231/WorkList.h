/**
 * Requirements :
 * 	-	Every static analysis must extend the WorkList class.
 * 	-	The listNode structure is used to store the results of the analysis.
 *
 * 	Notice that we assume all static analyses use a function scope, in accordance with the Professor's instructions.
 */

#ifndef STATIC_ANALYSIS
#define STATIC_ANALYSIS
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Support/raw_ostream.h"
#include "Lattice.h"
#include "Flow.h"
#include <map>
#include <vector>
#include <cstdlib>
#include <queue>
#include <sstream>
#include <set>

using namespace llvm;
using namespace std;

//Static Analysis class
class WorkList {

public :

	
	void runWorklist();

    virtual void print(raw_ostream &OS);
	
	WorkList(Function &F);
	WorkList(); 
	virtual ~WorkList();


//	Flow* top;
//	Flow* bottom;

	virtual Flow* executeFlowFunction(Flow *in, Instruction *inst, int NodeId);


	virtual Flow* initialize();
	void CFGmaker(Function &F);

	ListNode* root;
	vector<ListNode*> CFGNodes;
	vector<ListEdge*> CFGEdges;
	StringRef functionName;
};
#endif
