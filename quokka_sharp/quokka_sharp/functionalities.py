import quokka_sharp as qk

class functionalities:
	def eq(qasmfile1, qasmfile2, basis, check, N = 1): 
		"""
		Compare two quantum circuits given in QASM format.
		:param qasmfile1: Path to the first QASM file.
		:param qasmfile2: Path to the second QASM file.
		:param basis: The basis to use for the comparison, either "comp" for computational basis or "pauli" for Pauli basis.
		:param check: The type of check to use, either "cyclic", "linear", or "cyclic_linear". Must be "cyclic" if basis is "comp".
		:param N: The number of parallel calles to the WMC, relevant only if check is "linear".
		:return: Boolean indicating whether the two circuits are equivalent.
		"""
		# Parse the circuit
		circuit1 = qk.encoding.QASMparser(qasmfile1, True)
		# Parse another circuit
		circuit2 = qk.encoding.QASMparser(qasmfile2, True)
		# Get (circuit1)^dagger(circuit2)
		circuit2.dagger()
		circuit1.append(circuit2)
		# Get CNF for the merged circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
		cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"))
		# "id" or "2n"
		return qk.CheckEquivalence(cnf, check = check, N = N)
	
	def sim(qasmfile, basis, measurement): 
		"""
		Simulate a quantum circuit given in QASM format.
		:param qasmfile: Path to the QASM file.
		:param basis: The basis to use for the simulation, either "comp" for computational basis or "pauli" for Pauli basis.
		:param measurement: The type of measurement to compute the probability for, either "allzero", "firstzero", or a dictionary with qubit indices and their expected values.
		:return: Simulation result, a float representing the probability of the measurement outcome.
		"""
		# Parse the circuit
		circuit1 = qk.encoding.QASMparser(qasmfile, True)  # TODO: instead of hardcoded true paramater; use CCX in computational basis
		# Encode the circuit
		cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"), weighted=True)
		cnf.leftProjectAllZero()
		cnf.add_measurement(measurement)
		return qk.Simulate(cnf)
	
	def syn(qasmfile, basis, cyc_lin_encoding=False, fid=1, files_root=None): 
		"""
		Synthesize a quantum circuit given in QASM format.
		:param qasmfile: Path to the QASM file.
		:param basis: The basis to use for the synthesis, either "comp" for computational basis or "pauli" for Pauli basis.
		:param cyc_lin_encoding: Whether to use the cyclic linear encoding, relevant only for the Pauli basis.
		:param fid: Fidelity threshold for the synthesis.
		:param files_root: Root directory for the cnf and MWMC output files.
		:return: A tuple with four elements:
			- outcome(str): The outcome of the synthesis, which can be "FOUND", "TIMEOUT", or "CRASH".
			- weight(float): The weight of the best synthesized circuit.
			- qasm(str): A QASM representation of the synthesized circuit.
			- layers(int): The number of layers in the synthesized circuit.
		"""
		circuit = qk.encoding.QASMparser(qasmfile, True)
		circuit.dagger()
		cnf = qk.encoding.QASM2CNF(circuit, computational_basis = (basis == "comp"))

		return qk.Synthesis(cnf, onehot_xz = cyc_lin_encoding, fidelity_threshold = fid, cnf_file_root=files_root)
        
	def veri(qasmfile, basis, precons, postcons): 
		"""
		Verify a quantum circuit given in QASM format against preconditions and postconditions.
		:param qasmfile: Path to the QASM file.
		:param basis: The basis to use for the verification, either "comp" for computational basis or "pauli" for Pauli basis.
		:param precons: A dictionary with qubit indices and their expected values describing the preconditions to enforce before the circuit execution.
		:param postcons:A dictionary with qubit indices and their expected values describing the postconditions to check after the circuit execution.
		:return: Verification result, which can be "True", "False", or "TIMEOUT".
		"""
		# Parse the circuit
		circuit = qk.encoding.QASMparser(qasmfile, True)
		# Get CNF for the merged circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
		cnf = qk.encoding.QASM2CNF(circuit, computational_basis = (basis == "comp"))
		# "id" or "2n"
		res = qk.Verify(cnf, precons, postcons)
		return res