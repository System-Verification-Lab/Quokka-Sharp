#!/bin/bash

# It takes three arguments:
# arg1: basis 'comp' or 'pauli'
# arg2: timeout in seconds (300 = 5 minutes)

export TIMEOUT=$2

echo "results of Table 1 (right):" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/shift4/'$line'.qasm.ps4.qasm' -b $1 >&1;
done < "./benchmarks_list_tab2_eq.txt"
echo >&1

echo "results of Table 2 (mid):" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b $1 >&1;
done < "./benchmarks_list_tab3.txt"
echo >&1

echo "results of Table 2 (right):" >&1
while read -r line; do
    python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b $1 >&1;
done < "./benchmarks_list_tab3.txt"
echo >&1

# echo "results of Table 6:" >&1
# while read -r line; do
#     python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/flip/'$line'.qasm.fp.qasm' -b $1 >&1;
# done < "./benchmarks_list_tab2_eq.txt"
# echo >&1

# echo "results of Table 7:" >&1
# while read -r line; do
#     python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/gm/'$line'.qasm.gm.qasm' -b $1 >&1;
# done < "./benchmarks_list_tab7+8.txt"
# echo >&1

# echo "results of Table 8:" >&1
# while read -r line; do
#     python3 './run_eq.py' '../benchmark/algorithm/origin/'$line'.qasm' '../benchmark/algorithm/opt/'$line'.qasm.opt.qasm' -b $1 >&1;
# done < "./benchmarks_list_tab7+8.txt"
# echo >&1