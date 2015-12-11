#include "ConstantPropAnalysisFlow.h"

int Top = 2;
int Bottom = 1;
	
ConstantPropAnalysisFlow::ConstantPropAnalysisFlow(): Flow(){}
	
ConstantPropAnalysisFlow::ConstantPropAnalysisFlow(int triPoint): Flow(triPoint){}
	
ConstantPropAnalysisFlow::ConstantPropAnalysisFlow(ConstantPropAnalysisFlow *flow): Flow(flow->triPoint) {
	this->value = flow->value;
}

ConstantPropAnalysisFlow::~ConstantPropAnalysisFlow(){}	
	
bool ConstantPropAnalysisFlow::equals(Flow* otherSuper) {
	ConstantPropAnalysisFlow* other =
			static_cast<ConstantPropAnalysisFlow*>(otherSuper);
	// if one of them is "bottom" or top	
	if (this->triPoint || other->triPoint)
		return this->triPoint == other->triPoint;
	//compare the size	
	if (other->value.size() != this->value.size())
		return false;
		
	for (map<string, float>::const_iterator it = this->value.begin(); it != this->value.end(); it++) {
		string key = it->first;
		float thisVal = it->second;
		if (other->value.find(key) == other->value.end())
			return false;
		float otherVal = other->value.find(key)->second;
		if (otherVal != thisVal)
			return false;

	}

	return true;
}

string ConstantPropAnalysisFlow::arrowList() {
	if (value.size()==0)
		return std::string ( ( this->triPoint ==BOTTOM ? "BOTTOM" : "TOP"));
	//Value has something inside
	stringstream ss;
	//ss<<"in arrowList";
	map<string, set<string> >::const_iterator it = this->value.begin();
    string first = it->first;
	float second =it->second;
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


// Top is empty set   Bottom is full set
Flow* ConstantPropAnalysisFlow::join(Flow* otherSuper) {

	ConstantPropAnalysisFlow* other =
			static_cast<ConstantPropAnalysisFlow*>(otherSuper);

	if (this->triPoint == Top || other->triPoint == Top)
		return new ConstantPropAnalysisFlow(Top);

	if (this->triPoint == Bottom && other->triPoint == Bottom)
		return new ConstantPropAnalysisFlow(Bottom);

	if (this->triPoint == Bottom) {
		ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow();
		f->value = other->value;
		f->triPoint = other->triPoint;
		return f;
	}
	if (other->triPoint == Bottom) {
		ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow();
		f->value = this->value;
		f->triPoint = this->triPoint;
		return f;
	}

	ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow();
  // if the two set are both not bottom or top, join them
	for (map<string, float>::iterator it = this->value.begin();
			it != this->value.end(); it++) {

		if (other->value.find(it->first) == other->value.end()) {

			f->value[it->first] = this->value.find(it->first)->second;
		} 
	else {
		float otherValue = other->value.find(it->first)->second;
		float thisValue = this->value.find(it->first)->second;

			if (otherValue == thisValue)

				f->value[it->first] = otherValue;

		}
	}

	for (map<string, float>::iterator it = other->value.begin();
			it != other->value.end(); it++) {

		if (this->value.find(it->first) == this->value.end()) {
			f->value[it->first] = other->value.find(it->first)->second;
		}
		else {
			float thisValue = this->value.find(it->first)->second;
			float otherValue = other->value.find(it->first)->second;

			if (otherValue == thisValue)
				f->value[it->first] = otherValue;
		}
	}
	return f;

}
