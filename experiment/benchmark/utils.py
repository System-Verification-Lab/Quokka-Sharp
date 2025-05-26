import os

benchmark_path = os.path.join(os.path.dirname(os.path.realpath(__file__)))

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
		
