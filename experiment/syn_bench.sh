#!/bin/bash

tool_path="../../d4v2/build/d4 -m max#sat --maxsharpsat-option-and-dig false --float 1 -i"
eq_tool_path="../../GPMC/bin/gpmc -mode=1"
path=$PWD/benchmark

dirs=(
"random/rand_small_circs"
# "algorithm"
# "random/randqubitscale"
# "random/randdepscale"
)


echo -e -n "\nbasic_tests:\t"
for i in ./basic_tests/*; do
    # echo
    # echo "syn_run: i=$i"
    echo -n "/"
    python3 syn_run.py "$tool_path" "$i" "$eq_tool_path" >&1;
done
echo -e "\n"

for i in "${dirs[@]}"; do
    echo -e -n "\n$i:\t"
    DIR=$path/"$i"
    for file in $DIR/origin/*; do
        base_name=$(basename ${file})
        # echo
        # echo "syn_run: file=$file"
        echo -n "/"
        python3 syn_run.py "$tool_path" "$file" "$eq_tool_path" >&1;
    done
done

echo -e "\n"
