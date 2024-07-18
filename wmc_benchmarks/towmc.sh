for file in /Users/meij/Desktop/coding/com_basis/Quokka-Sharp/experiment/benchmark/algorithm/origin/*.qasm
do
    base_name=$(basename ${file})
    echo "$base_name"
    python3.11 towmc.py "$file" ./AlgSingleMea/"$base_name".cnf
done

