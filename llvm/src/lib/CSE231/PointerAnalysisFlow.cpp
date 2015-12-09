/*

 * PointerAnalysisFlow.cpp
 *
 *  Created on: 2014-05-29
 *      Author: jtestard
 */

#include "PointerAnalysisFlow.h"

/*
 * Flows are equal if their values are equal
 */
bool PointerAnalysisFlow::equals(Flow* otherSuper) {
	PointerAnalysisFlow* other = static_cast<PointerAnalysisFlow*>(otherSuper);
	errs()<<"this->triPoint"<<this->triPoint<<" other->TriPoint"<<other->triPoint<<"\n";
	if (this->triPoint || other->triPoint)
		return this->triPoint == other->triPoint;
	errs()<<"check values inside"<< "other " <<other->value.size()<<" this "<<this->value.size()<<"\n";
	if (other->value.size()) {
	
		for (map<string, set<string> >::const_iterator it = other->value.begin(); it != other->value.end() ; it++) {
		string key = it->first;
		errs() << "has a key" << key <<"\n";
		set<string> thisSet = it->second;
		errs()<< "set sieze is " << thisSet.size()<<"\n";
		for (set<string>::iterator it=thisSet.begin(); it!=thisSet.end(); ++it) {
			errs()<<"print out other : "<<key<< "===>" << *it<<'\n';
			 }
		
		
		
		}
	
	}
	if (other->value.size()!=this->value.size())
			return false;
	errs()<<"size is same"<<this->value.size()<<"\n";
	for (map<string, set<string> >::const_iterator it = this->value.begin(); it != this->value.end() ; it++) {
		string key = it->first;
		set<string> thisSet = it->second;
		//Check if key is found in other
		if(other->value.find(key) == other->value.end())
			return false;
		set<string> otherSet = other->value.find(key)->second;
		 for (set<string>::iterator it=thisSet.begin(); it!=thisSet.end(); ++it) {
			 if(otherSet.find(*it)==otherSet.end()){
				 return false;
			 }
		 }
	}
	return true;
}




string PointerAnalysisFlow::arrowList() {
	if (value.size()==0)
		return std::string ( ( this->triPoint ==BOTTOM ? "BOTTOM" : "TOP"));
	//Value has something inside
	stringstream ss;
	//ss<<"in arrowList";
	map<string, set<string> >::const_iterator it = this->value.begin();
    string first = it->first;
	set<string>::iterator its=it->second.begin();
	if (its != it->second.end()) {
        ss << first << "->"<< *its << "\n";
        its++;
	}
	for (; its != it->second.end() ; its++) {
        ss << first << "->"<< *its << "\n";
	}
	//errs() << "number of keys in set : " << it->second.size() << "\n";
 	if (it != this->value.end())
 		it++;
	for (; it != this->value.end() ; it++) {
		if (it->second.size()==0)
			continue;
        string first = it->first;
		its=it->second.begin();
		if (its != it->second.end()) {
            ss << first << "->"<< *its << "\n";
			its++;
		}
		for (; its != it->second.end() ; its++) {
            ss << first << "->"<< *its << "\n";
		}
	}
	ss << "";
	//ss<<"out arrowList";
	return ss.str();
}



void PointerAnalysisFlow::copy(Flow* rhs) {
	PointerAnalysisFlow* f = static_cast<PointerAnalysisFlow*>(rhs);
	this->triPoint = f->triPoint;
	this->value = f->value;
}
/*
PointerAnalysisFlow::PointerAnalysisFlow() :
		Flow() {
}

PointerAnalysisFlow::PointerAnalysisFlow(int triPoint) :
		Flow(triPoint) {
}

PointerAnalysisFlow::PointerAnalysisFlow(PointerAnalysisFlow *flow) :
		Flow(flow) {
	this->value = flow->value;
}
*/


PointerAnalysisFlow::PointerAnalysisFlow() {
	this->triPoint = 0;
}

PointerAnalysisFlow::PointerAnalysisFlow(int triPoint)  {
	this->triPoint = triPoint;
}

PointerAnalysisFlow::PointerAnalysisFlow(PointerAnalysisFlow *flow) {
	this->triPoint = flow->triPoint;
	this->value = flow->value;
	
}

//Merges flow together.
Flow* PointerAnalysisFlow::join(Flow* otherSuper) {
	//join bottom-bottom gives you bottom. Anything else gives you top.
	PointerAnalysisFlow* other = static_cast<PointerAnalysisFlow*>(otherSuper);

	if (this->triPoint == BOTTOM && other->triPoint == BOTTOM)
		return new PointerAnalysisFlow(triPoint);

	//Anything joined with a bottom will just be itself.
	if (this->triPoint == BOTTOM) {
		PointerAnalysisFlow* f = new PointerAnalysisFlow();
		f->copy(other);
		return f;
	}
	if (other->triPoint == BOTTOM) {
		PointerAnalysisFlow* f = new PointerAnalysisFlow();
		f->copy(this);
		return f;
	}

	//Join anything with top will give you top.
	if (this->triPoint == TOP || other->triPoint == TOP)
		return new PointerAnalysisFlow(TOP);

	//Merge the input from both.
	PointerAnalysisFlow* f = new PointerAnalysisFlow();

	//Get all keys
	set<string> keys;
	for (map<string, set<string> >::iterator it = this->value.begin() ; it != this->value.end() ; it++)
		keys.insert(it->first);
	for (map<string, set<string> >::iterator it = other->value.begin() ; it != other->value.end() ; it++)
		keys.insert(it->first);
	for (set<string>::iterator it = keys.begin() ; it != keys.end() ; it++) {
		string key = *it;
		set<string> values;
		for (set<string>::iterator j = this->value[key].begin(); j != this->value[key].end() ; j++)
			values.insert(*j);
		for (set<string>::iterator j = other->value[key].begin(); j != other->value[key].end() ; j++)
			values.insert(*j);
		if (values.size()>0)
			//insert into the new f
			f->value[key] = values;
	}
	return f;

}

PointerAnalysisFlow::~PointerAnalysisFlow() {
	//Nothing for basic static analysis
}
