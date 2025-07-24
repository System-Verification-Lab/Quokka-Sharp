import datetime
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
filename_format="random_q{n:01d}_d{d:01d}_s{seed:01d}.qasm"

def get_from_file_name(file_name):
	print(f"Processing file: {file_name}")
	print(re.compile(r"random_q(\d+)_d(\d+)_s(\d+).qasm").match(file_name))
	return tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+).qasm").match(file_name).groups()))

samples = 10
success_rate_threshold = 0.5

results_file_name = "synthesis.csv"
df_columns = ["qubits", "depth", "seed", "basis", "layers", "result", "time", "mem", "test"]

def statistics_to_latex(statistics_df_rows):
	statistics_df = pd.DataFrame(statistics_df_rows)
	statistics_df_to_print = statistics_df.pivot_table(
										values=["Rate", "Time (s)", "Memory (GB)"], 
										index=["Number of Qubits", "Circuit Depth"],
										columns=["Basis"],
										aggfunc="sum")
	statistics_df_to_print = statistics_df_to_print.reindex(columns=statistics_df_to_print.columns.reindex(["Rate", "Time (s)", "Memory (GB)"], level=0)[0])
	statistics_df_to_print.to_latex(utils.get_results_file_path(results_file_name).replace(".csv", "_statistics.tex"),
								  index=True, float_format="%.1f", multicolumn_format="c",
								    multirow=True, multicolumn=True, na_rep="")

def memory_usage(folder):
	"""
	Calculate the max and last memory usage (in MB) from all *_d4.out files in the folder.
	Returns (max_mem, last_mem) or (None, None) if not found.
	"""
	max_mem = None
	for file in os.listdir(folder):
		if file.endswith("_d4.out"):
			mem_mb_values = []
			file_path = os.path.join(folder, file)
			with open(file_path, 'r') as f:
				for line in f:
					if line.startswith('c |'):
						columns = [col.strip() for col in line.split('|')]
						if len(columns) > 12:
							mem_mb = columns[11]
							if mem_mb != "mem(MB)":
								mem_mb_values.append(float(mem_mb)/1024)  # Convert to GB
			if not mem_mb_values:
				continue
			assert max(mem_mb_values) == mem_mb_values[-1], "The last memory value is not the maximum."
			max_mem = max(mem_mb_values[-1], max_mem) if max_mem is not None else mem_mb_values[-1]
	return max_mem


def gen_and_run(q, d, seed, basis, onehot_xz):
	print(f"[{datetime.datetime.now()}] Generating and running for q={q}, d={d}, seed={seed}, basis={basis}, onehot_xz={onehot_xz}")

	generate_random_circuit_qasm(q, d, seed, folder_name=folder_name, filename_format=filename_format, weighted_prob_cx_h_s_sdg_t_tdg=[1, 1, 0, 0, 1, 1])
	file = utils.get_file_path(filename_format.format(n=q, d=d, seed=seed), "origin", benchmark_folder)

	utils.remove_tmp_folder()

	start_time = time.time()
	status, weight, qasm, layers = qk.functionalities.syn(file, basis, cyc_lin_encoding=onehot_xz, fid=1, files_root=utils.get_tmp_folder_path())
	end_time = time.time()

	mem = memory_usage(utils.get_tmp_folder_path())
	utils.remove_tmp_folder()

	run_data = {
		"qubits": q,
		"depth": d,
		"seed": seed,
		"basis": name(basis, onehot_xz)
	}

	assert layers <= d

	run_data["layers"] = layers

	tmp = tempfile.NamedTemporaryFile(delete_on_close=False)
	with open(tmp.name, 'w') as f:
		f.write(qasm) 
	test = qk.functionalities.eq(file, tmp.name, "comp", "cyclic", N=1)
	if not test:
		f"ERROR: Equivalence check failed for {file}"
	run_data["test"] = test
	
	utils.save_results_to_file(results_file_name, utils.add_result_to_df(run_data, status, end_time-start_time, 
																	  utils.get_results_from_file(results_file_name, df_columns),
																	  memory=mem))

	# Remove file
	os.remove(file)
		
basis_onehot_xz_list = [ # ordered by preference
	("pauli", True),   # Pauli basis, one-hot encoding
	("comp", False),  # Computational basis, no one-hot encoding
	("pauli", False)  # Pauli basis, no one-hot encoding
]
def name(basis, onehot_xz):
	"""
	Generate a name for the basis and one-hot encoding combination.
	"""
	match basis:
		case "comp":
			return "Comp"
		case "pauli":
			if onehot_xz:
				return "P_lin"
			else:
				return "Pauli"
		case _:
			raise ValueError(f"Unknown basis: {basis}")


statistics_df_rows=[]
for q in [2,3,4,5,6]:
	d_dict = {name(b,lin): 1 for b, lin in basis_onehot_xz_list}  # Initialize depth for each basis
	passed_rate_dict = {name(b,lin): 1 for b, lin in basis_onehot_xz_list}  # Initialize passed rate for each basis
	while any([passed_rate_dict[name(b,lin)] >= success_rate_threshold for b, lin in basis_onehot_xz_list]):
		# let the fastest run first for each qubit to find bad seeds quicker
		basis, onehot_xz = [(b,lin) for b,lin in basis_onehot_xz_list if passed_rate_dict[name(b,lin)]>= success_rate_threshold][0]
		d = d_dict[name(basis, onehot_xz)]
		# Filter the DataFrame for the current qubits and depth
		results_df = utils.get_results_from_file(results_file_name, df_columns)
		results_df = results_df[(results_df["result"] != "TIMEOUT") | (results_df["time"] >=utils.timeout)]

		bad_seeds_strs = results_df[(results_df["qubits"] == q) & (results_df["depth"] == d) &
													(results_df["layers"] < d) & (results_df["result"] == "FOUND")]["seed"].unique()
		bad_seeds = [int(s) for s in bad_seeds_strs]
		
		q_d_df = results_df[(results_df["qubits"] == q) & (results_df["depth"] == d) & (results_df["basis"] == name(basis, onehot_xz)) & ~(results_df["seed"].isin(bad_seeds))]

		if q_d_df.empty:
			if 0 in bad_seeds:
				seed_to_generate = min(set(range(max(bad_seeds)+2)) - set(bad_seeds))
			else:
				seed_to_generate = 0
			gen_and_run(q, d, seed_to_generate, basis, onehot_xz)
			continue

		# Check if all results are "TIMEOUT"
		if any(q_d_df["result"] == "CRASH"):
			print(f"WARNING: crash cases\n{q_d_df[q_d_df['result'] == 'CRASH']}")
		
		relevant_df = q_d_df[(q_d_df["layers"] == d) | (q_d_df["result"] == "TIMEOUT") | (q_d_df["result"] == "CRASH")]
		relevant_df = relevant_df[(relevant_df["result"] != "TIMEOUT") | (relevant_df["time"] >= utils.timeout)]

		if len(relevant_df) < samples:
			used_seeds = [int(s) for s in q_d_df["seed"].unique()]
			max_seed = max(bad_seeds + used_seeds) 
			seed_to_generate = min(set(range(max_seed + 2)) - set(used_seeds) - set(bad_seeds))
			gen_and_run(q, d, seed_to_generate, basis, onehot_xz)
			continue
		
		relevant_df = relevant_df[:samples]
		passed_df = relevant_df[(relevant_df["layers"] == d) & (relevant_df["result"] == "FOUND") & (relevant_df["time"] <= utils.timeout)]
		passed_rate_dict[name(basis, onehot_xz)] = len(passed_df) / len(relevant_df)
		statistics_df_rows.append(
			{
				"Number of Qubits": q,
				"Circuit Depth": d,
				"Basis": name(basis, onehot_xz),
				"Memory (GB)": f"${passed_df['mem'].mean():.3f}\\pm{passed_df['mem'].std():.3f}$" if not passed_df.empty else "N/A",
				"Time (s)": f"${passed_df['time'].mean():.3f}\\pm{passed_df['time'].std():.3f}$" if not passed_df.empty else "N/A",
				"Rate": passed_rate_dict[name(basis, onehot_xz)]
			}
		)
		statistics_to_latex(statistics_df_rows)
		d_dict[name(basis, onehot_xz)] += 1
	

	results_df = utils.get_results_from_file(results_file_name, df_columns).sort_values(by=df_columns, ignore_index=True)
	utils.save_results_to_file(results_file_name, results_df)
	assert results_df[(results_df["result"] == "FOUND") & (results_df["test"] == False)].empty, "There are failed tests in the results DataFrame. Please check the results."
	assert results_df[(results_df["result"] == "TIMEOUT") & (results_df["test"] == True)].empty, "There are failed tests in the results DataFrame. Please check the results."

statistics_to_latex(statistics_df_rows)