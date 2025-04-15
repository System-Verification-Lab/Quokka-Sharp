#!/bin/bash

# This script runs syn_run.py on the cs circuit.
# arg1: file with all filepaths to run

export TIMEOUT=$1

python3 run_syn.py "../basic_tests/cs.qasm" -b "pauli" -f 1.0 >&1 ;
