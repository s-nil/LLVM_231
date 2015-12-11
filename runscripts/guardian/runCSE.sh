#!/usr/bin/env bash

pass="CSEAnalysisGuardian"

bench_path=$1

#awk F "/" means seperated by /, print last column
bench=` echo $bench_path | awk -F "/" '{print $NF}'`
echo $bench
echo $bench_path
cd $bench_path
clang -O0 -emit-llvm -c $bench_path/$bench.cpp -o $bench_path/$bench.bc

llvm-dis $bench_path/$bench.bc

#use 231.so to generate .bc
#echo $OUTPUTLOGS/$bench.availableexpr.log
mkdir $OUTPUTLOGS/$bench
#rm $OUTPUTLOGS/$bench/$availableexpr.log
opt -load $LLVMLIB/CSE231.so -$pass < $bench.bc -analyze > $OUTPUTLOGS/$bench/$bench.availableexpr.log
#cat $OUTPUTLOGS/$bench.availableexpr.log

#output bc to ll for you check
opt -load $LLVMLIB/CSE231.so -$pass < $bench.bc > $OUTPUTLOGS/$bench/$bench.availableexpr.bc
llvm-dis $OUTPUTLOGS/$bench/$bench.availableexpr.bc

#copy the original cpp file
cp $bench_path/$bench.cpp $OUTPUTLOGS/$bench/$bench.cpp

#draw graph
#python ${CSE231ROOT}/runscripts/drawGraph/artisan.py $OUTPUTLOGS/$bench/$bench.availableexpr.log
#runthis
#./runscripts/runavailableexpr.sh P2test/availableexprAnalysisSimple




#back to your place
cd -