#!/usr/bin/env bash

pass="pointerAnalysisOptimization"

bench_path=$1

#awk F "/" means seperated by /, print last column
bench=` echo $bench_path | awk -F "/" '{print $NF}'`
echo $bench
echo $bench_path
cd $bench_path
clang -O0 -emit-llvm -c $bench_path/$bench.cpp -o $bench_path/$bench.bc

llvm-dis $bench_path/$bench.bc

#use 231.so to generate .bc
echo $OUTPUTLOGS/$bench.pointer.log
touch $OUTPUTLOGS/$bench.pointer.log
opt -load $LLVMLIB/CSE231.so -$pass < $bench.bc -analyze >> $OUTPUTLOGS/$bench.pointer.log
#cat $OUTPUTLOGS/$bench.pointer.log

#output bc to ll for you check
opt -load $LLVMLIB/CSE231.so -$pass < $bench.bc > $OUTPUTLOGS/$bench.pointer.bc
llvm-dis $OUTPUTLOGS/$bench.pointer.bc
#runthis
#./runscripts/runPointer.sh P2test/pointerAnalysisSimple




#back to your place
cd -
