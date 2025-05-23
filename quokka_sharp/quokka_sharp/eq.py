import copy
import os
import random
import tempfile
from subprocess import PIPE, Popen
import traceback

from .encoding.cnf import CNF
from .utils.utils import parse_wmc_result
from .utils.timeout import timeout, TimeoutException, MemoutError
from .config import CONFIG

from decimal import Decimal, getcontext

# Global constants from config
DEBUG           = CONFIG["DEBUG"]
TIMEOUT         = CONFIG["TIMEOUT"]
tool_invocation = CONFIG["ToolInvocation"]
FPE             = CONFIG["FPE"]
precision       = CONFIG["Precision"]

getcontext().prec = precision

procdict = {}

# define Python user-defined exceptions
class InvalidProcessNumException(Exception):
    "Raised when the process number is invalid"
    pass


def get_result(result, expected_prob, sqaure):
    """
    Analyse the weighted model counting result to decide the circuits are equivalent or not:
    if the result matches the expected probablity then the circuits are equivalent otherwise they are not.
    Args:
        result                :  the output of the weighted model counter
        expected_prob         :  the expected probablity before normalization, where the probability P = 2^n in computational basis and P = 4^n in Pauli basis
        sqaure                :  if it is true, we take square o the absolute value of the probablity, and if it is false, we take the absolute value of the original value.
    Returns:
        True if the circuits are equivalent otherwise False
    """
    prob = parse_wmc_result(result, sqaure)
    if DEBUG: print("probability:", prob)
    if prob == -1:
        raise MemoutError
    if abs(prob - expected_prob) < (expected_prob * Decimal(FPE)):
        return True
    else:
        return False

def basis(i, Z_or_X, cnf:'CNF', cnf_file_root):
    """
    Create cnf file for each of the basis in the linear check
    Args:
        i         :  the index of the qubit
        Z_or_X    :  True if in Z basis otherwise in X basis
        cnf       :  the encoded CNF object of a circuit
        cnf_file_root : the path where the current cnf file will be stored.
    Returns:
        cnf_file  :  the path of the generated cnf file
    """
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.rightProjectZXi(Z_or_X, i)
    cnf_temp.leftProjectZXi(Z_or_X, i)

    cnf_file = os.path.join(cnf_file_root, "quokka_eq_check_"+ ("Z" if Z_or_X else "X") + str(i) + ".cnf")
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def identity_check(cnf:'CNF', cnf_file_root, constrain_2n = False, constrain_no_Y = False):
    """
    Add idenity clauses to the encoding
    Args:
        cnf       :  the encoded CNF object of a circuit
        cnf_file_root : the path where the current cnf file will be stored.
        constrain_2n: True if the user is performing linear check otherwise false
        constrain_no_Y: True if omit Pauli strings containing Y  otherwise False
    Returns:
        cnf_file  :  the path of the generated cnf file
    """
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses(constrain_2n = constrain_2n, constrain_no_Y = constrain_no_Y)

    cnf_file = os.path.join(cnf_file_root, f"quokka_eq_check_identity_{random.random()}.cnf")
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def CheckEquivalence(cnf: 'CNF', cnf_file_root = tempfile.gettempdir(), check = "cyclic", N=16):
    """
    Check if the given circuit is equivalent to the identity
    Args:
        cnf             : the encoded cnf of the given circuit
        cnf_file_root   : the path where the all cnf files are stored.
        check           : types of equivalence checking encoding: either cyclic or linear
        N               : the number of threads running in parral (only useful when checking type is linear)
    Returns:
        True if the circuits are equivalent otherwise False
    """
    global procdict  # make sure handler sees this
    
    if DEBUG: print()
    if DEBUG: print(f"comp: {cnf.computational_basis}, check: {check}")

    try:
        cnf_file_list = []
        procdict = {}
        def cleanup():
            for p in procdict.values():
                try:
                    p.kill()
                except Exception:
                    pass
        with timeout(TIMEOUT, on_timeout=cleanup):
            if check == "cyclic":
                if N > 1:
                    raise InvalidProcessNumException
                cnf_file_list.append(identity_check(cnf, cnf_file_root, constrain_2n = False))
                if cnf.computational_basis:
                    expected_prob = Decimal(2**cnf.n)
                    expected_abs_value = False
                else:
                    expected_prob = Decimal(4**cnf.n)
                    expected_abs_value = False
            elif (check == "cyclic_linear") or (check == "cyc_lin"):
                if N > 1:
                    raise InvalidProcessNumException
                cnf_file_list.append(identity_check(cnf, cnf_file_root, constrain_2n = True))
                expected_prob = Decimal(2*cnf.n)
                expected_abs_value = False
            elif check == "cyclic_noY":
                if N > 1:
                    raise InvalidProcessNumException
                cnf_file_list.append(identity_check(cnf, cnf_file_root, constrain_no_Y = True))
                expected_prob = Decimal(3**cnf.n)
                expected_abs_value = False
            elif check == "linear":
                if cnf.computational_basis:
                    assert False, "2n check is not supported for computational basis"
                else:
                    for i in range(cnf.n):
                        cnf_file_list.append(basis(i, True, cnf, cnf_file_root))
                        cnf_file_list.append(basis(i, False, cnf, cnf_file_root))
                    expected_prob = 1
                    expected_abs_value = False
            else:
                raise ValueError(f"Invalid check type {check}")
            if DEBUG: print(f"expected: {expected_prob}")

            result = True
            tool_command = tool_invocation.split(' ')
            # parallel processes
            # N = 16
            while True:
                procdict = {}
                length = len(cnf_file_list)
                for i in range(min(N, length)):
                    cnf_file = cnf_file_list[i]
                    tool_file_command = tool_command + [cnf_file]
                    if DEBUG: print(" ".join(tool_file_command))
                    p = Popen(tool_file_command, stdout= PIPE, stderr=PIPE)
                    procdict[p.pid] = p
                if len(procdict) == 0:
                    break
                while True:
                    pid, _ = os.wait()
                    if pid in procdict.keys():
                        res = procdict[pid].communicate()
                        result = get_result(res[0], expected_prob, expected_abs_value)
                        if result != True:
                            break
                        else:
                            procdict.pop(pid)
                    if len(procdict) == 0:
                        break

                if result != True:
                    break

                if length > N:
                    cnf_file_list = cnf_file_list[N: length]
                else:
                    break
            procdict = {}
            return result
    except TimeoutException:
        return "TIMEOUT"
    except InvalidProcessNumException:
        return "ERROR - bad process number"
    except Exception:
        print(traceback.format_exc())
        return "ERROR - unknown error"
    finally:
        for pid in procdict.keys():
            try:
                procdict[pid].kill()
                procdict[pid].communicate()
            except Exception:
                pass
        procdict = {}