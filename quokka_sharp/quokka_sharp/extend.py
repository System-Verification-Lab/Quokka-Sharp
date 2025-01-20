from .encoding.qasm_parser import QASMparser
from .encoding.cnf import QASM2CNF
from .ecmc import CheckEquivalence
from .qcmc import Simulate

def circuit_encode(qasmfile1, qasmfile2):
    circuit1 = QASMparser(qasmfile1, True)
    circuit2 = QASMparser(qasmfile2, True)
    circuit2.dagger()
    return circuit1.append(circuit2)  


def ExactEqcheck(tool_path, qasmfile1, qasmfile2, basis = "paul", check_type = "2n"):       
    circuit = circuit_encode(qasmfile1, qasmfile2)
    cnf     = QASM2CNF(circuit, computational_basis = (basis == "comp"))
    res     = CheckEquivalence(tool_path, cnf, check = check_type)
    return res

def Fidelity(tool_path, qasmfile1, qasmfile2, basis = "comp"):
    circuit = circuit_encode(qasmfile1, qasmfile2)
    cnf     = QASM2CNF(circuit, computational_basis = (basis == "comp"))
    fidelity= CheckEquivalence(tool_path, cnf, check = "id", approx = True)
    return fidelity

def ApproxEqcheck(tool_path, qasmfile1, qasmfile2, epsilon, basis = "comp"):
    fid = Fidelity(tool_path, qasmfile1, qasmfile2, basis)
    if abs(fid - 1) < epsilon:
        return True
    else:
        return False
    
# solve nomalisation
def Verify(qasmfile, tool_path, precons, postcons, basis = "paul"):
    # ERROR if pre contains larger than N
    res     = True
    circuit = QASMparser(qasmfile, True)
    cnf     = QASM2CNF(circuit, computational_basis = (basis == "comp"))
    cnf.precondition(precons)
    cnf.postcondition(postcons)
    prob = Simulate(tool_path, cnf)
    print(prob)

def Ancilla(qasmfile,tool_path, ancilla):
    Verify(qasmfile, tool_path, ancilla, ancilla)