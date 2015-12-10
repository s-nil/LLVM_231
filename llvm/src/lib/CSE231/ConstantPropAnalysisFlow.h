#ifndef CONSTANT_PROP_ANALYSIS_FLOW_H_
#define CONSTANT_PROP_ANALYSIS_FLOW_H_
#include <string>
#include <map>
#include <set>
#include <algorithm>
#include <sstream>
#include "llvm/Support/raw_ostream.h"
#include "Flow.h"

using namespace std;
using namespace llvm;
/*
 * This class is the FLow class for the constant propagation analysis.
  This is a Must-Point-To Analysis.
*/

class ConstantPropAnalysisFlow: public Flow {

public:
  
	map<string, float > value;

	//constructor 
	ConstantPropAnalysisFlow();

	ConstantPropAnalysisFlow(int triPoint);

	ConstantPropAnalysisFlow(ConstantPropAnalysisFlow* flow);

	~ConstantPropAnalysisFlow();
		
	bool equals(Flow* other);

	Flow* join(Flow* other);
};

#endif
