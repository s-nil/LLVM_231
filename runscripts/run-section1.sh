#!/usr/bin/env bash

pass="CountStaticInstructions"

bench_path=$1

#awk F "/" means seperated by /, print last column
bench=` echo $bench_path | awk -F "/" '{print $NF}'`

cd $bench_path

#use 231.so to generate .bc
opt -load $LLVMLIB/CSE231.so -$pass < $bench.bc > $OUTPUTLOGS/$bench.static.log -analyze



#back to your place
cd -
