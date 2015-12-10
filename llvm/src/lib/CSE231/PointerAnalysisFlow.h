/*

 * Flow.h
 *
 *  Created on: 2014-05-29
 *      Author: jtestard
 */

#ifndef POINTER_ANALYSIS_FLOW
#define POINTER_ANALYSIS_FLOW
#include <string>
#include <map>
#include <set>
#include <algorithm>
#include <sstream>
#include "llvm/Support/raw_ostream.h"
#include "Flow.h"
#include "Lattice.h"

using namespace std;
using namespace llvm;
/*
 * This class is the FLow class for the pointer analysis.
 * This is a May-Point-To Analysis.
 */

class PointerAnalysisFlow: public Flow {

public:

	//The equality operator is used by the worklist algorithm and must be overloaded by the analysis.
	bool equals(Flow* other);



    string arrowList();


	void copy(Flow* rhs);


	Flow* join(Flow* other);


	PointerAnalysisFlow();


	PointerAnalysisFlow(int triPoint);

	PointerAnalysisFlow(PointerAnalysisFlow* flow);

	~PointerAnalysisFlow();


	map<string, set<string> > value;

};

#endif
