import os, time
import quokka_sharp as qk
import re
import utils
from tqdm import tqdm
import matplotlib.pyplot as plt

benchmark_folder = os.path.join("random", "uniform")
benchmarks_list = utils.get_benchmark_files(benchmark_folder)

results_file_name = "eq_checks.csv"
df_columns = ["qubits", "depth", "seed", "mod", "basis", "check", "result", "time"]
results_df = utils.get_results_from_file(results_file_name, df_columns)

qubits_limit = 5
depth_limit = 50

def get_from_file_name(file_name):
	name = file_name.replace(".qasm", "")
	return tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+)").match(name).groups()))


def draw_figures(results_df, results_file_name):
	# Filter results_df to only include entries with qubits <= qubits_limit and depth <= depth_limit
	qubits_df = results_df[(results_df["qubits"] <= qubits_limit) & (results_df["depth"] <= depth_limit)]

	colors = utils.cycle_colors()
	color_map = {b: next(colors) for b in results_df.groupby(["basis", "check"]).groups.keys()}

	# Assign a unique line style for each depth
	lines = utils.line_style_cycle()
	line_styles = {d: next(lines) for d in sorted(results_df["qubits"].unique())}

	for mod in qubits_df["mod"].unique():
		for qubits in qubits_df["qubits"].unique():
			mod_df = qubits_df[(qubits_df["mod"] == mod) & (qubits_df["qubits"] == qubits)]
			plt.figure(figsize=(10, 6))

			# assert that all results are True or TIMEOUT
			valid_resutls = [str(mod=="opt"), "TIMEOUT"]
			if not mod_df["result"].isin(valid_resutls).all():
				print(f"ERROR: Not all results are in {valid_resutls} for modification {mod}. Skipping plot.")
				print(mod_df["result"].unique())
				#print bad lines
				print(mod_df[~mod_df["result"].isin(valid_resutls)])
				continue

			for (basis, check), group in mod_df.groupby(["basis", "check"]):
				# Calculate the mean and std time for each group, excluding TIMEOUT
				group = group[group["result"] != "TIMEOUT"]
				group = group[group["time"] <= utils.timeout]

				if group.empty:
					continue
				group = group.groupby("depth").agg({"time": ["mean", "std"]}).reset_index()
				plt.errorbar(
					group["depth"],
					group["time"]["mean"],
					yerr=group["time"]["std"],
					label=f"{basis}-{check}",
					fmt='o',
					capsize=5,
					color=color_map[(basis, check)],
					linestyle=line_styles[qubits]
				)

			plt.title(f"Mean Time vs Depth for {mod} Modification with {qubits} Qubits")
			plt.xlabel("Circuit Depth")
			plt.ylabel("Mean Time (s)")
			plt.legend()
			plt.grid()
			plt.savefig(utils.get_results_file_path(results_file_name).replace(".csv", f"_{mod}_{qubits}_qubits_time_vs_depth.png"))
			plt.close()
			
			# Timeout rates to Latex table
			timeout_rates = mod_df[mod_df["result"] == "TIMEOUT"].groupby(["basis", "check"]).size()/ mod_df.groupby(["basis", "check"]).size()
			timeout_rates = timeout_rates.reset_index(name="timeout_rate")
			timeout_rates["mod"] = mod
			timeout_rates = timeout_rates[["mod", "basis", "check", "timeout_rate"]]
			timeout_rates.to_latex(
				utils.get_results_file_path(results_file_name).replace(".csv", f"_{mod}_timeout_rates.tex"),
				index=False,
				float_format="%.2f",
				column_format="lccc",
				header=["Modification", "Basis", "Check", "Timeout Rate"]
			)


for file in tqdm(benchmarks_list, desc="Processing files", unit="file"):
	origin_file = utils.get_file_path(file, "origin", benchmark_folder)
	qubits, depth, seed = get_from_file_name(file)
	if qubits > qubits_limit or depth > depth_limit:
		continue
	new = False
	for modification in ["opt", "gm"]:
		mod_file = utils.get_file_path(file, modification, benchmark_folder)
		for basis, check in [("comp", "cyclic"), ("pauli", "cyclic"), ("pauli", "linear"), ("pauli", "cyc_lin")]:
			run_data = {
				"qubits": qubits,
				"depth": depth,
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

results_df.sort_values(by=["qubits", "depth", "seed", "mod", "basis", "check"], inplace=True)
utils.save_results_to_file(results_file_name, results_df)
draw_figures(results_df, results_file_name)
# print(results_df)

