#!/bin/bash

# It takes three arguments:
# arg1: file with all filepaths to run
# arg2: basis 'comp' or 'pauli'
# arg3: timeout in seconds (300 = 5 minutes)

export TIMEOUT=$3

echo "results of 3 (mid) and 8:" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b $2 >&1;
done < "$1"

echo >&1

echo "results of Table 3 (right) and 7:" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b $2 >&1;
done < "$1"

echo >&1

echo "results of Table 2 (right):" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/shift4/'$line'.qasm.ps4.qasm' -b $2 >&1;
done < "$1"

echo >&1

echo "results of Table 6:" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/flip/'$line'.qasm.fp.qasm' -b $2 >&1;
done < "$1"

echo >&1