import datetime
import os
import time
import utils
import re
import tempfile
import pandas as pd
import quokka_sharp.functionalities as qk
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

old_results_file_name = "synthesis.csv"
new_results_file_name = "synthesis_wo_th.csv"
df_columns = ["qubits", "depth", "seed", "basis", "layers", "result", "time", "mem", "test"]

def statistics_to_latex(statistics_df_rows):
	statistics_df = pd.DataFrame(statistics_df_rows)
	statistics_df_to_print = statistics_df.pivot_table(
										values=["Rate", "Time (s)", "Memory (GB)"], 
										index=["Number of Qubits", "Circuit Depth"],
										columns=["Basis"],
										aggfunc="sum")
	statistics_df_to_print = statistics_df_to_print.reindex(columns=statistics_df_to_print.columns.reindex(["Rate", "Time (s)", "Memory (GB)"], level=0)[0])
	statistics_df_to_print.to_latex(utils.get_results_file_path(new_results_file_name).replace(".csv", "_statistics.tex"),
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
	status, weight, qasm, layers = qk.syn(file, basis, cyc_lin_encoding=onehot_xz, fid=1, files_root=utils.get_tmp_folder_path())
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
	test = qk.eq(file, tmp.name, "comp", "cyclic", N=1)
	if not test:
		f"ERROR: Equivalence check failed for {file}"
	run_data["test"] = test
	
	utils.save_results_to_file(new_results_file_name, utils.add_result_to_df(run_data, status, end_time-start_time, 
																	  utils.get_results_from_file(new_results_file_name, df_columns),
																	  memory=mem))

	# Remove file
	os.remove(file)
		
basis_onehot_xz_list = [ # ordered by preference
	("pauli", True),   # Pauli basis, one-hot encoding
	# ("comp", False),  # Computational basis, no one-hot encoding
	# ("pauli", False)  # Pauli basis, no one-hot encoding
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

for q,d in [(2,6), (3,4)]:
	# let the fastest run first for each qubit to find bad seeds quicker
	basis, onehot_xz = basis_onehot_xz_list[0]
	# Filter the DataFrame for the current qubits and depth
	results_df = utils.get_results_from_file(old_results_file_name, df_columns)
	results_df = results_df[(results_df["result"] != "TIMEOUT") | (results_df["time"] >=utils.timeout)]

	good_seeds_strs = results_df[(results_df["qubits"] == q) & (results_df["depth"] == d) &
												(results_df["layers"] == d) & (results_df["result"] == "FOUND")]["seed"].unique()
	good_seeds = [int(s) for s in good_seeds_strs]


	relevant_df = utils.get_results_from_file(new_results_file_name, df_columns)

	for seed in good_seeds:
		if relevant_df[(relevant_df["qubits"] == q) & (relevant_df["depth"] == d) & (relevant_df["seed"] == seed)].empty:
			gen_and_run(q, d, seed, basis, onehot_xz)

	passed_df = relevant_df[(relevant_df["layers"] == d) & (relevant_df["result"] == "FOUND") & (relevant_df["time"] <= utils.timeout)]
	passed_rate = len(passed_df) / len(relevant_df)
	statistics_df_rows.append(
		{
			"Number of Qubits": q,
			"Circuit Depth": d,
			"Basis": name(basis, onehot_xz),
			"Memory (GB)": f"${passed_df['mem'].mean():.3f}\\pm{passed_df['mem'].std():.3f}$" if not passed_df.empty else "N/A",
			"Time (s)": f"${passed_df['time'].mean():.3f}\\pm{passed_df['time'].std():.3f}$" if not passed_df.empty else "N/A",
			"Rate": passed_rate
		}
	)
	statistics_to_latex(statistics_df_rows)
