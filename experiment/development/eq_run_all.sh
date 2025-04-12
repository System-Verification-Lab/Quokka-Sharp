#!/bin/bash

path=$PWD/../benchmark
# path=$PWD/shortened_files

dirs=(
"algorithm"
# "random/randqubitscale"
# "random/randdepscale"
)

options=(
# "opt"
"gm"
# "fp"
# "ps"
)

export TIMEOUT=300

# echo -e -n "\nbasic_tests:\t"
# for i in ./basic_tests/*; do
#     echo "sim_run: $i"
#     # echo -n "/"
#     python3 eq_wmc.py "$i" "$i" >&1;
# done
# echo -e "\n"

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    # echo -e "$i:"
    for option in "${options[@]}"; do
        # echo -n -e "\t$option:\t"
        # echo -e "\t$option:\t"
         case ${option} in
            "opt")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_wmc.py: $base_name"
                # echo -n "/"
                python3 eq_wmc.py "$file" "$DIR"/opt/"$base_name".opt.qasm >&1;
            done
            ;;
            "gm")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_wmc.py: $base_name"
                # echo -n "/"
                python3 eq_wmc.py "$file" "$DIR"/gm/"$base_name".gm.qasm >&1; 
            done
            ;;
            "fp")
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_wmc.py: $base_name"
                # echo -n "/"
                python3 eq_wmc.py "$file" "$DIR"/flip/"$base_name".fp.qasm >&1;
            done
            ;;
            "ps")
            for file in $path/"$i"/origin/*
            do
                base_name=$(basename ${file})
                # echo "eq_wmc.py: $base_name"
                # echo -n "/"
                python3 eq_wmc.py "$file" "$DIR"/shift4/"$base_name".ps4.qasm >&1;
                # python3 eq_wmc.py "$file" "$DIR"/shift7/"$base_name".ps7.qasm >&1;
            done
            ;;
        esac
        echo -e "\n"
    done
    echo -e "\n"
done
echo -e "\n"
