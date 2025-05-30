import os
import pandas as pd
import matplotlib.pyplot as plt
from itertools import cycle

from quokka_sharp.config import CONFIG

benchmark_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "benchmark")
results_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "results")
timeout = CONFIG["TIMEOUT"]
FPE = CONFIG["FPE"]

# Assign a unique colors
def cycle_colors():
	"""
	Cycle through a set of colors for plotting.
	
	Returns:
		cycle: A cycle object that yields colors.
	"""
	return cycle(plt.cm.tab10.colors)

def line_style_cycle():
	"""
	Cycle through a set of line styles for plotting.
	Returns:
		cycle: A cycle object that yields line styles.
	"""
	line_styles = ['-', '--', '-.', ':']
	return cycle(line_styles)

def get_tmp_folder_path():
	"""
	Get the path to the temporary folder.
	
	Returns:
		str: The path to the temporary folder.
	"""
	tmp_folder = os.path.join(os.path.dirname(os.path.realpath(__file__)), "tmp")
	os.makedirs(tmp_folder, exist_ok=True)
	return tmp_folder

def remove_tmp_folder():
	"""
	Remove the temporary folder and its contents.
	"""
	tmp_folder = get_tmp_folder_path()
	if os.path.exists(tmp_folder):
		for file in os.listdir(tmp_folder):
			file_path = os.path.join(tmp_folder, file)
			if os.path.isfile(file_path):
				os.remove(file_path)
		os.rmdir(tmp_folder)

def get_benchmark_path():
	"""
	Get the path to the benchmark directory.
	
	Returns:
		str: The path to the benchmark directory.
	"""
	return benchmark_path

def get_benchmark_files(benchmark_name):
	"""
	Get a list of benchmark files for a given benchmark name.
	
	Args:
		benchmark_name (str): The name of the benchmark.
		
	Returns:
		list: A list of file names in the benchmark directory.
	"""
	benchmark_folder = os.path.join(benchmark_path, benchmark_name, "origin")
	if not os.path.exists(benchmark_folder):
		raise FileNotFoundError(f"Benchmark folder '{benchmark_folder}' does not exist.")
	return [file for file in os.listdir(benchmark_folder) if file.endswith(".qasm")]

def get_file_path(file_name, mod, benchmark_folder_name):
	"""
	Get the full path of a file based on the modification type.
	
	Args:
		file (str): The name of the file.
		mod (str): The modification type (e.g., "origin", "opt", "gm").
		benchmark_path (str): The benchmark folder.
		
	Returns:
		str: The full path to the file.
	"""
	match mod:
		case "origin":
			return os.path.join(benchmark_path, benchmark_folder_name, "origin", file_name)
		case "opt":
			return os.path.join(benchmark_path, benchmark_folder_name, "opt", f"{file_name}.opt.qasm")
		case "gm":
			return os.path.join(benchmark_path, benchmark_folder_name, "gm", f"{file_name}.gm.qasm")
		case "flip":
			return os.path.join(benchmark_path, benchmark_folder_name, "flip", f"{file_name}.fp.qasm")
		case "shift4":
			return os.path.join(benchmark_path, benchmark_folder_name, "shift4", f"{file_name}.ps4.qasm")
		case "shift7":
			return os.path.join(benchmark_path, benchmark_folder_name, "shift7", f"{file_name}.ps7.qasm")
		case _:
			raise ValueError(f"Unknown modification: {mod}")
		
def get_results_file_path(results_file_name):
	"""
	Get the full path to the results file.
	
	Args:
		results_file_name (str): The name of the results file.
		
	Returns:
		str: The full path to the results file.
	"""
	return os.path.join(results_path, results_file_name)
		
def get_results_from_file(results_file_name, df_columns):
	"""
	Retrieve results from a CSV file or create an empty DataFrame if the file does not exist.
	Args:
		results_file_name (str): The name of the results file.
		df_columns (list): The columns for the DataFrame.
	Returns:
		pd.DataFrame: A DataFrame containing the results.
	"""
	results_file = get_results_file_path(results_file_name)
	if os.path.exists(results_file):
		results_df = pd.read_csv(results_file)
		# if missing columns, add them with NaN values
		for col in df_columns:
			if col not in results_df.columns:
				results_df[col] = pd.NA
	else:
		results_df = pd.DataFrame(columns=df_columns)

	return results_df

def save_results_to_file(results_file_name, results_df):
	"""
	Save the results DataFrame to a CSV file.
	
	Args:
		results_file_name (str): The name of the results file.
		results_df (pd.DataFrame): The DataFrame containing the results.
	"""
	results_file = get_results_file_path(results_file_name)
	os.makedirs(os.path.dirname(results_file), exist_ok=True)
	results_df.to_csv(results_file, index=False)

	
def get_data(data_dict, df):
	"""
	Retrieve data from the DataFrame based on the provided dictionary.
	
	Args:
		data_dict (dict): A dictionary containing the data to retrieve.
		df (pd.DataFrame): The DataFrame to search in.
		
	Returns:
		pd.DataFrame: A DataFrame containing the matching entries.
	"""
	def format_value(val):
		if isinstance(val, str):
			return f'"{val}"'
		return val
	query = " & ".join([f"{key} == {format_value(value)}" for key, value in data_dict.items()])
	enteries = df.query(query)
	assert len(enteries) <= 1, f"Expected at most one entry, but found {len(enteries)} for query: {query}\n{enteries}"
	return enteries

def data_exists(data_dict, df):
	"""
	Check if the data exists in the DataFrame.
	If a value is a string, wrap it in quotes for the query.
	Args:
		data_dict (dict): A dictionary containing the data to check.
		df (pd.DataFrame): The DataFrame to check against.
	Returns:
		bool: True if the data exists, False otherwise.
	"""
	enteries = get_data(data_dict, df)

	if enteries.empty:
		return False

	if (enteries["result"].values[0] == "TIMEOUT") and (enteries["time"].values[0] < timeout):
		return False
	
	return True

def add_result_to_df(data_dict, result, time_taken, df, memory=None):
	"""
	Add a new result to the DataFrame.
	
	Args:
		data_dict (dict): A dictionary containing the data to add.
		result (str): The result of the operation.
		time_taken (float): The time taken for the operation.
		df (pd.DataFrame): The DataFrame to add the result to.
		
	Returns:
		pd.DataFrame: The updated DataFrame with the new result.
	"""

	if result == "ERROR - unknown error":
		print("Error for data_dict\n", data_dict)
		return df

	new_data = data_dict.copy()
	new_data["result"] = str(result)
	new_data["time"] = time_taken
	if memory is not None:
		new_data["mem"] = memory
	new_df = pd.DataFrame([new_data])

	if df.empty:
		return new_df
	
	exsisting_data = get_data(data_dict, df)
	old_df = df
	if not exsisting_data.empty:
		old_df = old_df.drop(exsisting_data.index)

	return pd.concat([old_df, new_df], ignore_index=True)

