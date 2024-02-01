for file in ./algorithm/eq_bench/origin/*.qasm
do
    base_name=$(basename ${file})
    python3 gatemissing.py "$file" ./algorithm/eq_bench/gm/"$base_name" 130
done

