from .encoding.cnf import CNF
from .sim import Simulate
from .sim import FPE

def Verify(tool_path, cnf: "CNF", precons, postcons):
    """
    Function to verify a circuit with a pre-condition and postcondition
    Args:
        tool_path   :  the running command of the weighted model counter
        cnf         :  the encoded cnf of the input circuit
        precons     :  a dictionary specifying the pre-condition. The keys are qubit indices and the values are 0 or 1.
        postcons    :  a dictionary specifying the post-condition. The keys are qubit indices and the values are 0 or 1.
    Returns:
        result      :  "True" if the circuit is equivalent to the identity, "False" if not, "TIMEOUT" if the simulation times out.
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
