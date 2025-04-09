#!/bin/bash

export TIMEOUT=$3

# arg1: file with all filepaths to run
# arg2: basis 'comp' or 'pauli'
# arg3: timeout in seconds (300 = 5 minutes)

# echo "results of Tables 2:" >&1
# while read -r line; do
#     python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b $2 >&1;
# done < "$1"

# echo >&1

# echo "results of Tables 3:" >&1
# while read -r line; do
#     python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/shift4/'$line'.qasm.ps4.qasm' -b $2 >&1;
# done < "$1"

# echo >&1

# echo "results of Tables 4:" >&1
# while read -r line; do
#     python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/flip/'$line'.qasm.fp.qasm' -b $2 >&1;
# done < "$1"

# echo >&1

# echo "results of Tables 5:" >&1
# while read -r line; do
#     python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b $2 >&1;
# done < "$1"

# while read -r line; do
#     sed -i 's|rz(1.0\*pi)|z|g' '../benchmark/algorithm/origin/'$line'.qasm'
#     sed -i 's|rz(pi/2)|s|g' '../benchmark/algorithm/origin/'$line'.qasm'
#     sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' '../benchmark/algorithm/origin/'$line'.qasm'
#     sed -i 's|rz(1.0\*pi)|z|g' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm'
#     sed -i 's|rz(pi/2)|s|g' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm'
#     sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm'
#     sed -i 's|rz(pi/2)|s|g' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm'
#     sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm'
#     sed -i 's|rz(1.0\*pi)|z|g' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm'
# done < "$1"

echo "new results origin vs opt:" >&1
while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b 'comp' >&1;
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b 'pauli' >&1;
    ../../../SliQEC/SliQEC --circuit1 '../benchmark/algorithm/origin/'$line'.qasm' --circuit2 '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' >&1;
done < "$1"

echo "new results origin vs gm:" >&1
while read -r line; do
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b 'comp' >&1;
    python3 './eq_wmc.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b 'pauli' >&1;
    ../../../SliQEC/SliQEC --circuit1 '../benchmark/algorithm/origin/'$line'.qasm' --circuit2 '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' >&1;
done < "$1"
