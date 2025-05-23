import os, time
import pandas as pd
import quokka_sharp as qk
import re

benchmarks_list_file = os.path.join(os.path.dirname(os.path.realpath(__file__)), "benchmarks_list.txt")
# benchmark_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "benchmark", "algorithm")
benchmark_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "benchmark", "random", "uniform")

org_path = os.path.join(benchmark_path, "origin")

def get_full_path(file, mod):
	match mod:
		case "origin":
			return os.path.join(org_path, file)
		case "opt":
			return os.path.join(benchmark_path, "opt", file+".opt.qasm")
		case "gm":
			return os.path.join(benchmark_path, "gm", file+".gm.qasm")
		case _:
			raise ValueError(f"Unknown modification: {mod}")


results_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "results")
results_file = os.path.join(results_path, f"eq_results.csv")

if os.path.exists(results_file):
	results_df = pd.read_csv(results_file)
else:
	results_df = pd.DataFrame(columns=["name", "qubits", "mod", "basis", "check", "result", "time"])

if benchmarks_list_file:
	with open(benchmarks_list_file) as file:
		benchmarks_list = [line.rstrip() for line in file]
else:
	# Filter out files that are not .qasm
	benchmarks_list = [file for file in os.listdir(org_path) if file.endswith(".qasm")]

cnt = 0
for file in benchmarks_list:
	cnt += 1
	print(f"Processing ({cnt}/{len(benchmarks_list)}) {file} \t", end="")
	origin_file = get_full_path(file, "origin")
	name = file.replace(".qasm", "")
	if "_nativegates_ibm_qiskit_opt0_" in file:
		name, numqubits = name.split("_nativegates_ibm_qiskit_opt0_")
	else:
		qubits, deepth, seed = tuple(map(int, re.compile(r"random_q(\d+)_d(\d+)_s(\d+)").match(name).groups()))
		name, numqubits = (deepth, seed), qubits
	for modification in ["opt", "gm"]:
		print(f"  {modification} ", end="")
		mod_file = get_full_path(file, modification)
		for basis, check in [("comp", "cyclic"), ("pauli", "cyclic"), ("pauli", "linear"), ("pauli", "cyc_lin")]:
			enteries = results_df[(results_df["name"] == name) & (results_df["qubits"] == numqubits) & (results_df["mod"] == modification) & (results_df["basis"] == basis) & (results_df["check"] == check)]
			assert len(enteries) <= 1
			if len(enteries) == 1:
				if enteries["result"].values[0] == "TIMEOUT" and enteries["time"].values[0] < 1:
					results_df = results_df.drop(enteries.index[0])
				else:
					continue
			# Run the equivalence check

			start_time = time.time()
			result = qk.functionalities.eq(origin_file, mod_file, basis, check, N=(1 if check != "liniar" else 16))
			end_time = time.time()
			# Save the result
			result_df = pd.DataFrame([{
				"name": name,
				"qubits": numqubits,
				"mod": modification,
				"basis": basis,
				"check": check,
				"result": result,
				"time": end_time - start_time
			}])

			if results_df.empty:
				results_df = result_df
			else:
				results_df = pd.concat([results_df, result_df], ignore_index=True)
	print("")

# # Save the results to a file
# os.makedirs(results_path, exist_ok=True)
# results_df.to_csv(results_file, index=False)

# Print the results
print(results_df)


