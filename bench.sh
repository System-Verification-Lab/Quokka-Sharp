##!/bin/bash

# Little bit harcd to install Quasimodo (some other package is in PIP)
#export PYTHONPATH=$HOME/Projects/Quasimodo/python_pkg:$PYTHON_PATH # for libquasimodo.so
#export DYLD_LIBRARY_PATH=$HOME/Projects/Quasimodo/python_pkg:$DYLD_LIBRARY_PATH #for python package

echo GPMC:
python qc2cnf.py $1
gpmc -mode=1 $1.cnf | grep "CPU\|log10"

echo
echo Quasimodo:
python qasm2cflobdd.py $1 1
python $1.quasimodo.py

echo