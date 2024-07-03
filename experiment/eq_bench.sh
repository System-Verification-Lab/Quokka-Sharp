#!/bin/bash

tool_path="/Users/dekel/Desktop/Formal_Work/project/GPMC_bin/gpmc -mode=1"
path=$PWD/benchmark
# path=$PWD/shortened_files

dirs=(
"algorithm"
# "random/randqubitscale"
# "random/randdepscale"
)

options=(
"opt"
# "gm"
"fp"
# "ps"
)
echo -e -n "\nbasic_tests:\t"
for i in ./basic_tests/*; do
    # echo "sim_run: $i"
    echo -n "/"
    python3 eq_run.py "$tool_path" "$i" "$i" "True" >&1;
done

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    echo -e "\n$i:"
    for option in "${options[@]}"; do
        echo -n -e "\n\t$option:\t"
         case ${option} in
            "opt")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$tool_path" "$file" "$DIR"/opt/"$base_name".opt.qasm "True" >&1;
            done
            ;;
            "gm")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$tool_path" "$file" "$DIR"/gm/"$base_name".gm.qasm "False" >&1; 
            done
            ;;
            "fp")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$tool_path" "$file" "$DIR"/flip/"$base_name".fp.qasm "False" >&1;
            done
            ;;
            "ps")
            for file in $path/"$i"/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$tool_path" "$file" "$DIR"/shift4/"$base_name".ps4.qasm "False" >&1;
                python3 eq_run.py "$tool_path" "$file" "$DIR"/shift7/"$base_name".ps7.qasm "False" >&1;
            done
            ;;
        esac
    done
done
echo -e "\n"
