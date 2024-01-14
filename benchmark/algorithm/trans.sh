for file in ./mqtbench/*
do
    python3 qasm_trans.py "$file" > result.o
done

