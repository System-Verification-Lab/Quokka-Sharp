#!/bin/bash

for file in ./algorithm/eq_bench/origin/*
do
    base_name=$(basename ${file})
    echo "$base_name"
    python3 zxopt.py "$file" ./algorithm/eq_bench/opt/"$base_name".opt.qasm
done
