for file in ./eq_bench/origin/*.qasm
do
    python3 qasm_trans.py "$file"
done

