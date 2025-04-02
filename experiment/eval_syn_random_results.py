import os
import re
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np


def extract_numbers_from_folders(base_path="./syn_files"):
	"""
	Go over all folders in the base_path with the format q#b#seed# and extract numbers.
	"""
	folder_pattern = re.compile(r"q(\d+)d(\d+)seed(\d+)")
	results = {}
	quibits_values = set()
	in_depth_values = set()
	seed_values = set()
	max_runtime = 0
	max_layers = 0

	parent_path = os.path.join(os.getcwd(), base_path)
	if not os.path.exists(parent_path):
		print(f"Path {parent_path} does not exist.")
		return {}
	for folder_name in os.listdir(parent_path):
		match = folder_pattern.match(folder_name)
		if match:
			qubits, in_deepth, seed = tuple(map(int, match.groups()))
			in_depth_values.add(in_deepth)
			quibits_values.add(qubits)
			seed_values.add(seed)
			if qubits not in results:
				results[qubits] = {}
			final_results_path = os.path.join(parent_path, folder_name, "final_results.txt")
			enterys = pd.read_csv(final_results_path, sep="\t", header=0, index_col=False)
			
			# print(f"Reading {final_results_path}")
			# print(f"Qubits: {qubits}, In-depth: {in_deepth}, Seed: {seed}")
			for index, entery in enterys.iterrows():
				# print("entery: \n", entery)
				if entery["layers"] not in results[qubits]:
					results[qubits][entery["layers"]] = {}
				if in_deepth not in results[qubits][entery["layers"]]:
					results[qubits][entery["layers"]][in_deepth] = {}
				results[qubits][entery["layers"]][in_deepth][entery["basis"]+"_"+entery["identity"]+"_"+str(seed)] = (entery["res"], entery["runtime"])
				if entery["runtime"] > max_runtime:
					max_runtime = entery["runtime"]
				if entery["layers"] > max_layers:
					max_layers = entery["layers"]

	size_factor = 50 
	table_df_rows = []
	print(f"Results:")
	for q in sorted(results.keys()):
		print(f"Qubits: {q}")
		plot_data = {"layers": [], "runtime": [], "runtime_error":[], "in_depth": [], "count": []}
		for l in sorted(results[q].keys()):
			print(f"\tLayers: {l}")
			for d in sorted(results[q][l].keys()):
				print(f"\t\tIn-depth: {d}")
				runtimes = []
				found_count = 0
				timeout_count = 0
				crash_count = 0
				for b, t in results[q][l][d].items():
					print(f"\t\t\t{b}: {t}")
					if t[0] == 'FOUND':
						runtimes.append(t[1])
						found_count += 1
					elif t[0] == 'TIMEOUT':
						timeout_count += 1
					elif t[0] == 'CRASH':
						crash_count += 1
					else:
						print(f"Unknown result: {t}")
				if found_count == 0:
					continue
				plot_data["layers"].append(l)
				plot_data["in_depth"].append(d)
				plot_data["runtime"].append(np.mean(runtimes))
				plot_data["runtime_error"].append(np.std(runtimes))
				plot_data["count"].append(found_count*size_factor)
				print(f"\t\t\tFound: {found_count}, Timeout: {timeout_count}, Crash: {crash_count}")
				table_df_rows.append({"Number of Qubits": q, "Out Depth": l, "In Depth": d,
								"Runtime (seconds)": f"${np.mean(runtimes):.3f} \pm {np.std(runtimes):.3f}$", "count": found_count,
								"Success Rate": found_count/len(seed_values), "Timeout Rate": timeout_count/len(seed_values), "Crash Rate": crash_count/len(seed_values)})             

		# fig, ax = plt.subplots()

		# scatter = ax.scatter('layers', 'runtime', c='in_depth', s='count', alpha=0.6, data=plot_data, cmap="rainbow")
		# ax.errorbar(plot_data["layers"], plot_data["runtime"], yerr=plot_data["runtime_error"], fmt=",", color='black', alpha=0.5, label="error bars")

		# ax.set_xlabel('Layers')
		# ax.set_ylabel('Runtime (seconds)')
		# ax.set_yscale('log')

		# org_handles, org_labels = ax.get_legend_handles_labels()
		# new_handles, new_labels = scatter.legend_elements()
		# handles = new_handles + [org_handles[1]]
		# labels = new_labels + [org_labels[1]]
		# # produce a legend with the unique colors from the scatter
		# legend1 = ax.legend(handles, labels, loc="upper left", title="In-depth")
		# ax.add_artist(legend1)

		# # produce a legend with a cross-section of sizes from the scatter
		# handles, labels = scatter.legend_elements(prop="sizes", alpha=0.6, func=lambda s: s / size_factor)
		# legend2 = ax.legend(handles, labels, loc="lower right", title="Count")

		# fig.savefig(f"{base_path}/results_{q}.png")
		# fig.clf()

	df = pd.DataFrame(table_df_rows)
	df_to_print = df.pivot(columns='Number of Qubits', index=['In Depth', 'Out Depth'], values=['Success Rate', 'Runtime (seconds)'])
	df_to_print = df_to_print.swaplevel(0,1, axis=1).sort_index(axis=1)
	print("Dataframe:")
	print(df_to_print)
	# Save the dataframe to a Latex file
	df_to_print.to_latex(f"{base_path}/results.tex", float_format="%.2f", multirow=True, multicolumn=True)

# Example usage
if __name__ == "__main__":
	extract_numbers_from_folders()

