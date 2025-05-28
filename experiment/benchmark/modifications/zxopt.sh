#!/bin/bash

path=`dirname $PWD`

dirs=(
#"random/randqubitscale"
#"random/randdepscale"
"random/uniform"
# "random/TH_ratio"
# "algorithm"
# "add"
)

for i in "${dirs[@]}"; do
    DIR=$path/"$i"/
    if [ ! -d "$DIR"/opt ]; then
        mkdir "$DIR"/opt
    fi
    for file in $path/"$i"/origin/*; do
        base_name=$(basename ${file})
        if [ ! -f "$DIR"/opt/"$base_name".opt.qasm ]; then
            echo $base_name
            python3 zxopt.py "$file" "$DIR"/opt/"$base_name".opt.qasm
        fi
    done
done
