#!/bin/bash

tool_path=/Users/meij/GPMC/bin/gpmc
path=$PWD/benchmark

dirs=(
"random/randqubitscale"
"random/randdepscale"
"algorithm"
)


TIMEOUT=300

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    for file in $DIR/origin/*; do
        gtimeout "$TIMEOUT" python3 sim_run.py "$tool_path" "$file"
    done
done
