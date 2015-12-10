#!/usr/bin/env bash



bench_path=$1

#awk F "/" means seperated by /, print last column
bench=` echo $bench_path | awk -F "/" '{print $NF}'`
echo $bench
echo $bench_path
cd $OUTPUTLOGS/$bench

#dig the source
python ${CSE231ROOT}/P2/artisan/artisan.py $OUTPUTLOGS/$bench/$bench.pointer.log

#back to your place
cd -
