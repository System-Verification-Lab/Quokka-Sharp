#!/bin/bash

# arg1: mesurment 'firstzero' or 'allzero'
# arg2: basis 'comp' or 'pauli'
# arg3: timeout in seconds (300 = 5 minutes)

export TIMEOUT=$3

echo "results of Table 1 (left):" >&1
while read -r line; do
    python3 './run_sim.py' '../benchmark/algorithm/origin/'$line'.qasm' -m $1 -b $2 >&1;
done < "./benchmarks_list_tab2_sim.txt"
echo >&1

echo "results of Table 2 (left):" >&1
while read -r line; do
    python3 './run_sim.py' '../benchmark/algorithm/origin/'$line'.qasm' -m $1 -b $2 >&1;
done < "./benchmarks_list_tab3.txt"
echo >&1