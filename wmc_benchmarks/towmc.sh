for file in ./MQTBench/*.qasm
do
    base_name=$(basename ${file})
    echo "$base_name"
    python3 towmc.py "$file" ./WMCBench/"$base_name".cnf
done

