##!/bin/bash

# Little bit harcd to install Quasimodo (some other package is in PIP)
#export PYTHONPATH=$HOME/Projects/Quasimodo/python_pkg:$PYTHON_PATH # for libquasimodo.so
#export DYLD_LIBRARY_PATH=$HOME/Projects/Quasimodo/python_pkg:$DYLD_LIBRARY_PATH #for python package

DIR=./benchmark/algorithm/eq_bench
#DIR=./benchmark/random/randdepscale
#DIR=./benchmark/random/randqubitscale
#DIR=./benchmark/algorithm/eq_bench/wstate

for file in "$DIR"/opt/*
do
    base_name=$(basename ${file})
#    base_name="${base_name%.*}"
    echo "$base_name"
    echo GPMC:
    gtimeout 20 python3 check_eq2.py "$file" "$DIR"/opt/"$base_name"
#    gtimeout 20 python3 check_eq2.py "$file" "$DIR"/opt/"$base_name"
    echo QCEC:
    gtimeout 100 python3 qcec.py "$file" "$DIR"/opt/"$base_name"
    echo
done
