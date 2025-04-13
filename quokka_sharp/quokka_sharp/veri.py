from .encoding.qasm_parser import QASMparser
from .encoding.cnf import QASM2CNF
from .qcmc import Simulate
from .qcmc import FPE

def Verify(tool_path, cnf: "CNF", precons, postcons):
    """
    Function to verify a circuit with a pre-condition and postcondition
    Args:
        tool_path   :  the running command of the weighted model counter
        cnf         :  the encoded cnf of the input circuit
        precons     :  a dictionary specifying the pre-condition. The keys are qubit indices and the values are 0 or 1.
        postcons    :  a dictionary specifying the post-condition. The keys are qubit indices and the values are 0 or 1.
    """
    cnf.precondition(precons)
    cnf.postcondition(postcons)
    prob = Simulate(tool_path, cnf)
    if type(prob) is str:
        return prob
    if abs(prob - 1) < FPE:
        return "True"
    else:
        return "False"
