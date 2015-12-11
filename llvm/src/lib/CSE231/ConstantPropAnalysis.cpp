#include "ConstantPropAnalysis.h"

Flow* ConstantPropAnalysis::executeFlowFunction(Flow *in, Instruction *inst, int NodeId){
	errs() <<"executeFlowFunction"<< '\n';
	ConstantPropAnalysisFlow* inFlow =
			static_cast<ConstantPropAnalysisFlow*>(in);
	ConstantPropAnalysisFlow * output;

	switch (inst->getOpcode()) {

	case Instruction::Add:
	case Instruction::Sub:
	case Instruction::Mul:
	case Instruction::SDiv:
	case Instruction::SRem:
	case Instruction::Shl:
	case Instruction::LShr:
	case Instruction::AShr:
	    errs() <<"executeFlowFunction1"<< '\n';
		output = runOpInst(inFlow, inst, inst->getOpcode());
		break;
	case Instruction::FAdd:
	case Instruction::FSub:
	case Instruction::FMul:
	case Instruction::FDiv:
	case Instruction::FRem:
	    errs() <<"executeFlowFunction2"<< '\n';
		output = runFOpInst(inFlow, inst, inst->getOpcode());
		break;

	case Instruction::Trunc:
	case Instruction::ZExt:
	case Instruction::SExt:
	case Instruction::FPToSI:
	case Instruction::FPToUI:
	case Instruction::UIToFP:
	case Instruction::SIToFP:
	case Instruction::FPTrunc:
	case Instruction::FPExt:
	    errs() <<"executeFlowFunction3"<< '\n';
		output = runCastInst(inFlow, inst);
		break;
	case Instruction::PHI:
	    errs() <<"executeFlowFunction4"<< '\n';
		output = runPhiInst(inFlow, inst);
		break;


	case Instruction::Store:
		//ConstantPropAnalysisFlow * f = new ConstantPropAnalysisFlow();
		errs() <<"in store"<< '\n';
		if (inst->getOperand(1)->getName()!="") {
			Value * value = inst->getOperand(0);
			if (dyn_cast<Constant>(value)){
			ConstantInt *cI = dyn_cast<ConstantInt>(value);
			int x =(int) cI->getZExtValue();
			errs()<<"find variable !!!!!!!!!!!!!!!!!!"<<inst->getOperand(1)->getName()<<x<<"\n";
			ConstantPropAnalysisFlow * f = new ConstantPropAnalysisFlow(0);
			f->triPoint = 0;
			errs()<<f->value.size()<<"\n";
			f->value[inst->getOperand(1)->getName()] = x;
			//errs()<<f->value.size()<<"\n";
			//errs()<<"Tripoint inFlow"<< inFlow->triPoint<<" f" << f->triPoint<<"\n";
		//	inFlow->triPoint=0;
			//ConstantPropAnalysisFlow* tmp =		static_cast<ConstantPropAnalysisFlow*>(f->join(inFlow));
			//errs()<<tmp->value.size()<<"\n";
			output = f;
			errs()<<"output size"<<output->value.size()<<"\n";
			
			}
			
		}
		
	//	ConstantPropAnalysisFlow* tmp =
					//	static_cast<ConstantPropAnalysisFlow*>(inFlow->join(f));
		//output= new ConstantPropAnalysisFlow(inFlow);
		errs() <<"in store break"<< '\n';
		break;
		
		
		
	//case Instruction::Alloca:
	case Instruction::Load:
	
	case Instruction::GetElementPtr:
	case Instruction::Fence:
	case Instruction::AtomicCmpXchg:
	case Instruction::AtomicRMW:
	case Instruction::PtrToInt:
	case Instruction::IntToPtr:
		//pointer     return top
		errs() <<"executeFlowFunction5"<< '\n';
		output = returnTop();
		break;


	default:
		output = new ConstantPropAnalysisFlow(inFlow);
		break;
	}
	return output;
}

ConstantPropAnalysisFlow* ConstantPropAnalysis::returnTop() {
	ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow(TOP);

	return f;
}

Flow * ConstantPropAnalysis::initialize() {
	return new ConstantPropAnalysisFlow(BOTTOM);
}


ConstantPropAnalysisFlow* ConstantPropAnalysis::runCastInst(
		ConstantPropAnalysisFlow* in, Instruction* instruction) {
      errs()<< "Hello *ConstantPropAnalysis::runFCASTInst" << '\n';
	ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow(in);
	map<string, float> value;
	Value *retVal = instruction;
	string regName = retVal->getName();
	 CastInst *castInst = dyn_cast<CastInst>(instruction);


	Value* rightOp = instruction->getOperand(0); //get the right Operand


	if (!dyn_cast<Constant>(retVal)) {

		if (!dyn_cast<Constant>(rightOp)) {
			if (f->value.find(rightOp->getName()) != f->value.end()){
				float rightVal = f->value.find(rightOp->getName())->second;
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();

				Type* ty = castInst->getDestTy();

				if (ty->isDoubleTy())
					rightVal = (float) rightVal;
				else if(ty->isFloatingPointTy())
					rightVal = (float) rightVal;
				else if (ty->isIntegerTy()){
					rightVal = (int) rightVal;
				}

				value[retVal->getName()] = rightVal;

				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;
			}

		} else {

			if (ConstantFP *cfp = dyn_cast<ConstantFP>(rightOp)) {

				float rightVal = cfp->getValueAPF().convertToFloat();
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				value[retVal->getName()] = rightVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;
			} else if (ConstantInt *cfp = dyn_cast<ConstantInt>(rightOp)) {
				float rightVal = cfp->getZExtValue();
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				value[retVal->getName()] = rightVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;

			}

		}

	}
	return f;

}

float ConstantPropAnalysis::computeOp(float leftVal, float rightVal,
		unsigned opcode) {

	float val = 0;
	int ASHRVAL, ASHRMASK;
	switch (opcode) {

	case Instruction::Add:
	case Instruction::FAdd:
		val = leftVal + rightVal;
		break;
	case Instruction::Sub:
	case Instruction::FSub:
		val = leftVal - rightVal;
		break;
	case Instruction::FDiv:
	case Instruction::SDiv:
		val = leftVal / rightVal;
		break;
	case Instruction::FMul:
	case Instruction::Mul:
		val = leftVal * rightVal;
		break;
	case Instruction::FRem:
	case Instruction::SRem:
		val = (int) leftVal % (int) rightVal;
		break;
	case Instruction::Shl:
		val = (int) leftVal << (int) rightVal;
		break;
	case Instruction::LShr:
		val = (int) leftVal >> (int) rightVal;
		break;
	case Instruction::AShr:
		ASHRMASK = (int)leftVal;
		ASHRMASK &= 0x80000000;
		ASHRVAL = (int)leftVal;
		ASHRVAL &= 0x7fffffff;
		ASHRMASK |=( ASHRVAL >> (int) rightVal);
		val = (int)ASHRMASK;
		break;
	}

	return val;

}

ConstantPropAnalysisFlow* ConstantPropAnalysis::runPhiInst(
		ConstantPropAnalysisFlow* in, Instruction* instruction) {
     errs()<< "Hello *ConstantPropAnalysis::runPhiInst" << '\n';
	ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow(in);
	Value *leftOp = instruction->getOperand(0);
	Value *rightOp = instruction->getOperand(1);
	map<string, float> value;
	Value *K = instruction;
	string regName = K->getName();


	if ((f->value.find(leftOp->getName()) != f->value.end())
			&& (f->value.find(rightOp->getName()) != f->value.end())) {

		float leftVal = f->value.find(leftOp->getName())->second;
		float rightVal = f->value.find(rightOp->getName())->second;
		errs() << "leftVal: " << leftVal << "rightVal" << rightVal << "\n";

		if (leftVal == rightVal){

			float resVal = leftVal;
			ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
			value[K->getName()] = resVal;
			f_->value = value;
			ConstantPropAnalysisFlow* tmp =
					static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
			delete f_;
			delete f;
			f = tmp;
		}

	}

	return f;
}

ConstantPropAnalysisFlow* ConstantPropAnalysis::runFOpInst(
		ConstantPropAnalysisFlow* in, Instruction* instruction,
		unsigned opcode) {
    errs()<< "Hello *ConstantPropAnalysis::runFOpInst" << '\n';
	ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow(in);
	Value *leftOp = instruction->getOperand(0);
	Value *rightOp = instruction->getOperand(1);
	map<string, float> value;
	Value *K = instruction;
	string regName = K->getName();

	if (ConstantFP *CILeft = dyn_cast<ConstantFP>(leftOp)) {

		if (ConstantFP *CIRight = dyn_cast<ConstantFP>(rightOp)) {


			float leftVal = CILeft->getValueAPF().convertToFloat();
			float rightVal = CIRight->getValueAPF().convertToFloat();

			float resVal = computeOp(leftVal, rightVal, opcode);

			ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();

			value[K->getName()] = resVal;
			f_->value = value;
			ConstantPropAnalysisFlow* tmp =
					static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
			delete f_;
			delete f;
			f = tmp;
		} else {

			if (f->value.find(rightOp->getName()) == f->value.end()) {

			}

			else {

				float leftVal = CILeft->getValueAPF().convertToFloat();
				float rightVal = f->value.find(rightOp->getName())->second;

				float resVal = computeOp(leftVal, rightVal, opcode);

				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();

				value[K->getName()] = resVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;
			}
		}
	} else {
		
		if (ConstantFP *CIRight = dyn_cast<ConstantFP>(rightOp)) {

			if (f->value.find(leftOp->getName()) == f->value.end()) {

			} else {
				

				float leftVal = f->value.find(leftOp->getName())->second;
				float rightVal = CIRight->getValueAPF().convertToFloat();
				float resVal = computeOp(leftVal, rightVal, opcode);
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				value[K->getName()] = resVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;
			}
		} else {

			if ((f->value.find(leftOp->getName()) == f->value.end())
					| (f->value.find(rightOp->getName()) == f->value.end())) {

			} else {
				float leftVal = f->value.find(leftOp->getName())->second;

				float rightVal = f->value.find(rightOp->getName())->second;
				float resVal = computeOp(leftVal, rightVal, opcode);
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				
				value[K->getName()] = resVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;

			}

		}

	}
	return f;
}

ConstantPropAnalysisFlow* ConstantPropAnalysis::runOpInst(
		ConstantPropAnalysisFlow* in, Instruction* instruction,
		unsigned opcode) {
       errs()<< "Hello *ConstantPropAnalysis::runOpInst" << '\n';
	ConstantPropAnalysisFlow* f = new ConstantPropAnalysisFlow(in);
	Value *leftOp = instruction->getOperand(0);
	Value *rightOp = instruction->getOperand(1);
	map<string, float> value;
	Value *K = instruction;
	string regName = K->getName();
    
	if (ConstantInt *CILeft = dyn_cast<ConstantInt>(leftOp)) {
		 errs()<< "*CILeft = dyn_cast<ConstantInt>(leftOp)" << '\n';

		if (ConstantInt *CIRight = dyn_cast<ConstantInt>(rightOp)) {
            errs()<< "*CIRight = dyn_cast<ConstantInt>(rightOp)" << '\n';
			float leftVal = CILeft->getZExtValue();
			float rightVal = CIRight->getZExtValue();

			float resVal = computeOp(leftVal, rightVal, opcode);

			ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
			value[K->getName()] = resVal;
			f_->value = value;
			ConstantPropAnalysisFlow* tmp =
					static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
			delete f_;
			delete f;
			f = tmp;
		} else {
			errs()<< "!*CIRight = dyn_cast<ConstantInt>(rightOp) " << '\n';
			if (f->value.find(rightOp->getName())!= f->value.end()) {

				float leftVal = CILeft->getZExtValue();
				float rightVal = f->value.find(rightOp->getName())->second;
				float resVal = computeOp(leftVal, rightVal, opcode);

				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				value[K->getName()] = resVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;
			}
		}
	} else {
		  errs()<< "!*CIRight = dyn_cast<ConstantInt>(lefttOp)" << '\n';
		if (ConstantInt *CIRight = dyn_cast<ConstantInt>(rightOp)) {
             
			if (f->value.find(leftOp->getName()) != f->value.end()) {
				float leftVal = f->value.find(leftOp->getName())->second;
				float rightVal = CIRight->getZExtValue();
				float resVal = computeOp(leftVal, rightVal, opcode);
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				value[K->getName()] = resVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;
			}
		} else {

			if ((f->value.find(leftOp->getName()) != f->value.end())
					&& (f->value.find(rightOp->getName()) != f->value.end())) {
				float leftVal = f->value.find(leftOp->getName())->second;

				float rightVal = f->value.find(rightOp->getName())->second;
				float resVal = computeOp(leftVal, rightVal, opcode);
				ConstantPropAnalysisFlow* f_ = new ConstantPropAnalysisFlow();
				value[K->getName()] = resVal;
				f_->value = value;
				ConstantPropAnalysisFlow* tmp =
						static_cast<ConstantPropAnalysisFlow*>(f_->join(f));
				delete f_;
				delete f;
				f = tmp;

			}

		}

	}
	return f;
}

void ConstantPropAnalysis::print(raw_ostream &OS) {

    for (unsigned int i = 0; i < CFGNodes.size() ; i++) {
        this->printHelper(OS,this->CFGNodes[i]);
        if(i+1 < CFGNodes.size()) {
            OS << "\n";
        }
            OS << "\n";
    }
}


void ConstantPropAnalysis::printHelper(raw_ostream &OS, LatticeNode* node) {
    
	OS << "representation : " << *(node->inst) << "\n";
	OS << "#Edge incoming" << "\n";
    for (unsigned int i = 0 ; i < node->incoming.size() ; i++) {
 
		ConstantPropAnalysisFlow * temp = (ConstantPropAnalysisFlow * )node->incoming[i]->flow;
		OS << temp->arrowList() << "\n";

    }
	OS << "\n";
	
 	OS << "#Edge outcoming" << "\n";
    for (unsigned int i = 0 ; i < node->outgoing.size() ; i++) {

		ConstantPropAnalysisFlow * temp = (ConstantPropAnalysisFlow * )node->outgoing[i]->flow;
		OS<<temp->arrowList()<<"\n";
 
    }

}





ConstantPropAnalysis::ConstantPropAnalysis(Function & F) :
		WorkList() {
	this->functionName = F.getName();
	CFGmaker(F);
}
