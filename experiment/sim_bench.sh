#!/bin/bash

reg_tool_path="/Users/dekel/Library/CloudStorage/OneDrive-UniversiteitLeiden/Formal_Work/project/GPMC_bin/gpmc_old -mode=1"
com_tool_path="/Users/dekel/Library/CloudStorage/OneDrive-UniversiteitLeiden/Formal_Work/project/GPMC_bin/gpmc -mode=1"
path=$PWD/benchmark
# path=$PWD/shortened_files

dirs=(
"random/randqubitscale"
"random/randdepscale"# 
"algorithm"
)


TIMEOUT=300

gtimeout "$TIMEOUT" python3 sim_run.py "$reg_tool_path" "$com_tool_path" "$PWD/shortened_files/basic_tests.txt" || { 
                    echo "Error: \\n python3 sim_run.py \"$reg_tool_path\" \"$com_tool_path\" \"$file\"";
                    exit 1;}

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    for file in $DIR/origin/*; do
        gtimeout "$TIMEOUT" python3 sim_run.py "$reg_tool_path" "$com_tool_path" "$file" || { 
                    echo "Error: python3 sim_run.py \"$reg_tool_path\" \"$com_tool_path\" \"$file\"";
                    exit 1;}
    done
done
