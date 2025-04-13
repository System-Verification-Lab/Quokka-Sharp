#!/bin/bash

mkdir -p results/
mkdir -p tmp/

# arg1: timeout in seconds (300 = 5 minutes)


# get sim test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running sim check with allzero measurement in Pauli basis - printing results to ./results/sim_wmc_allzero_pauli_results.txt'
echo "results of Tables 2 (left) and 3 (left) of the paper, column Quokka\#(pauli)" > results/sim_wmc_allzero_pauli_results.txt
echo "" >> results/sim_wmc_allzero_pauli_results.txt
./run_sim_wmc.sh allzero pauli $1 >> results/sim_wmc_allzero_pauli_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running sim check with allzero measurement in computational basis - printing results to ./results/sim_wmc_allzero_comp_results.txt'
echo "results of Tables 2 (left) and 3 (left) of the paper, column Quokka\#(comp)" > results/sim_wmc_allzero_comp_results.txt
echo "" >> results/sim_wmc_allzero_comp_results.txt
./run_sim_wmc.sh allzero comp $1 >> results/sim_wmc_allzero_comp_results.txt


# get eq test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running equivalence checking in Pauli basis - printing results to ./results/eq_wmc_pauli_results.txt'
echo "results of Tables 2 (right), 3 (mid + right), 6, 7, 8 of the paper, column Quokka\#(pauli)" > results/eq_wmc_pauli_results.txt
echo "" >> results/eq_wmc_pauli_results.txt
./run_eq_wmc.sh pauli $1 >> results/eq_wmc_pauli_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running equivalence checking in computational basis - printing results to ./results/eq_wmc_comp_results.txt'
echo "results of Tables 2 (right), 3 (mid + right), 6, 7, 8 of the paper, column Quokka\#(comp)" > results/eq_wmc_comp_results.txt
echo "" >> results/eq_wmc_comp_results.txt
./run_eq_wmc.sh comp  $1 >> results/eq_wmc_comp_results.txt


# get veri test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running verification check - printing results to ./results/veri_wmc_results.txt'
echo "results of Table 4 of the paper" > results/veri_wmc_results.txt
echo "" >> results/veri_wmc_results.txt
./run_veri_wmc.sh comp $1 >> results/veri_wmc_results.txt


# get syn test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running syn check - printing results to ./results/syn_wmc_results.txt'
echo "results of Verification paragraph of the paper" > results/syn_wmc_results.txt
echo "" >> results/syn_wmc_results.txt
./run_syn_wmc.sh $1 >> results/syn_wmc_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' done'