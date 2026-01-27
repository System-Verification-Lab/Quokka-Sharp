import os, copy
from .encoding.cnf import CNF
from subprocess import PIPE, Popen, TimeoutExpired
from .config import CONFIG
from .utils.utils import parse_wmc_result
import tempfile


tool_invocation = CONFIG["ToolInvocation"]
DEBUG           = CONFIG["DEBUG"]
TIMEOUT         = CONFIG["TIMEOUT"]
FPE             = CONFIG["FPE"]


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
    if abs(res - 1) < FPE:
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

import numpy as np

def solve_thetas(alpha, beta, atol=1e-9):
    """
    Solve (phi, theta, psi) such that
        U = Rz(phi) Rx(theta) Rz(psi)
    and
        U (alpha · Pauli) U† = X
        U (beta  · Pauli) U† = Z

    alpha, beta: length-3 arrays [X, Y, Z] coefficients
    returns: (phi, theta, psi)
    """

    alpha = np.asarray(alpha, dtype=float)
    beta  = np.asarray(beta,  dtype=float)

    # ---- sanity checks ----
    if not np.isclose(np.linalg.norm(alpha), 1.0, atol=atol):
        raise ValueError("alpha must be a unit vector.")
    if not np.isclose(np.linalg.norm(beta), 1.0, atol=atol):
        raise ValueError("beta must be a unit vector.")
    if not np.isclose(np.dot(alpha, beta), 0.0, atol=atol):
        raise ValueError("alpha and beta must be orthogonal.")

    # ------------------------------------------------------------
    # Step 1: choose theta, phi so that Rz(phi) Rx(theta) beta = Z
    # ------------------------------------------------------------
    # After Rx(theta):
    #   beta -> ( b0,
    #             b1 cosθ - b2 sinθ,
    #             b1 sinθ + b2 cosθ )
    #
    # We want Y = 0, Z = 1 after Rx, and then Z-rotation won't change Z.

    b0, b1, b2 = beta

    # Solve b1 sinθ + b2 cosθ = 1  -> aligns beta with Z
    theta = np.arctan2(b1, b2)

    s, c = np.sin(theta), np.cos(theta)

    # After Rx(theta), beta is already (b0, 0, 1) up to sign of b0
    # Now use Rz(phi) to kill X component
    # Rz(phi): (x,y) -> (x cosφ - y sinφ, x sinφ + y cosφ)
    # Here y = 0, so we want x cosφ = 0
    phi = np.pi / 2 if abs(b0) > atol else 0.0

    # ------------------------------------------------------------
    # Step 2: determine psi so that alpha goes to +X
    # ------------------------------------------------------------
    # First rotate alpha by Rz(phi) Rx(theta)
    def Rx(v):
        x, y, z = v
        return np.array([x, y*c - z*s, y*s + z*c])

    def Rz(v, ang):
        x, y, z = v
        ca, sa = np.cos(ang), np.sin(ang)
        return np.array([ca*x - sa*y, sa*x + ca*y, z])

    alpha1 = Rx(alpha)
    alpha2 = Rz(alpha1, phi)

    # Now alpha2 lies in XY plane (orthogonal to Z),
    # so choose psi to rotate it onto +X
    psi = -np.arctan2(alpha2[1], alpha2[0])

    return phi, theta, psi

def Repair(cnf: "CNF", i, cnf_file_root = tempfile.gettempdir()):
    res = check_entanglement(i, cnf, cnf_file_root)
    if res == True:
        return("cannot fix")
    else:
        alpha = res[0]; beta = res[1]
        theta_1, theta_2, theta_3 = solve_thetas(alpha, beta)
        return(theta_1, theta_2, theta_3)
        