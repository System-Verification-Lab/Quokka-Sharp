import os, time
import pandas as pd
import quokka_sharp as qk
import re
import utils
from tqdm import tqdm
import matplotlib.pyplot as plt

benchmark_folder = os.path.join("random", "uniform")
benchmarks_list = utils.get_benchmark_files(benchmark_folder)

results_file_name = "simulations.csv"
df_columns = ["qubits", "deepth", "seed", "measurement", "basis", "result", "time"]
results_df = utils.get_results_from_file(results_file_name, df_columns)

def get_from_file_name(file_name):
	name = file_name.replace(".qasm", "")
	return tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+)").match(name).groups()))


def draw_figures(results_df, results_file_name):
	# check that for all entries in results_df, the coresponding result of the other basis is timeout or the same
	for exp, results in results_df.groupby(["qubits", "deepth", "seed", "measurement"]):
		assert len(results) == 2, f"Expected 2 results for {exp}, but found {len(results)}\n{results}"

		basis_results = results.set_index("basis")["result"]
		if basis_results["comp"] == "TIMEOUT" or basis_results["pauli"] == "TIMEOUT":
			continue
		if abs(float(basis_results["comp"]) - float(basis_results["pauli"])) > utils.FPE:
			print(f"WARNING: Results mismatch for {exp}: {basis_results['comp']} vs {basis_results['pauli']}")

	# Assign a unique color for each basis combination
	colors = utils.cycle_colors()
	color_map = {b: next(colors) for b in results_df["basis"].unique()}

	# Assign a unique line style for each depth
	lines = utils.line_style_cycle()
	line_map = {d: next(lines) for d in sorted(results_df["qubits"].unique())}

	qubits_df = results_df[results_df["qubits"] <= 10]
	for measurement in qubits_df["measurement"].unique():
		measurement_df = qubits_df[qubits_df["measurement"] == measurement]
		plt.figure(figsize=(10, 6))
			
		for (qubits, basis), group in measurement_df.groupby(["qubits", "basis"]):
			# Calculate the mean and std time for each group, excluding TIMEOUT
			group = group[group["result"] != "TIMEOUT"]
			if group.empty:
				continue
			group = group.groupby("deepth").agg({"time": ["mean", "std"]}).reset_index()
			plt.errorbar(
				group["deepth"],
				group["time"]["mean"],
				yerr=group["time"]["std"],
				label=f"qubits={qubits}, {basis}",
				fmt='o',
				capsize=5,
				color=color_map[basis],
				linestyle=line_map[qubits]
			)
		plt.title(f"Mean Time vs Deepth for {measurement} Modification")
		plt.xlabel("Circuit Deepth")
		plt.ylabel("Mean Time (s)")
		plt.legend()
		plt.grid()
		plt.savefig(utils.get_results_file_path(results_file_name).replace(".csv", f"_{measurement}_time_vs_deepth.png"))
		plt.close()

for file in tqdm(benchmarks_list, desc="Processing files", unit="file"):
	file_path = utils.get_file_path(file, "origin", benchmark_folder)
	qubits, deepth, seed = get_from_file_name(file)
	if deepth != 100:
		continue
	if qubits != 10:
		continue
	if seed != 0:
		continue
	new = False
	for measurement in ["firstzero", "allzero"]:
		for basis in ["comp", "pauli"]:
			run_data = {
				"qubits": qubits,
				"deepth": deepth,
				"seed": seed,
				"measurement": measurement,
				"basis": basis
			}
			# Check if the entry already exists in the results DataFrame
			if utils.data_exists(run_data, results_df):
				continue

			start_time = time.time()
			result = qk.functionalities.sim(file_path, basis, measurement)
			end_time = time.time()

			# Save the result
			results_df = utils.add_result_to_df(run_data, result, end_time-start_time, results_df)
		
			# Save the results to a file
			utils.save_results_to_file(results_file_name, results_df)
			new = True
	if new:
		draw_figures(results_df, results_file_name)

results_df.sort_values(by=["qubits", "deepth", "seed", "measurement", "basis"], inplace=True)
utils.save_results_to_file(results_file_name, results_df)
draw_figures(results_df, results_file_name)
print(results_df)

