#!/bin/bash

reg_tool_path="/Users/dekel/Desktop/Formal_Work/project/GPMC_bin/gpmc_old -mode=1"
com_tool_path="/Users/dekel/Desktop/Formal_Work/project/GPMC_bin/gpmc -mode=1"
# path=$PWD/benchmark
path=$PWD/shortened_files

dirs=(
"algorithm"
# "random/randqubitscale"
# "random/randdepscale"
)

options=(
"opt"
# "gm"
# "fp"
# "ps"
)

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
                python3 eq_run.py "$reg_tool_path" "$com_tool_path" "$file" "$DIR"/opt/"$base_name".opt.qasm >&1;
            done
            ;;
            "gm")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$reg_tool_path" "$com_tool_path" "$file" "$DIR"/gm/"$base_name".gm.qasm >&1; 
            done
            ;;
            "fp")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$reg_tool_path" "$com_tool_path" "$file" "$DIR"/flip/"$base_name".fp.qasm >&1;
            done
            ;;
            "ps")
            for file in $path/"$i"/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_run.py: $base_name"
                echo -n "/"
                python3 eq_run.py "$reg_tool_path" "$com_tool_path" "$file" "$DIR"/shift4/"$base_name".ps4.qasm >&1;
                python3 eq_run.py "$reg_tool_path" "$com_tool_path" "$file" "$DIR"/shift7/"$base_name".ps7.qasm >&1;
            done
            ;;
        esac
    done
done
echo -e "\n"
