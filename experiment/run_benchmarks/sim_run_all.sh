path=../experiment

dirs=(
# "random/randqubitscale"
# "random/randdepscale" 
"algorithm"
)

export TIMEOUT=300

# for file in $path/basic_tests/*; do
#     python3 sim_run_all.py "$file"
# done

# for i in "${dirs[@]}"; do
#     DIR=$path/benchmark/"$i"
#     for file in $DIR/origin/*; do
#         python3 sim_run_all.py "$file"
#     done
# done

for i in "${dirs[@]}"; do
    DIR=$path/benchmark/"$i"
    for file in $DIR/origin/*; do
        python3 sim_run_all.py "$file"
    done
done