import os, time
import pandas as pd
import quokka_sharp as qk
import re
import utils
from tqdm import tqdm
import matplotlib.pyplot as plt

benchmark_folder = os.path.join("random", "TH_ratio")
benchmarks_list = utils.get_benchmark_files(benchmark_folder)

results_file_name = "TH_rations.csv"
df_columns = ["qubits", "depth", "seed", "ratio", "measurement", "basis", "result", "time"]
results_df = utils.get_results_from_file(results_file_name, df_columns)

# Limits
seed_limit = 10

def get_from_file_name(file_name):
	name = file_name.replace(".qasm", "")
	return tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+)_THr0\.(\d+)").match(name).groups()))

def draw_figures(results_df, results_file_name):
	# check that for all entries in results_df, the coresponding result of the other basis is timeout or the same
	for exp, results in results_df.groupby(["qubits", "depth", "seed", "ratio", "measurement"]):
		assert len(results) == 2, f"Expected 2 results for {exp}, but found {len(results)}\n{results}"
		basis_results = results.set_index("basis")["result"]
		if (basis_results["comp"] == "TIMEOUT") or (basis_results["pauli"] == "TIMEOUT"):
			continue
		else:
			if abs(float(basis_results["comp"]) - float(basis_results["pauli"])) > utils.FPE:
				print(f"WARNING: Results mismatch for {exp}:\n{basis_results}")

	# Filter results_df to only include entries with qubits <= qubits_limit and depth <= depth_limit
	qubits_df = results_df[(results_df["seed"] <= seed_limit)]

	# Assign a unique color for each basis combination
	colors = utils.cycle_colors()
	color_map = {b: next(colors) for b in results_df["basis"].unique()}

	# Assign a unique line style for each depth
	lines = utils.line_style_cycle()
	line_map = {d: next(lines) for d in sorted(results_df["depth"].unique())}

	for qubits in results_df["qubits"].unique():
		qubits_df = results_df[results_df["qubits"] == qubits]
		if qubits_df.empty:
			continue

		plt.figure(figsize=(10, 4))
		for (depth, basis), group in qubits_df.groupby(["depth", "basis"]):
			# Calculate the mean and std time for each group, excluding TIMEOUT
			group = group[group["result"] != "TIMEOUT"]
			if group.empty:
				continue
			group = group.groupby("ratio").agg({"time": ["mean", "std"]}).reset_index()
				
			plt.errorbar(
				group["ratio"],
				group["time"]["mean"],
				yerr=group["time"]["std"],
				label=f"depth={depth}, {basis}",
				fmt='o',
				capsize=5,
				color=color_map[basis],
				linestyle=line_map[depth]
			)
		# plt.title(f"Mean Time vs Ratio for Simulation of {qubits} Qubits")
		plt.xlabel("T gates to H gates Ratio")
		plt.ylabel("Mean Time (s)")
		plt.yscale("log")
		plt.legend()
		plt.grid()
		plt.savefig(utils.get_results_file_path(results_file_name).replace(".csv", f"_{qubits}_qubits_time_vs_ratio.png"))
		plt.close()

	# Timout rates
	group_by = ["qubits", "depth", "ratio", "measurement", "basis"]
	timeout_rates = qubits_df[qubits_df["result"] == "TIMEOUT"].groupby(group_by).size()/ qubits_df.groupby(group_by).size()
	timeout_rates = timeout_rates.reset_index(name="timeout_rate").fillna(0)
	timeout_rates = timeout_rates[timeout_rates["timeout_rate"] > 0]
	timeout_rates.to_latex(
		utils.get_results_file_path(results_file_name).replace(".csv", f"_timeout_rates.tex"),
		index=False,
		float_format="%.2f",
		column_format="lccc",
		header=group_by + ["Timeout Rate"]
	)

for file in tqdm(benchmarks_list, desc="Processing files", unit="file"):
	file_path = utils.get_file_path(file, "origin", benchmark_folder)
	qubits, depth, seed, ratio = get_from_file_name(file)
	ratio = float(ratio) / 10  # Convert to float from string representation
	new = False
	# Skip if the seed is greater than the limit
	if seed > seed_limit:
		continue
	for measurement in ["allzero"]:
		for basis in ["comp", "pauli"]:
			run_data = {
				"qubits": qubits,
				"depth": depth,
				"seed": seed,
				"ratio": ratio,
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
			new = True

	if new:
		utils.save_results_to_file(results_file_name, results_df)
		draw_figures(results_df, results_file_name)

# Save the results to a file
results_df.sort_values(by=["qubits", "depth", "seed", "ratio", "measurement", "basis"], inplace=True)
utils.save_results_to_file(results_file_name, results_df)
draw_figures(results_df, results_file_name)
print(results_df)
