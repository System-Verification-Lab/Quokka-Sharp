##!/bin/bash

# Little bit harcd to install Quasimodo (some other package is in PIP)
#export PYTHONPATH=$HOME/Projects/Quasimodo/python_pkg:$PYTHON_PATH # for libquasimodo.so
#export DYLD_LIBRARY_PATH=$HOME/Projects/Quasimodo/python_pkg:$DYLD_LIBRARY_PATH #for python package

for file in ./benchmark/algorithm/eq_bench/origin/*
do
    base_name=$(basename ${file})
    base_name="${base_name%.*}"
    echo "$base_name"
    echo GPMC:
    gtimeout 10 python3 check_eq.py "$file" ./benchmark/algorithm/eq_bench/opt/"$base_name".qasm.opt.qasm
    echo QCEC:
    gtimeout 10 python3 qcec.py "$file" ./benchmark/algorithm/eq_bench/opt/"$base_name".qasm.opt.qasm
    echo
done
