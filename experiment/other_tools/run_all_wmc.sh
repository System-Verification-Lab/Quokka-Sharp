#!/bin/bash

mkdir -p results/

# get eq test results for a sample of the benchmarks
./run_eq_wmc.sh $1 pauli > results/eq_wmc_pauli_results.txt
./run_eq_wmc.sh $1 comp  > results/eq_wmc_comp_results.txt

# get eq test results for a sample of the benchmarks
./run_sim_wmc.sh $1 allzero pauli   > results/sim_wmc_allzero_pauli_results.txt
./run_sim_wmc.sh $1 allzero comp    > results/sim_wmc_allzero_comp_results.txt
./run_sim_wmc.sh $1 firstzero pauli > results/sim_wmc_firstzero_pauli_results.txt
./run_sim_wmc.sh $1 firstzero comp  > results/sim_wmc_firstzero_comp_results.txt