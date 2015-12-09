
#include "WorkList.h"

void WorkList::runWorklist() {
	
	queue<LatticeNode*> worklist;

	for (unsigned int i = 0; i < CFGEdges.size(); i++) {
		CFGEdges[i]->flow = initialize();
	}

	//Add each node to the worklist
	for (unsigned int i = 0 ; i < CFGNodes.size(); i++) {
		worklist.push(CFGNodes[i]);
	}

	while(!worklist.empty()){
		//It is assumed that any node popped from the worklist has a complete "in" flow.
		LatticeNode* current = worklist.front();
		//GET INPUT FLOW AND JOIN INTO UNIQUE FLOW
		vector<Flow*> inputFlows;
		for (unsigned int i = 0 ; i < current->incoming.size() ; i++) {
			inputFlows.push_back(current->incoming[i]->flow);
		}

		//Since all edges have been initialized to a flow, inputFlows[0] never generates an exception.
		Flow* in = initialize();
		in->copy(inputFlows[0]);
		for (unsigned int i = 1 ; i < inputFlows.size(); i++){
			Flow* f = in->join(inputFlows[i]);
			delete in; //The output is a copy of the existing flows, therefore we dont want to keep the old verison of in.
			in = f;
		}

		//EXECUTE THE FLOW FUNCTION
		Flow* out = executeFlowFunction(	in,					//Contains all known variable mappings for the flow function
											current->inst, 		//Instruction to perform flow function on
											current->index	);	//Basic block index


		//This will executed the flow function
		for(unsigned int i = 0 ; i < current->outgoing.size(); i++) {
			//GET NEW OUTPUT INFORMATION BY JOINING WITH EXISTING FLOW IN EDGE
			Flow* new_out = out->join(current->outgoing[i]->flow);
			//IF INFORMATION HAS CHANGED, THEN PUSH TO WORKLIST
			errs()<< current->index << " : new_out: "<<new_out->triPoint<<"\n";
			if (!(new_out->equals(current->outgoing[i]->flow))){
				errs()<< current->index << "flow was" << current->outgoing[i]->flow->triPoint<< "change to ===> " << " new_out: "<<new_out->triPoint<<"\n";
				current->outgoing[i]->flow->copy(new_out);
				worklist.push(current->outgoing[i]->dst);
			}
		}
		worklist.pop();
	}
}



void WorkList::CFGmaker(Function &F){
    //DFS clone graph without recursion! yes
    //algorithm is at http://bangbingsyb.blogspot.com/2014/11/leetcode-clone-graph.html
    map<Instruction *, LatticeNode *> map;
    stack <Instruction *>  s;
    int index = 1;
    
    
    Function::iterator BB = F.begin();
	BasicBlock::iterator BI = BB->begin();
    Instruction * instruction = &*(BI); 
    LatticeNode * first = new LatticeNode(index++);
    first->inst = instruction;
    this->root = first;
    this->CFGNodes.push_back(first);
    map[instruction] =  first;
    s.push(instruction);
    
    LatticeEdge* firstEdge = new LatticeEdge(*CFGNodes.begin(),*CFGNodes.begin());
   	(*CFGNodes.begin())->incoming.push_back(firstEdge);
   	this->CFGEdges.push_back(firstEdge);


    while(!s.empty()) {
        Instruction * currentInst = s.top();
        LatticeNode * curNode = map[currentInst];
        s.pop();


        //child instruct
        vector <Instruction *> childsInst;
        //Value *refValue = currentInst;
        if(isa<BranchInst>(currentInst)) {
            BranchInst * branchInst = dyn_cast<BranchInst>(currentInst);
            for ( unsigned int i = 0 ; i < branchInst->getNumSuccessors() ; i++) {
            BasicBlock * bb = branchInst->getSuccessor(i); //Get successor basic block
            Instruction * nextInst = &*(bb->begin());//bb->getFirstNonPHIOrDbgOrLifetime(); // Gets the first legitimate instruction.
            if(nextInst != NULL) childsInst.push_back(nextInst);
            }
        //not branch
        } else {
               //not end
               //add following inst
                if (currentInst->getNextNode()!=0) childsInst.push_back(currentInst->getNextNode());
            }
        //childs are ready, start dfs
        for (unsigned int i =0; i < childsInst.size(); i++) {
            Instruction * currentChildInst = childsInst[i];

            if(map.count(currentChildInst)) {
                //this inst has never been
                LatticeNode * childNode = map[currentInst];
                LatticeEdge * newEdge = new LatticeEdge(curNode,childNode);
                curNode->outgoing.push_back(newEdge);
                childNode->incoming.push_back(newEdge);
                this->CFGEdges.push_back(newEdge);
            } else {
                //create new Node which is not visited
                LatticeNode * newNode = new LatticeNode(index++);
                newNode->inst = currentChildInst;
                LatticeEdge * newEdge = new LatticeEdge(curNode, newNode);
                curNode->outgoing.push_back(newEdge);
                newNode->incoming.push_back(newEdge);
                map[currentChildInst]=newNode;
                s.push(currentChildInst);
                this->CFGNodes.push_back(newNode);
                this->CFGEdges.push_back(newEdge);
            }

        }
       
    }
}

void WorkList::print(raw_ostream &OS) {
    //do some badthing os outputsteam
	OS<<"oops in abstract class print"<<"\n";
}

Flow* WorkList::initialize(){
	return new Flow(BOTTOM);
}


Flow* WorkList::executeFlowFunction(Flow* in, Instruction *inst, int NodeId)
{

	return new Flow(TOP);
}

WorkList::WorkList(Function &F){
	//top = new Flow(TOP);//Should be changed by subclasses of Flow to an instance of the subclass
	//bottom = new Flow(BOTTOM);//Should be changed by subclasses of Flow to an instance of the subclass
	this->functionName = F.getName();
	CFGmaker(F);

}

WorkList::WorkList() {}

WorkList::~WorkList(){
	/*
	delete this->root;
	//Might need to put something else here
	for (unsigned int i = 0 ; i < CFGNodes.size() ; i++) {
		delete CFGNodes[i];
	}
	for (unsigned int i = 0 ; i < CFGEdges.size() ; i++) {
		delete CFGEdges[i];
	}
	delete top;
	delete bottom;
	*/
}
