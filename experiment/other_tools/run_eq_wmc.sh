#!/bin/bash

export TIMEOUT=6

# arg1: file with all filepaths to run
# arg2: basis 'com' or 'pauli'

while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.opt.qasm' -b $2 >&1;
done < "$1"

echo >&1

while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.gm.qasm' -b $2 >&1;
done < "$1"

echo >&1

while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/flip/'$line'.fp.qasm' -b $2 >&1;
done < "$1"

echo >&1

while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/shift4/'$line'.ps4.qasm' -b $2 >&1;
done < "$1"
