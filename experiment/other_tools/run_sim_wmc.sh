#!/bin/bash

export TIMEOUT=6

# arg1: file with all filepaths to run
# arg2: mesurment 'firstzero' or 'allzero'
# arg3: basis 'com' or 'pauli'

while read -r line; do
    python3 './sim_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' -m $2 -b $3 >&1;
done < "$1"
