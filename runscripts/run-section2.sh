#!/usr/bin/env bash

pass="dynamic_count"
helper_function="dynamic_helper"

bench_path=$1

#awk F "/" means seperated by /, print last column
bench=` echo $bench_path | awk -F "/" '{print $NF}'`
HELPER_PATH="$INSTRUMENTATION/dynamic"

clang -O0 -emit-llvm -c $HELPER_PATH/$helper_function.cpp -o $HELPER_PATH/$helper_function.bc

cd $bench_path

#use 231.so to generate .bc
opt -load $LLVMLIB/CSE231.so -$pass < $bench.bc > $bench.out.bc 

#llvm link two bc 
llvm-link $BENCHMARKS/$bench/$bench.out.bc $HELPER_PATH/$helper_function.bc -o $bench.linked.bc

#out bc to o, o to executable file
llc -filetype=obj $bench.linked.bc -o=$bench.o
g++ $bench.o -o $bench.exe

./$bench.exe 2> $OUTPUTLOGS/$bench.dynamic.log

#back to your place
cd -
