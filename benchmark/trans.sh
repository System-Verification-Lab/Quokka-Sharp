for file in ./random/randqubitscale/opt/*.qasm
do
    python3 qasm_trans.py "$file"
done

