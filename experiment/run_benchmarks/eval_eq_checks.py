import os, time
import pandas as pd
import quokka_sharp as qk
import re
import utils
from tqdm import tqdm
import matplotlib.pyplot as plt

benchmark_folder = os.path.join("random", "uniform")
benchmarks_list = utils.get_benchmark_files(benchmark_folder)

results_file_name = "eq_checks.csv"
df_columns = ["qubits", "deepth", "seed", "mod", "basis", "check", "result", "time"]
results_df = utils.get_results_from_file(results_file_name, df_columns)

def get_from_file_name(file_name):
	name = file_name.replace(".qasm", "")
	return tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+)").match(name).groups()))


def draw_figures(results_df, results_file_name):

	qubits_df = results_df[results_df["qubits"] <= 10]
	qubits_df = qubits_df[qubits_df["deepth"] <= 50]

	colors = utils.cycle_colors()
	color_map = {b: next(colors) for b in results_df.groupby(["basis", "check"]).groups.keys()}

	# Assign a unique line style for each depth
	lines = utils.line_style_cycle()
	line_styles = {d: next(lines) for d in sorted(results_df["qubits"].unique())}

	for mod in qubits_df["mod"].unique():
		mod_df = qubits_df[qubits_df["mod"] == mod]
		plt.figure(figsize=(10, 6))

		# assert that all results are True or TIMEOUT
		valid_resutls = [str(mod=="opt"), "TIMEOUT"]
		if not mod_df["result"].isin(valid_resutls).all():
			print(f"ERROR: Not all results are in {valid_resutls} for modification {mod}. Skipping plot.")
			print(mod_df["result"].unique())
			#print bad lines
			print(mod_df[~mod_df["result"].isin(valid_resutls)])
			continue

		for (qubits, basis, check), group in mod_df.groupby(["qubits", "basis", "check"]):
			# Calculate the mean and std time for each group, excluding TIMEOUT
			# group = group[group["result"] != "TIMEOUT"]
			if group.empty:
				continue
			group = group.groupby("deepth").agg({"time": ["mean", "std"]}).reset_index()
			plt.errorbar(
				group["deepth"],
				group["time"]["mean"],
				yerr=group["time"]["std"],
				label=f"qubits={qubits}, {basis}-{check}",
				fmt='o',
				capsize=5,
				color=color_map[(basis, check)],
				linestyle=line_styles[qubits]
			)

		plt.title(f"Mean Time vs Deepth for {mod} Modification")
		plt.xlabel("Circuit Deepth")
		plt.ylabel("Mean Time (s)")
		plt.legend()
		plt.grid()
		plt.savefig(utils.get_results_file_path(results_file_name).replace(".csv", f"_{mod}_time_vs_depth.png"))
		plt.close()


for file in tqdm(benchmarks_list, desc="Processing files", unit="file"):
	origin_file = utils.get_file_path(file, "origin", benchmark_folder)
	qubits, deepth, seed = get_from_file_name(file)
	if deepth > 50:
		continue
	if qubits > 10:
		continue
	new = False
	for modification in ["opt", "gm"]:
		mod_file = utils.get_file_path(file, modification, benchmark_folder)
		for basis, check in [("comp", "cyclic"), ("pauli", "cyclic"), ("pauli", "linear"), ("pauli", "cyc_lin")]:
			run_data = {
				"qubits": qubits,
				"deepth": deepth,
				"seed": seed,
				"mod": modification,
				"basis": basis,
				"check": check
			}

			# Check if the entry already exists in the results DataFrame
			if utils.data_exists(run_data, results_df):
				continue
			
			start_time = time.time()
			result = qk.functionalities.eq(origin_file, mod_file, basis, check, N=(1 if check != "linear" else 16))
			end_time = time.time()

			results_df = utils.add_result_to_df(run_data, result, end_time-start_time, results_df)

			# Save the results to a file
			utils.save_results_to_file(results_file_name, results_df)
			new = True
	if new:
		draw_figures(results_df, results_file_name)

results_df.sort_values(by=["qubits", "deepth", "seed", "mod", "basis", "check"], inplace=True)
utils.save_results_to_file(results_file_name, results_df)
draw_figures(results_df, results_file_name)
print(results_df)

