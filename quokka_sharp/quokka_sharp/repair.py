import os, copy
from .encoding.cnf import CNF
from subprocess import PIPE, Popen, TimeoutExpired
from .config import CONFIG
from .utils.utils import parse_wmc_result
import tempfile


tool_invocation = CONFIG["ToolInvocation"]
DEBUG           = CONFIG["DEBUG"]
TIMEOUT         = CONFIG["TIMEOUT"]



def check_basis(i, start_basis, end_basis, cnf:'CNF', cnf_file_root):
    if DEBUG: print("index:", i)
    start_Z_or_X = start_basis == "Z"
    if end_basis == "Z":
        end_Z_or_X = True
    elif end_basis == "X":
        end_Z_or_X = False
    else:
        end_Z_or_X = 2
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.leftProjectZXi(start_Z_or_X, i)
    cnf_temp.rightProjectZXi(end_Z_or_X, i)
    if DEBUG: print(cnf_temp.cons_list)
    cnf_file = os.path.join(cnf_file_root, "quokka_entangle_check_"+ start_basis + "_" + end_basis + str(i) + ".cnf")
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def check_normalization(coeff_list):
    res = 0
    for i in coeff_list:
        res += i**2
    if DEBUG: print("normalization:", res)
    if res == 1:
        return True
    else:
        return False

def check_entanglement(i, cnf:'CNF', cnf_file_root):
    start   = ['X', 'Z']
    end     = ['X', 'Y', 'Z']
    coeff_X   = []
    coeff_Z   = []
    for start_basis in start:
        for end_basis in end:
            cnf_file = check_basis(i, start_basis, end_basis, cnf, cnf_file_root)
            tool_command = tool_invocation.split(' ')
            tool_file_command = tool_command + [cnf_file]
            if DEBUG: print(" ".join(tool_file_command))
            p = Popen(tool_file_command, stdout= PIPE, stderr=PIPE)
            try: 
                result = p.communicate(timeout = TIMEOUT)
                coeff = parse_wmc_result(result, square = cnf.square_result)
                if DEBUG: print(coeff)
                if start_basis == 'X':
                    # coeff_X.append({end_basis: coeff})
                    coeff_X.append(coeff)
                else:
                    # coeff_Z.append({end_basis: coeff})
                    coeff_Z.append(coeff)
            except TimeoutExpired:
                os.system("kill -9 " + str(p.pid))
                return "TIMEOUT"
    
    if DEBUG:         
        print("coeff_X:", coeff_X)
        print("coeff_Z:", coeff_Z)

    if check_normalization(coeff_X) and check_normalization(coeff_Z):
        return (coeff_X, coeff_Z)
    else:
        return True
    

import numpy as np

def solve_thetas(alpha, beta, atol=1e-9):
    """
    Solve theta_1, theta_2 such that
        Rz(theta_2) Rx(theta_1) (alpha · Pauli) -> X
        Rz(theta_2) Rx(theta_1) (beta  · Pauli) -> Z

    alpha, beta: length-3 arrays [X, Y, Z] coefficients
    returns: (theta_1, theta_2)
    """

    alpha = np.asarray(alpha, dtype=float)
    beta  = np.asarray(beta,  dtype=float)

    # ---- basic sanity checks ----
    if not np.isclose(beta[0], 0.0, atol=atol):
        raise ValueError("No solution: beta[0] must be 0.")

    if not np.isclose(np.linalg.norm(alpha), 1.0, atol=atol):
        raise ValueError("alpha must be a unit vector.")

    if not np.isclose(np.linalg.norm(beta), 1.0, atol=atol):
        raise ValueError("beta must be a unit vector.")

    if not np.isclose(np.dot(alpha, beta), 0.0, atol=atol):
        raise ValueError("alpha and beta must be orthogonal.")

    # ---- theta_1 from beta ----
    # beta = (0, sin(theta_1), cos(theta_1))
    theta_1 = np.arctan2(beta[1], beta[2])

    sin_t1 = np.sin(theta_1)

    # ---- theta_2 from alpha ----
    # alpha_0 = cos(theta_2)
    cos_t2 = alpha[0]

    if abs(sin_t1) > atol:
        sin_t2 = alpha[2] / sin_t1
    else:
        # theta_1 ≈ 0 or π → use alpha_1 instead
        sin_t2 = -alpha[1] / np.cos(theta_1)

    theta_2 = np.arctan2(sin_t2, cos_t2)

    return theta_1, theta_2

def Repair(cnf: "CNF", i, cnf_file_root = tempfile.gettempdir()):
    res = check_entanglement(i, cnf, cnf_file_root)
    if res == True:
        return("cannot fix")
    else:
        alpha = res[0]; beta = res[1]
        theta1, theta_2 = solve_thetas(alpha, beta)
        return(theta1, theta_2)
        