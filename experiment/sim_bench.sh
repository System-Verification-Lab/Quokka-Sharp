#!/bin/bash

tool_path="../../GPMC/bin/gpmc -mode=1"
path=$PWD/benchmark
# path=$PWD/shortened_files

dirs=(
"algorithm"
"random/randqubitscale"
"random/randdepscale"
)

echo -e -n "\nbasic_tests:\t"
for i in ./basic_tests/*; do
    # echo "sim_run: $i"
    echo -n "/"
    python3 sim_run.py "$tool_path" "$i" >&1;
done

for i in "${dirs[@]}"; do
    echo -e -n "\n$i:\t"
    DIR=$path/"$i"
    for file in $DIR/origin/*; do
        base_name=$(basename ${file})
        # echo "sim_run: $base_name"
        echo -n "/"
        python3 sim_run.py "$tool_path" "$file" >&1;
    done
done
echo -e "\n"
