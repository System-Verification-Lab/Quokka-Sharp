DIR=./algorithm/eq_bench/table/main

option="${1}"

case ${option} in
    "gm")
    for file in "$DIR"/opt/*
    do
        base_name=$(basename ${file})
        base_name="${base_name%.*.*.*}"
        echo $base_name
            python3 gatemissing.py "$file" "$DIR"/gm/"$base_name".qasm.gm.qasm 130
    done
    ;;
    "fp")
    echo "123"
    for file in "$DIR"/opt/*
    do
        base_name=$(basename ${file})
        base_name="${base_name%.*.*.*}"
        echo $base_name
            python3 flip.py "$file" "$DIR"/flip/"$base_name".qasm.fp.qasm 130
    done
    ;;
    "ps")
    echo "123"
    for file in "$DIR"/opt/*
    do
        base_name=$(basename ${file})
        base_name="${base_name%.*.*.*}"
        echo $base_name
            python3 phaseshift.py "$file" "$DIR"/shift5/"$base_name".qasm.ps5.qasm 130 0.00001
            python3 phaseshift.py "$file" "$DIR"/shift10/"$base_name".qasm.ps10.qasm 130 0.0000000001
    done
    ;;
esac
