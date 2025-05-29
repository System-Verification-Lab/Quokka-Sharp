import os
import time
import utils
import re
import tempfile
import pandas as pd
import quokka_sharp as qk
from gen_random import generate_random_circuit_qasm

folder_name = "for_syn"
benchmark_folder = os.path.join("random", folder_name)
filename_format="random_q{n:02d}_d{d:03d}_s{seed:02d}.qasm"

def get_from_file_name(file_name):
	print(f"Processing file: {file_name}")
	print(re.compile(r"random_q(\d+)_d(\d+)_s(\d+).qasm").match(file_name))
	return tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+).qasm").match(file_name).groups()))

samples = 10
success_rate_threshold = 0.5

results_file_name = "synthesis.csv"
df_columns = ["qubits", "depth", "seed", "basis", "layers", "result", "time"]

def gen_and_run(q, d, seed, df):
	generate_random_circuit_qasm(q, d, seed, folder_name=folder_name, filename_format=filename_format, weighted_prob_cx_h_s_sdg_t_tdg=[1, 1, 0, 0, 1, 1])
	file = utils.get_file_path(filename_format.format(n=q, d=d, seed=seed), "origin", benchmark_folder)

	for basis in ["comp", "pauli"]:
		run_data = {
			"qubits": q,
			"depth": d,
			"seed": seed,
			"basis": basis
		}

		start_time = time.time()
		status, weight, qasm, layers = qk.functionalities.syn(file, basis, 1)
		end_time = time.time()

		assert layers <= d

		run_data["layers"] = layers

		tmp = tempfile.NamedTemporaryFile()
		with open(tmp.name, 'w') as f:
			f.write(qasm) 

		test = qk.functionalities.eq(file, tmp.name, "comp", "cyclic", N=1)
		if not test:
			f"ERROR: Equivalence check failed for {file}"
		run_data["test"] = test
		
		utils.save_results_to_file(results_file_name, utils.add_result_to_df(run_data, status, end_time-start_time, df))

statistics_df_rows=[]
for q in [2,3,4,5,6]:
	d=1
	passed_rate = 1
	while passed_rate >= success_rate_threshold:
		# Filter the DataFrame for the current qubits and depth
		results_df = utils.get_results_from_file(results_file_name, df_columns)
		q_d_df = results_df[(results_df["qubits"] == q) & (results_df["depth"] == d)]

		if q_d_df.empty:
			results_df = gen_and_run(q, d, 0, results_df)
			continue

		# Check if all results are "TIMEOUT"
		if any(q_d_df["result"] == "CRASH"):
			print(f"WARNING: crash cases\n{q_d_df[q_d_df['result'] == 'CRASH']}")
		
		relevant_df = q_d_df[(q_d_df["layers"] == d) | (q_d_df["result"] == "TIMEOUT") | (q_d_df["result"] == "CRASH")]
		relevant_df = relevant_df[(relevant_df["result"] != "TIMEOUT") | (relevant_df["time"] >= utils.timeout)]

		if len(relevant_df) < samples:
			max_seed = max([int(s) for s in q_d_df["seed"].unique()])
			seed_to_generate = min(set(range(max_seed + 2)) - set(q_d_df["seed"].unique()))
			results_df = gen_and_run(q, d, seed_to_generate, results_df)
			continue
		
		relevant_df = relevant_df[:samples]
		passed_df = relevant_df[(relevant_df["layers"] == d) & (relevant_df["result"] == "FOUND") & (relevant_df["time"] <= utils.timeout)]
		passed_rate = len(passed_df) / len(relevant_df)
		statistics_df_rows.append(
			{
				"Number of Qubits": q,
				"Circuit Depth": d,
				"Runtime": f"${passed_df["time"].mean():.3f}\\pm{passed_df["time"].std():.3f}$",
				"Rate": passed_rate,
			}
		)
		d += 1

# Save statistics DataFrame to latex table
print(f"Statistics:\n{statistics_df_rows}")

statistics_df = pd.DataFrame(statistics_df_rows)
print(statistics_df)
statistics_df.to_latex(
	utils.get_results_file_path(results_file_name).replace(".csv", "_statistics.tex"),
	index=False,
	float_format="%.3f",
	column_format="lcccc",
	header=["Number of Qubits", "Circuit Depth", "Runtime", "Rate"]
)
