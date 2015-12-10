#include "CSEAnalysisFlow.h"

#define TOP 2
#define BOTTOM 3

CSEAnalysisFlow::CSEAnalysisFlow() :
		Flow() {}

CSEAnalysisFlow::CSEAnalysisFlow(int triPoint) :
		Flow(triPoint) {}

CSEAnalysisFlow::CSEAnalysisFlow(
		CSEAnalysisFlow *flow) :
		Flow(flow->triPoint) {this->value = flow->value;}

bool CSEAnalysisFlow::equals(Flow* otherSuper) {
	CSEAnalysisFlow* other =
			static_cast<CSEAnalysisFlow*>(otherSuper);
	if (this->triPoint || other->triPoint)
		return this->triPoint == other->triPoint;
	if (other->value.size() != this->value.size())
		return false;
	for (map<string, string>::const_iterator it = this->value.begin();
			it != this->value.end(); it++) {
		string key = it->first;
		string thisVal = it->second;
		//Check if key is found in other
		if (other->value.find(key) == other->value.end())
			return false;
		string otherVal = other->value.find(key)->second;
		if (otherVal != thisVal)
			return false;

	}

	return true;
}

Flow* CSEAnalysisFlow::join(Flow* otherSuper) {

	CSEAnalysisFlow* other =
			static_cast<CSEAnalysisFlow*>(otherSuper);

	if (this->triPoint == BOTTOM && other->triPoint == BOTTOM)
		return new CSEAnalysisFlow(BOTTOM);

	if (this->triPoint == BOTTOM) {
		CSEAnalysisFlow* f = new CSEAnalysisFlow();
                f->triPoint = other->triPoint;
	        f->value = other->value;
		return f;
	}
	if (other->triPoint == BOTTOM) {
		CSEAnalysisFlow* f = new CSEAnalysisFlow();
		f->triPoint = this->triPoint;
	        f->value = this->value;
		return f;
	}

	if (this->triPoint == TOP || other->triPoint == TOP)
		return new CSEAnalysisFlow(TOP);

	CSEAnalysisFlow* f = new CSEAnalysisFlow();

	for (map<string, string>::iterator it = this->value.begin();
			it != this->value.end(); it++) {

		if (other->value.find(it->first) == other->value.end()) {
			f->value[it->first] = this->value.find(it->first)->second;
		} else {
			string otherVal = other->value.find(it->first)->second;
			string thisVal = this->value.find(it->first)->second;

			if (otherVal == thisVal)
				f->value[it->first] = otherVal;

		}
	}

	for (map<string, string>::iterator it = other->value.begin();
			it != other->value.end(); it++) {

		if (this->value.find(it->first) == this->value.end()) {
			f->value[it->first] = other->value.find(it->first)->second;
		} else {
			string thisVal = this->value.find(it->first)->second;
			string otherVal = other->value.find(it->first)->second;

			if (otherVal == thisVal)

				f->value[it->first] = otherVal;

		}
	}

	return f;

}

CSEAnalysisFlow::~CSEAnalysisFlow() {
}
