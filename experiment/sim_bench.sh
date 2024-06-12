#!/bin/bash

reg_tool_path="/Users/dekel/Library/CloudStorage/OneDrive-UniversiteitLeiden/Formal_Work/project/GPMC_bin/gpmc_old -mode=1"
com_tool_path="/Users/dekel/Library/CloudStorage/OneDrive-UniversiteitLeiden/Formal_Work/project/GPMC_bin/gpmc -mode=1"
path=$PWD/benchmark
# path=$PWD/shortened_files

dirs=(
"algorithm"
"random/randqubitscale"
"random/randdepscale"
)


TIMEOUT=400

echo "sim_run: basic_tests.txt"
python3 sim_run.py "$reg_tool_path" "$com_tool_path" "$PWD/basic_tests.txt" >&1;

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    for file in $DIR/origin/*; do
        base_name=$(basename ${file})
        echo "sim_run: $base_name"
        python3 sim_run.py "$reg_tool_path" "$com_tool_path" "$file" >&1;
    done
done
