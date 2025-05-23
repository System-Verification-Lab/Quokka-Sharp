import quokka_sharp as qk

class functionalities:
	def eq(qasmfile1, qasmfile2, basis, check, N = 1): 
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
	
	def sim(qasmfile, basis, meas): 
		# Parse the circuit
		circuit1 = qk.encoding.QASMparser(qasmfile, True)
		# Encode the circuit
		cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"), weighted=True)
		cnf.leftProjectAllZero()
		cnf.add_measurement(meas)
		return qk.Simulate(cnf)
	
	def syn(qasmfile, basis, fid): 
		circuit = qk.encoding.QASMparser(qasmfile, True)
		circuit.dagger()
		cnf = qk.encoding.QASM2CNF(circuit, computational_basis = (basis == "comp"))

		return qk.Synthesis(cnf, onehot_xz = False, printing = True, fidelity_threshold = fid) #((fid == 1) and (basis == "pauli"))
        
	def veri(qasmfile, basis): 
		# Parse the circuit
		circuit = qk.encoding.QASMparser(qasmfile, True)
		# Get CNF for the merged circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
		cnf = qk.encoding.QASM2CNF(circuit, computational_basis = (basis == "comp"))
		# "id" or "2n"
		res = qk.Verify(cnf)
		return res