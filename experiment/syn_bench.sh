#!/bin/bash

tool_path="../../d4v2/build/d4 -m max#sat -i"
path=$PWD/benchmark
# path=$PWD/shortened_files

dirs=(
"algorithm"
"random/randqubitscale"
"random/randdepscale"
)

options=(
"opt"
"gm"
"fp"
"ps"
)

echo -e -n "\nbasic_tests:\t"
for i in ./basic_tests/*; do
    # echo "sim_run: $i"
    echo -n "/"
    python3 syn_run.py "$tool_path" "$i" >&1;
done
echo -e "\n"

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    echo -e "$i:"
    for option in "${options[@]}"; do
        echo -n -e "\t$option:\t"
         case ${option} in
            "opt")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "syn_run.py: $base_name"
                echo -n "/"
                python3 syn_run.py "$tool_path" "$file" >&1;
            done
            ;;
            "gm")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "syn_run.py: $base_name"
                echo -n "/"
                python3 syn_run.py "$tool_path" "$file" >&1; 
            done
            ;;
            "fp")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "syn_run.py: $base_name"
                echo -n "/"
                python3 syn_run.py "$tool_path" "$file" >&1;
            done
            ;;
            "ps")
            for file in $path/"$i"/origin/*
            do
                base_name=$(basename ${file})
                # echo "syn_run.py: $base_name"
                echo -n "/"
                python3 syn_run.py "$tool_path" "$file" >&1;
                python3 syn_run.py "$tool_path" "$file" >&1;
            done
            ;;
        esac
        echo -e "\n"
    done
    echo -e "\n"
done
echo -e "\n"
