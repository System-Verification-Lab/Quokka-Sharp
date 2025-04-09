path=`dirname $PWD`

dirs=(
#"random/randqubitscale"
#"random/randdepscale"
"algorithm"
# "add"
)

options=(
"gm"
"fp"
"ps"
)


for i in "${dirs[@]}"; do
    for option in "${options[@]}"; do
        case ${option} in
            "gm")
            for file in $path/"$i"/opt/*
            do
                base_name=$(basename ${file})
                base_name="${base_name%.*.*.*}"
                if [ ! -f $path/"$i"/gm/"$base_name".qasm.gm.qasm ]; then
                    echo $base_name
                    python3 gatemissing.py "$file" $path/"$i"/gm/"$base_name".qasm.gm.qasm 130
                fi
            done
            ;;
            "fp")
            for file in $path/"$i"/opt/*
            do
                base_name=$(basename ${file})
                base_name="${base_name%.*.*.*}"
                if [ ! -f $path/"$i"/flip/"$base_name".qasm.fp.qasm ]; then
                    echo $base_name
                    python3 flip.py "$file" $path/"$i"/flip/"$base_name".qasm.fp.qasm 130
                fi
            done
            ;;
            "ps")
            for file in $path/"$i"/opt/*
            do
                base_name=$(basename ${file})
                base_name="${base_name%.*.*.*}"
                if [ ! -f $path/"$i"/shift4/"$base_name".qasm.ps4.qasm ]; then
                    echo $base_name
                    python3 phaseshift.py "$file" $path/"$i"/shift4/"$base_name".qasm.ps4.qasm 130 0.0001
                fi
                if [ ! -f $path/"$i"/shift7/"$base_name".qasm.ps7.qasm ]; then
                    echo $base_name
                    python3 phaseshift.py "$file" $path/"$i"/shift7/"$base_name".qasm.ps7.qasm 130 0.0000001
                fi
            done
            ;;
        esac
    done
done
