//
//  StaticAnalysisPass.cpp
//  
//
//  Created by Jules Testard on 22/05/2014.
//
//

/**
 * Note : use the errs() instead of std::cout in this file to output to the console (if your name is not mike and you don't have a fancy debugger that
 * took hours to install :).
 */
#include "StaticAnalysis.h"

ListNode* StaticAnalysis::getCFG(){
	return this->contextFlowGraph;
}

/**
 * The run worklist is not much more than a classic BFS.
 * Notice that it processes one instruction at a time. Processing multiple instructions at a time will be much harder.
 */
void StaticAnalysis::runWorklist() {
	//We are using a queue for the worklist, but it could be any type of structure, really.
	queue<ListNode*> worklist;

	//Set each edge to bottom :
	//Top and bottom must be defined in order for the worklist to work.
	//This step uses the operator= from the Flow class.
	for (unsigned int i = 0; i < CFGEdges.size(); i++) {
		CFGEdges[i]->flow = initialize();
	}

	//Add each node to the worklist
	for (unsigned int i = 0 ; i < CFGNodes.size(); i++) {
		worklist.push(CFGNodes[i]);
	}

	while(!worklist.empty()){
		//It is assumed that any node popped from the worklist has a complete "in" flow.
		ListNode* current = worklist.front();
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



void StaticAnalysis::CFGmaker(Function &F){
    //DFS clone graph without recursion! yes
    //algorithm is at http://bangbingsyb.blogspot.com/2014/11/leetcode-clone-graph.html
    map<Instruction *, ListNode *> map;
    stack <Instruction *>  s;
    int index = 1;
    
    
    Function::iterator BB = F.begin();
	BasicBlock::iterator BI = BB->begin();
    Instruction * instruction = &*(BI); 
    ListNode * first = new ListNode(index++);
    first->inst = instruction;
    this->contextFlowGraph = first;
    this->CFGNodes.push_back(first);
    map[instruction] =  first;
    s.push(instruction);
    
    ListEdge* firstEdge = new ListEdge(*CFGNodes.begin(),*CFGNodes.begin());
   	(*CFGNodes.begin())->incoming.push_back(firstEdge);
   	this->CFGEdges.push_back(firstEdge);


    while(!s.empty()) {
        Instruction * currentInst = s.top();
        ListNode * curNode = map[currentInst];
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
                ListNode * childNode = map[currentInst];
                ListEdge * newEdge = new ListEdge(curNode,childNode);
                curNode->outgoing.push_back(newEdge);
                childNode->incoming.push_back(newEdge);
                this->CFGEdges.push_back(newEdge);
            } else {
                //create new Node which is not visited
                ListNode * newNode = new ListNode(index++);
                newNode->inst = currentChildInst;
                ListEdge * newEdge = new ListEdge(curNode, newNode);
                curNode->outgoing.push_back(newEdge);
                newNode->incoming.push_back(newEdge);
                map[currentChildInst]=newNode;
                s.push(currentChildInst);
                this->CFGNodes.push_back(newNode);
                this->CFGEdges.push_back(newEdge);
            }

        }
       
    }
	
	/*
	//Print out CFG
	errs()<<"CFGNodes"<<"\n";
	for(int i =0; i< CFGNodes.size();i++) {
		errs<<CFGNodes[i].
	}
	errs()<< current->index << " : new_out: "<<new_out->triPoint<<"\n";
	*/
}
/*
void StaticAnalysis::buildCFG(Function &F){
	Function::iterator BB = F.begin();
	BasicBlock::iterator BI = BB->begin();
	map<Instruction*,ListNode*> helper;
	int counter = 1;

	//Build list nodes without successors.
   	for (Function::iterator e = F.end() ; e != BB ; ++BB) {
		BI = BB->begin();
		for(BasicBlock::iterator BE = BB->end(); BI != BE; ++BI){
			Instruction * instruction = dyn_cast<Instruction>(BI);
			ListNode* node = new ListNode(counter++);
			node->inst = instruction;
			helper.insert(pair<Instruction*,ListNode*>(instruction,node));
			CFGNodes.push_back(node);
		}
   	}

   	//Make the root point to the first instruction
   	this->contextFlowGraph = CFGNodes[0];
   	//Create incoming edge for the first node (does not exist otherwise.
   	ListEdge* firstEdge = new ListEdge(CFGNodes[0],CFGNodes[0]);
   	CFGNodes[0]->incoming.push_back(firstEdge);
   	CFGEdges.push_back(firstEdge);

   	//Go through each key value mapping and update the successor list.
   	for (map<Instruction*,ListNode*>::const_iterator it = helper.begin(); it != helper.end() ; ++it) {
   		Instruction* inst = it->first;
   		ListNode* node = it->second;
   		if(isa<BranchInst>(inst)){
   			//Several outgoing
   			BranchInst * br = dyn_cast<BranchInst>(inst);
   			for (unsigned int i = 0 ; i < br->getNumSuccessors() ; i++) {
   				BasicBlock * bb = br->getSuccessor(i); //Get successor basic block
   				Instruction * nextInst = &(*bb->begin());//bb->getFirstNonPHIOrDbgOrLifetime(); // Gets the first legitimate instruction.
   				if (nextInst!=0)
   					if (helper.find(nextInst)!=helper.end()) {
   	   					ListNode* nextNode = helper[nextInst];
   	   					ListEdge* edge = new ListEdge(node,nextNode);
   	   					node->outgoing.push_back(edge);
   	   					nextNode->incoming.push_back(edge);
   	   					CFGEdges.push_back(edge);
   					}

   			}
   		} else {
   			//Only one outgoing
   			if (inst->getNextNode()!=0)
   				if (helper.find(inst->getNextNode())!=helper.end()) {
   					ListNode* nextNode = helper[inst->getNextNode()];
   					ListEdge* edge = new ListEdge(node,nextNode);
   					node->outgoing.push_back(edge);
   					nextNode->incoming.push_back(edge);
   					CFGEdges.push_back(edge);
   				}
   			//Weird bug here. getNextNode can point to a basic block instead of an instruction. Should be taken care of by the key check.
   		}
   	}
}

*/
void StaticAnalysis::print(raw_ostream &OS) {
    //do some badthing os outputsteam
	OS<<"oops in abstract class print"<<"\n";
}
//Prints out the graph data using BFS and avoiding cycles.
//Doesn't quite print out JSON yet, but some nice string representation.
void StaticAnalysis::JSONCFG(raw_ostream &OS) {
	//The graph data representation is now edge-based.
	OS << "\"Analysis\" : [\n";
	for (unsigned int i = 0; i < CFGNodes.size() ; i++) {
		StaticAnalysis::JSONNode(OS,CFGNodes[i]);
		if(i+1 < CFGNodes.size())
			OS << ",\n";
	}
	OS << "\n]\n";
}

Flow* StaticAnalysis::initialize(){
	return new Flow(BOTTOM);
}

void StaticAnalysis::JSONEdge(raw_ostream &OS, ListEdge* edge) {
	OS << "{\"Edge\" : " << "[" << edge->src->index << "," << edge->dst->index << "],";
	//OS << "\"Flow\" : " << edge->flow->jsonString() << "}";
}

void StaticAnalysis::JSONNode(raw_ostream &OS, ListNode* node) {
	OS << "\t\"" << node->index << "\" : {\n\t\t";
	OS << "\"representation\" : \"" << *(node->inst) << "\",\n\t\t";
	OS << "\"incoming\" : [\n";
	for (unsigned int i = 0 ; i < node->incoming.size() ; i++) {
		OS << "\t\t\t";
		StaticAnalysis::JSONEdge(OS,node->incoming[i]);
		if (i+1<node->incoming.size())
			OS << ",\n";
	}
	OS << "\n\t\t],\n";
	OS << "\t\t\"outgoing\" : [\n";
	for (unsigned int i = 0 ; i < node->outgoing.size() ; i++) {
		OS << "\t\t\t";
		StaticAnalysis::JSONEdge(OS,node->outgoing[i]);
		if (i+1<node->outgoing.size())
			OS << ",\n";
	}
	OS << "\n\t\t]\n";
	OS << "\t}";
}

StringRef StaticAnalysis::getFunctionName(){
	return this->functionName;
}

/**
 * For basic static analysis, flow is just "assigned to top", which just means the basic string from the Flow general class will be top.
 * This method is expected to do much more when overloaded.
 */
Flow* StaticAnalysis::executeFlowFunction(Flow* in, Instruction *inst, int NodeId)
{
//	switch(instruction) {
//	case:
//
//	}
	return new Flow(TOP);
}

StaticAnalysis::StaticAnalysis(Function &F){
	top = new Flow(TOP);//Should be changed by subclasses of Flow to an instance of the subclass
	bottom = new Flow(BOTTOM);//Should be changed by subclasses of Flow to an instance of the subclass
	this->functionName = F.getName();
	CFGmaker(F);
}

StaticAnalysis::StaticAnalysis() {}

StaticAnalysis::~StaticAnalysis(){
	delete this->contextFlowGraph;
	//Might need to put something else here
	for (unsigned int i = 0 ; i < CFGNodes.size() ; i++) {
		delete CFGNodes[i];
	}
	for (unsigned int i = 0 ; i < CFGEdges.size() ; i++) {
		delete CFGEdges[i];
	}
	delete top;
	delete bottom;
}
