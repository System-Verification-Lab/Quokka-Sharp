#!/bin/bash

# QUBIT_COUNTS="30 40 50 60 70 80 90 100 110 120 130 140"
# DEPTHS="30 40 50"

QUBIT_COUNTS="10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100"
DEPTHS="10 20 30"
#SEEDS="7347"
SEEDS="130"

for seed in $SEEDS; do
    for qubit in $QUBIT_COUNTS; do
        for depth in $DEPTHS; do
            python3 random_circ_qasm.py ./random/randqubitscale/origin ${qubit} ${depth} .1 ${seed}
        done
    done
done
