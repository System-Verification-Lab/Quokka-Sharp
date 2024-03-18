#!/bin/bash

tool_path=/Users/meij/GPMC/bin/gpmc
path=$PWD/benchmark

dirs=(
"random/randqubitscale"
"random/randdepscale"
"algorithm"
)

options=(
"opt"
"gm"
"fp"
"ps"
)

TIMEOUT=300

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    for option in "${options[@]}"; do
         case ${option} in
            "opt")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
            gtimeout "$TIMEOUT" python3 eq_run.py "$tool_path" "$file" "$DIR"/opt/"$base_name".opt.qasm
            done
            ;;
            "gm")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
            gtimeout "$TIMEOUT" python3 eq_run.py "$tool_path" "$file" "$DIR"/gm/"$base_name".gm.qasm
            done
            ;;
            "fp")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
                gtimeout "$TIMEOUT" python3 eq_run.py "$tool_path" "$file" "$DIR"/flip/"$base_name".fp.qasm
            done
            ;;
            "ps")
            for file in $path/"$i"/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
                gtimeout "$TIMEOUT" python3 eq_run.py "$tool_path" "$file" "$DIR"/shift4/"$base_name".ps4.qasm
                gtimeout "$TIMEOUT" python3 eq_run.py "$tool_path" "$file" "$DIR"/shift7/"$base_name".ps7.qasm
            done
            ;;
        esac
    done
done
