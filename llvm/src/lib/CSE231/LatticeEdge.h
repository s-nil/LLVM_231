#ifndef LATTICE_EDGE
#define LATTICE_EDGE
#include <string>
#include "Flow.h"
#include "LatticeNode.h"
#include "llvm/Support/raw_ostream.h"
class ListNode;
class ListEdge {
public:
    Flow * flow;
    ListNode * src;
    ListNode * dst;
    ListEdge(ListNode * src, ListNode * dst)  {
        this->src = src;
        this->dst = dst;
        flow = new Flow();
            
    }
    ~ListEdge() {
        delete flow;
    }
 
};


#endif
