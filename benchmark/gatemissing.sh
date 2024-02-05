for file in ./random/qubitscale/*
do
    base_name=$(basename ${file})
    python3 gatemissing.py "$file" ./random/qubitgm/"$base_name" 130
done

