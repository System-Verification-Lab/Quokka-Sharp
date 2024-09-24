path=/Users/meij/Desktop/coding/cliffordtmc/experiment/benchmark

dirs=(
# "random/randqubitscale"
# "random/randdepscale" 
"algorithm"
)
export TIMEOUT=5

for i in "${dirs[@]}"; do
    DIR=$path/"$i"
    for file in $DIR/origin/*; do
        python3.11 sim_run_all.py "$file"
    done
done