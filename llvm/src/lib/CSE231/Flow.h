/*
 * Flow.h
 *
 *  Created on: 2014-05-29
 *      Author: jtestard
 */

#ifndef FLOW_H_
#define FLOW_H_


#include "llvm/Support/raw_ostream.h"
#include <string>


using namespace std;
using namespace llvm;
/**
 * This class is used to represent the information computed by static analyses.
 * It is a very general class but must overload the functions shown below.
 * It can be anything, but it should be most of the time have an attribute to map
 * each variable to the information computed by the analysis.
 *
 * This class is the closest we can get to a lattice definition.
 */
 
/*
class LatticeBase {
public:
     static const std::string TOP;
     static const  std::string BOTTOM;

    string value;

    LatticeBase() {
        this->value = "";
    }
    LatticeBase(std::string input) {
        this->value = input; 

    } 
    //valid is isBasic
    bool valid() {
        return  this->value != NULL;
    }
    
    bool equals(LatticeBase * other) {
        return this->value==other->value;
    }
    void copy(LatticeBase * copyee) {
        this->value  = copyee->value;
        
    }

};
*/
class Flow {

public :
   // LatticeBase * base;
    //TriState is the world of lattice
    //Bottom =1 , TOP 2 or NOT Bottom and TOP 0
    int triPoint;

 

	//The equality operator is used by the worklist algorithm and must be overloaded by the analysis.
	virtual bool equals(Flow* other);


	/**
	 * The equality operator must also be overloaded when we want to assign a variable to top or bottom (or something else).
 */
	virtual void copy(Flow *rhs);

	/**
	 * The join function must be overloaded by the Flow subclasses.
	 */
	virtual Flow* join(Flow* other);

	//bool isBasic();

	//bool basicEquals(Flow* other);

	//You do not have to overload these constructors. You can create additional constructors with different signatures as well in your subclasses.
	Flow();
	//Flow(string input);
    Flow(int triPoint);
	Flow(Flow* flow);
	//ConstantPropFlow(map<variable,int>());

	//Destructor must be virtual.
	virtual ~Flow();


};



#endif /* FLOW_H_ */
