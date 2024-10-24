#!/bin/bash

export TIMEOUT=$3

# arg1: file with all filepaths to run
# arg2: basis 'com' or 'pauli'
# arg3: timeout in seconds (300 = 5 minutes)

echo "results of Tables 2:" >&1
while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b $2 >&1;
done < "$1"

echo >&1

echo "results of Tables 3:" >&1
while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/shift4/'$line'.qasm.ps4.qasm' -b $2 >&1;
done < "$1"

echo >&1

echo "results of Tables 4:" >&1
while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/flip/'$line'.qasm.fp.qasm' -b $2 >&1;
done < "$1"

echo >&1

echo "results of Tables 5:" >&1
while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b $2 >&1;
done < "$1"
