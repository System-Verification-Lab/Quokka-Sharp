#!/bin/bash

# This script runs eq_wmc.py on all files listed in the input file.
# It takes three arguments:
# arg1: file with all filepaths to run
# arg2: basis 'comp' or 'pauli'
# arg3: timeout in seconds (300 = 5 minutes)

export TIMEOUT=$3

while read -r line; do
    sed -i 's|rz(1.0\*pi)|z|g' '../benchmark/algorithm/origin/'$line'.qasm'
    sed -i 's|rz(pi/2)|s|g' '../benchmark/algorithm/origin/'$line'.qasm'
    sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' '../benchmark/algorithm/origin/'$line'.qasm'
    sed -i 's|rz(1.0\*pi)|z|g' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm'
    sed -i 's|rz(pi/2)|s|g' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm'
    sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm'
    sed -i 's|rz(pi/2)|s|g' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm'
    sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm'
    sed -i 's|rz(1.0\*pi)|z|g' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm'
done < "$1"

echo "new results origin vs opt:" >&1
while read -r line; do
    ../../../SliQEC/SliQEC --circuit1 '../benchmark/algorithm/origin/'$line'.qasm' --circuit2 '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' >&1;
done < "$1"

echo "new results origin vs gm:" >&1
while read -r line; do
    ../../../SliQEC/SliQEC --circuit1 '../benchmark/algorithm/origin/'$line'.qasm' --circuit2 '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' >&1;
done < "$1"
