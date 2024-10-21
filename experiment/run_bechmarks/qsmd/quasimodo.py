import pyquasimodo

"""
    model_str : str -> {"CFLOBDD", "BDD", "WBDD"}
    numQubits: unsigned int
    seed: int
"""
def QuantumCircuit(model_str = "CFLOBDD", numQubits = 0, seed = 0):
    if model_str == "CFLOBDD":
        return pyquasimodo.CFLOBDDQuantumCircuit(numQubits, seed)
    elif model_str == "BDD":
        return pyquasimodo.BDDQuantumCircuit(numQubits, seed)
    elif model_str == "WBDD":
        return pyquasimodo.WeightedBDDQuantumCircuit(numQubits, seed)
    else:
        print ('Unsupported backend: ', model_str)
        exit(1)
QuantumCircuit("WBDD",3,3)