#!/bin/bash

path=`dirname $PWD`

dirs=(
"random/randqubitscale"
"random/randdepscale"
"algorithm"
)

for i in "${dirs[@]}"; do
    for file in $path/"$i"/origin/*; do
        base_name=$(basename ${file})
        python3 zxopt.py "$file" "$DIR"/opt/"$base_name".opt.qasm
        echo $base_name
    done
done
