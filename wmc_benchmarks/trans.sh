for file in ./MQTBench/*.qasm
do
    python3 qasm_trans.py "$file"
done

