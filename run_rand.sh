#!/bin/bash

# QUBIT_COUNTS="30 40 50 60 70 80 90 100 110 120 130 140"
# DEPTHS="30 40 50"

QUBIT_COUNTS="50 60 70"
DEPTHS="10 20 30 40 50 60 70"
SEEDS="7347 4842 1788 5178 3923
         130 1077 1815 7455 801"

for seed in $SEEDS; do
    for qubit in $QUBIT_COUNTS; do
        for depth in $DEPTHS; do
            python3 random_circ_qasm.py randdepscale ${qubit} ${depth} .25 ${seed}
        done
    done
done
