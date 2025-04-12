#!/bin/bash

# This script runs syn_run.py on the cs circuit.
# arg1: file with all filepaths to run

tool_path="../../../d4v2/build/d4 -m max#sat --maxsharpsat-option-and-dig false --float 1 "
path=$PWD/benchmark

export TIMEOUT=$1

python3 run_syn.py "$tool_path" "../basic_tests/cs.qasm" >&1 ;
