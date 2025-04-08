import os
import re
import pandas as pd
import numpy as np

from benchmark.random.random_circ_qasm import main as gen_random_circ

circuits_path = os.path.join(os.getcwd(), "benchmark", "random", "for_syn")
results_path="./syn_files"
folder_pattern = re.compile(r"q(\d+)d(\d+)seed(\d+)")
timeout = 3600
samples = 5

def extract_numbers_from_folders():
	"""
	Go over all folders in the base_path with the format q#b#seed# and extract numbers.
	"""
	results_df_rows = []
	parent_path = os.path.join(os.getcwd(), results_path)

	if not os.path.exists(parent_path):
		print(f"Path {parent_path} does not exist.")
		return {}
	for folder_name in os.listdir(parent_path):
		match = folder_pattern.match(folder_name)
		if match:
			qubits, in_deepth, seed = tuple(map(int, match.groups()))
			final_results_path = os.path.join(parent_path, folder_name, "final_results.txt")
			enterys = pd.read_csv(final_results_path, sep="\t", header=0, index_col=False)
			assert len(enterys) == 1, f"Error: {final_results_path} does not have one line."
			for index, entery in enterys.iterrows():
				assert entery["res"] in ["FOUND", "TIMEOUT", "CRASH"], f"Error: {final_results_path} has invalid result."
				results_df_rows.append(
					{"Number of Qubits": qubits,
					 "In Depth": in_deepth,
					 "Seed": seed,
	  				 "Out Depth": entery["layers"],
					 "Runtime": entery["runtime"],
					 "Result": entery["res"]
					 }
					 )
				
	results_df = pd.DataFrame(results_df_rows)
	statistics_df_rows = []
	done = True
	for q in [2,3,4,5,6]:
		d=0
		while True:
			# Filter the DataFrame for the current qubits and depth
			q_d_filtered_df = results_df[(results_df["Number of Qubits"] == q) & (results_df["In Depth"] == d)]
			if q_d_filtered_df.empty:
				gen_random_circ(circuits_path, q, d, 0.25, 0.5, 0, 0)
				done = False
				break
			# Check if all results are "TIMEOUT"
			if any(q_d_filtered_df["Result"] == "CRASH"):
				print(f"Crash cases: \n {q_d_filtered_df[q_d_filtered_df['Result'] == 'CRASH']}")
				break
			disqualifi_filtered_df = q_d_filtered_df[(q_d_filtered_df["Out Depth"] < d)]
			if any(disqualifi_filtered_df["Result"] == "TIMEOUT"):
				break
			relevant_df = q_d_filtered_df[q_d_filtered_df["Out Depth"] >= d]
			assert all(relevant_df["Out Depth"] == d), f"Error: data has out d bigger than in d: \n {relevant_df}"
			if len(relevant_df) >= samples:
				chosen_df = relevant_df[:samples]
				assert len(chosen_df) == samples
				found_df = chosen_df[chosen_df["Result"] == "FOUND"][:samples]
				statistics_df_rows.append(
					{
					 "Number of Qubits": q,
					 "Depth": d,
					 "Runtime": f"${found_df["Runtime"].mean():.3f}\\pm{found_df["Runtime"].std():.3f}$",
					 "Rate": len(found_df) / len(chosen_df),
					}
				)
			else:
				max_seed = q_d_filtered_df["Seed"].max()
				gen_random_circ(circuits_path, q, d, 0.25, 0.5, 0, int(max_seed+1))
				done = False
				break
			d += 1

	print("Statistics:")
	statistics_df = pd.DataFrame(statistics_df_rows)
	statistics_df_to_print = statistics_df.pivot_table(values=["Rate", "Runtime"], index=["Depth"], columns="Number of Qubits", aggfunc="sum").swaplevel(0, 1, axis=1).sort_index(axis=1, level=0)
	print(statistics_df_to_print)
	statistics_df_to_print.to_latex(f"{results_path}/statistics.tex", index=True, float_format="%.1f", multicolumn_format="c", multirow=True, multicolumn=True, na_rep="")

	return done

# Example usage
if __name__ == "__main__":
	while not extract_numbers_from_folders():
		print()
		print(f"Printing Synthesis output to file ./syn_bench_tmp.out")
		os.system("./syn_bench.sh > ./syn_bench_tmp.out")
		print("Synthesis Finished")
		print()

