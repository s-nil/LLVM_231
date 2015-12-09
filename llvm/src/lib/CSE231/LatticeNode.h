#ifndef LATTICE_NODE
#define LATTICE_NODE
#include <vector>
#include "Flow.h"
#include "LatticeEdge.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
class ListEdge;
class ListNode {
public:
    int index;
    std::vector<ListEdge *> incoming;
    std::vector<ListEdge *> outgoing;
    Instruction * inst;
    
    
    ListNode() {

    }
    ListNode(int index ) {
        this->index = index;
    }
    void print() {
        errs()<<"ListNode index is "<<index<<"\n";
        
    }

};

#endif
