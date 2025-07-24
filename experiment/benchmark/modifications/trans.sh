for file in ../algorithm/origin/*.qasm
do
    echo "Processing $file"
    python3 qasm_trans.py "$file"
done

