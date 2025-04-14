#!/bin/bash

mkdir -p results/
mkdir -p tmp/

# arg1: timeout in seconds (300 = 5 minutes)


# get sim test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running sim check with allzero measurement in Pauli basis - printing results to ./results/sim_wmc_allzero_pauli_results.txt'
echo "results of Tables 1 (left) and 2 (left) of the artifacts README file, column Quokka\#(pauli)" > results/sim_wmc_allzero_pauli_results.txt
echo "" >> results/sim_wmc_allzero_pauli_results.txt
./run_sim_wmc.sh allzero pauli $1 >> results/sim_wmc_allzero_pauli_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running sim check with allzero measurement in computational basis - printing results to ./results/sim_wmc_allzero_comp_results.txt'
echo "results of Tables 1 (left) and 2 (left) of the artifacts README file, column Quokka\#(comp)" > results/sim_wmc_allzero_comp_results.txt
echo "" >> results/sim_wmc_allzero_comp_results.txt
./run_sim_wmc.sh allzero comp $1 >> results/sim_wmc_allzero_comp_results.txt


# get eq test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running equivalence checking in linear encoding - printing results to ./results/eq_wmc_linear_results.txt'
echo "results of Tables 1 (right), 2 (mid + right) of the artifacts README file, column Quokka\#(linear)" > results/eq_wmc_linear_results.txt
echo "" >> results/eq_wmc_linear_results.txt
./run_eq_wmc.sh pauli $1 >> results/eq_wmc_linear_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running equivalence checking in cyclic encoding - printing results to ./results/eq_wmc_cyclic_results.txt'
echo "results of Tables 1 (right), 2 (mid + right) of the artifacts README file, column Quokka\#(cyclic)" > results/eq_wmc_cyclic_results.txt
echo "" >> results/eq_wmc_cyclic_results.txt
./run_eq_wmc.sh comp  $1 >> results/eq_wmc_cyclic_results.txt


# get veri test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running verification check - printing results to ./results/veri_wmc_results.txt'
echo "results of Table 3 of the artifacts README file" > results/veri_wmc_results.txt
echo "" >> results/veri_wmc_results.txt
./run_veri_wmc.sh comp $1 >> results/veri_wmc_results.txt
./run_veri_wmc.sh pauli $1 >> results/veri_wmc_results.txt


# get syn test results for the benchmarks

echo `date +"[%Y-%m-%d %H:%M:%S]"`' running syn check - printing results to ./results/syn_wmc_results.txt'
echo "results of Table 4 of the artifacts README file" > results/syn_wmc_results.txt
echo "" >> results/syn_wmc_results.txt
./run_syn_wmc.sh $1 >> results/syn_wmc_results.txt

echo `date +"[%Y-%m-%d %H:%M:%S]"`' done'