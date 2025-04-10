#!/bin/bash

mkdir -p results/

# arg1: file with all filepaths to run
# arg2: timeout in seconds (300 = 5 minutes)

# get sim test results for a sample of the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running sim check with allzero mesurment in pauli basis'
echo "results of Tables 1 of the README, coulmn Quokka\#(pauli)" > results/sim_wmc_allzero_pauli_results.txt
echo "" >> results/sim_wmc_allzero_pauli_results.txt
./run_sim_wmc.sh $1 allzero pauli   $2 >> results/sim_wmc_allzero_pauli_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running sim check with allzero mesurment in comp basis'
echo "results of Tables 1 of the README, coulmn Quokka\#(comp)" > results/sim_wmc_allzero_comp_results.txt
echo "" >> results/sim_wmc_allzero_comp_results.txt
./run_sim_wmc.sh $1 allzero comp    $2 >> results/sim_wmc_allzero_comp_results.txt

# date "+%Y-%m-%d %H:%M:%S"
# echo 'running sim check with firstzero mesurment in pauli basis'
# ./run_sim_wmc.sh $1 firstzero pauli $2 > results/sim_wmc_firstzero_pauli_results.txt

# date "+%Y-%m-%d %H:%M:%S"
# echo 'running sim check with firstzero mesurment in comp basis'
# ./run_sim_wmc.sh $1 firstzero comp  $2 > results/sim_wmc_firstzero_comp_results.txt


# get eq test results for a sample of the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running eq check in pauli basis'
echo "results of Tables 2,3,4,5 of the README, coulmn Quokka\#(pauli)" > results/eq_wmc_pauli_results.txt
echo "" >> results/eq_wmc_pauli_results.txt
./run_eq_wmc.sh $1 pauli $2 >> results/eq_wmc_pauli_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running eq check in comp basis'
echo "results of Tables 2,3,4,5 of the README, coulmn Quokka\#(comp)" > results/eq_wmc_comp_results.txt
echo "" >> results/eq_wmc_comp_results.txt
./run_eq_wmc.sh $1 comp  $2 >> results/eq_wmc_comp_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' done'