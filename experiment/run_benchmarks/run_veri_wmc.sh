#!/bin/bash

# arg1: basis 'comp' or 'pauli'
# arg2: timeout in seconds (300 = 5 minutes)

export TIMEOUT=$2
python3 './run_veri.py' '../benchmark/algorithm/origin/qwalk-v-chain_nativegates_ibm_qiskit_opt0_5.qasm'  -pre {4:0} -post {4:0} -b $1;
