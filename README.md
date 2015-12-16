# LLVM_231
![Build status](https://img.shields.io/badge/build-pass-green.svg) 
![progress](https://img.shields.io/badge/progress-All%20Done-green.svg)
![Emotion](https://img.shields.io/badge/emotion-Happy-red.svg)

LLVM project for CSE 231Fall15

#Project 2
Project 2 has 4 parts.

|Analysis | Use of Analysis Results|
|----------------------- |---------------------------|
|Constant Propagation	 | Optimization: Constant Folding, Branch Folding|
|Available Expressions	 |Optimization: Common Sub-expression Elminiation|
|Range Analysis |	Bug finder: Warn programmer if can't show array access in bounds|
|Intra-Procedural Pointer Analysis	|Catalyst: Improve all other analyses using this information|


For this part, we modulaize three sections for implementation of this project. They are:

* Guardian
* Artisan
* Miner


## Work Flow:
![flow](https://cloud.githubusercontent.com/assets/6581499/11835593/a04011a4-a389-11e5-9779-f75b22db2fe4.png)

* ### Guardian
 Guardian is the analysis for the program. For example, for pointer analysis, it will run Anderson al- gorithm based on IR of code.
* ### Artisan
 Artisan is a wrapper for Guardian result. It will display in text or graphic representation. For example, in pointer analysis, it gives the the graphic represen- tation of the pointer relation with arrows.
 For example, for pointer analysis, it gives a intutive graph represtation of pointer analysis.
 ![artisan for pointer](https://cloud.githubusercontent.com/assets/6581499/11835714/625193ee-a38a-11e5-98c4-b8d0876b5638.png)

* ### Miner
Mineristheoptimizer.AccordingtotheGuardian's result, it does the optimization on the source file and output optimized file.
 ![Miner work resuilt](https://cloud.githubusercontent.com/assets/6581499/11835760/a576f31c-a38a-11e5-99dc-aa6be1aff961.png)



## Lattice Structure

* LatticeNode: 
	* the node in the lattic
* LatticeEdge: 
	* the edge connecting each node
* Flow: 
	* the information stored in each edge
	
![Lattice Structure](https://cloud.githubusercontent.com/assets/6581499/11835806/f2dbd7da-a38a-11e5-826d-85c840394cd7.png)



## Run the 
### environment
```
source startenv.sh

#install artisan library
apt-get install python-gtk2 graphviz
sudo pip install xdot
```

### run script
To save your life, we prepare the runscript for you to test the test case in `P2`.
```
/runscript/P2runAll.sh
```

An simple example to run the Guardian -> Artisan -> Miner
```
#guardian
./runscripts/guardian/runPointer.sh ${CSE231ROOT}/P2test/optimizerSimple

#artisan
./runscripts/artisan/draw.sh ${CSE231ROOT}/P2test/optimizerSimple

#miner
./runscripts/miner/dig.sh ${CSE231ROOT}/P2test/optimizerSimple

```

# Project 1
There are three parts in Paroject 1
* Part 1: Collecting Static Instruction Counts
* Part 2: Collecting Dynamic Instruction Counts
* Part 3: Profiling Branch Bias

## source file are at 
* passes:
```
/llvm/src/lib/CSE231
```
* helper function
```
/extra/instrument
```
*benchmark
```
/extra/benchmarks/

## start environment
```
source startenv.sh
```

## complie library
```
make llvm
```
It compiles the code of project into CSE231.so

## run script
we prepare the runscript for you.
If you want to run section `x`
```
/runscripts/run-sectionx.sh
```

result will be in the `logs`.


