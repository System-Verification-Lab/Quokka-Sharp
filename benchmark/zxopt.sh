#!/bin/bash

for file in ./random/qubitscale/origin/*
do
    echo "$base_name"
    python3 zxopt.py "$file" ./benchmark/random/qubitscale/opt/"$file".opt.qasm
done