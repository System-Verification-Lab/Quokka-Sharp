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
	generate_random_circuit_qasm(q, d, seed, folder_name=folder_name, filename_format=filename_format)
	file = utils.get_file_path(filename_format.format(n=q, d=d, seed=seed), "origin", benchmark_folder)

	for basis in ["comp", "pauli"]:
		run_data = {
			"qubits": q,
			"depth": d,
			"seed": seed,
			"basis": basis
		}

		start_time = time.time()
		status, weight, qasm, depth = qk.functionalities.syn(file, basis, 1)
		end_time = time.time()

		run_data["layers"] = depth

		tmp = tempfile.NamedTemporaryFile()
		with open(tmp.name, 'w') as f:
			f.write(qasm) 

		assert qk.functionalities.eq(file, tmp.name, "comp", "cyclic", N=1)
		
		utils.save_results_to_file(results_file_name, utils.add_result_to_df(run_data, status, end_time-start_time, df))

statistics_df_rows=[]
for q in [2,3,4,5,6]:
	d=1
	passed_rate = 1
	while passed_rate >= success_rate_threshold:
		# Filter the DataFrame for the current qubits and depth
		results_df = utils.get_results_from_file(results_file_name, df_columns)
		q_d_filtered_df = results_df[(results_df["qubits"] == q) & (results_df["depth"] == d)]

		if q_d_filtered_df.empty:
			results_df = gen_and_run(q, d, 0, results_df)
			break

		# Check if all results are "TIMEOUT"
		if any(q_d_filtered_df["result"] == "CRASH"):
			print(f"WARNING: crash cases\n{q_d_filtered_df[q_d_filtered_df['result'] == 'CRASH']}")
		
		assert q_d_filtered_df[(q_d_filtered_df["layers"] > d)].empty 
		relevant_df = q_d_filtered_df[(q_d_filtered_df["layers"] == d) or (q_d_filtered_df["result"] in ["TIMEOUT", "CRASH"])]
		relevant_df = relevant_df[(q_d_filtered_df["result"] != "TIMEOUT") or (q_d_filtered_df["runtime"] >= utils.timeout)]

		if len(relevant_df) < samples:
			max_seed = set(relevant_df["seed"]).max()
			seed_to_generate = (set(range(max_seed + 1)) - set(relevant_df["seed"])).min()
			results_df = gen_and_run(q, d, seed_to_generate, results_df)
			break
		
		relevant_df = relevant_df[:samples]
		passed_df = relevant_df[(q_d_filtered_df["layers"] == d) and (q_d_filtered_df["Result"] == "FOUND") and (q_d_filtered_df["runtime"] <= utils.timeout)]
		passed_rate = len(passed_df) / len(relevant_df)
		statistics_df_rows.append(
			{
				"Number of Qubits": q,
				"Circuit Depth": d,
				"Runtime": f"${passed_df["Runtime"].mean():.3f}\\pm{passed_df["Runtime"].std():.3f}$",
				"Rate": passed_rate,
			}
		)
		d += 1

# Save statistics DataFrame to latex table
statistics_df = pd.DataFrame(statistics_df_rows)
statistics_df.to_latex(
	utils.get_results_file_path(results_file_name).replace(".csv", "_statistics.tex"),
	index=False,
	float_format="%.3f",
	column_format="lcccc",
	header=["Number of Qubits", "Circuit Depth", "Runtime", "Rate"]
)
