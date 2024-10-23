#!/bin/bash

path=$PWD/benchmark

dirs=(
#"random/randqubitscale"
#"random/randdepscale"
#"algorithm"
"add"
)

options=(
"opt"
"gm"
"fp"
"ps"
)

TIMEOUT=300

Default_or_DD='default'

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    for option in "${options[@]}"; do
         case ${option} in
            "opt")
            echo "optimized cases:"
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
            gtimeout "$TIMEOUT" python3 qcec.py "$file" "$DIR"/opt/"$base_name".opt.qasm ${Default_or_DD}
            done
            ;;
            "gm")
            echo "gm cases:"
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
            gtimeout "$TIMEOUT" python3 qcec.py  "$file" "$DIR"/gm/"$base_name".gm.qasm ${Default_or_DD}
            done
            ;;
            "fp")
            echo "fp cases:"
            for file in $DIR/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
                gtimeout "$TIMEOUT" python3 qcec.py  "$file" "$DIR"/flip/"$base_name".fp.qasm ${Default_or_DD}
            done
            ;;
            "ps")
            echo "ps cases:"
            for file in $path/"$i"/origin/*
            do
                base_name=$(basename ${file})
                echo $base_name
                gtimeout "$TIMEOUT" python3 qcec.py  "$file" "$DIR"/shift4/"$base_name".ps4.qasm ${Default_or_DD}
                gtimeout "$TIMEOUT" python3 qcec.py  "$file" "$DIR"/shift7/"$base_name".ps7.qasm ${Default_or_DD}
            done
            ;;
        esac
    done
done
