/*
 * Flow.cpp
 *
 *  Created on: 2014-05-29
 *      Author: jtestard
 */


#include "Flow.h"
#include "Lattice.h"
bool Flow::equals(Flow* other){
	return this->triPoint == other->triPoint;
}

void Flow::copy(Flow *rhs){
	 this->triPoint = rhs->triPoint;
}


Flow::Flow(){
	//basic = "";
    triPoint=0;
}
/*
Flow::Flow(string input){
	base = new LatticeBase(input);
}*/
Flow::Flow(int triPoint) {
	this->triPoint = triPoint;
}
Flow::Flow(Flow* flow){

    triPoint = flow->triPoint;
}

Flow* Flow::join(Flow* other){

		//join bottom-bottom gives you bottom. Anything else gives you top.
	errs()<< "I just entered into the superclassed join... \n";
	if (this->triPoint==BOTTOM && other->triPoint==BOTTOM)
		return new Flow(BOTTOM);
	else
		return new Flow(TOP);
	
}

Flow::~Flow(){
	//Nothing happens here
   
}
