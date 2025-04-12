#!/bin/bash

# arg1: file with all filepaths to run
# arg2: mesurment 'firstzero' or 'allzero'
# arg3: basis 'comp' or 'pauli'
# arg4: timeout in seconds (300 = 5 minutes)

export TIMEOUT=$4

while read -r line; do
    num="${line##*_}"
    zeros=$(printf '0%.0s' $(seq 1 $num))
    echo "amp $zeros" > tmp.obs
    ../../../SliQSim/SliQSim --sim_qasm '../benchmark/algorithm/origin/'$line'.qasm' --type 2 --obs_file tmp.obs --print_info >&1;
done < "$1"
