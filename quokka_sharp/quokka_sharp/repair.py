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

def solve_thetas(alpha, beta, atol=1e-9):
    """
    Find (phi, theta, psi) such that

        U = Rz(phi) Rx(theta) Rz(psi)

    satisfies, at the Bloch-vector level,

        U alpha = +X
        U beta  = +Z

    alpha and beta must be orthonormal 3D real vectors.
    """

    alpha = np.asarray(alpha, dtype=float)
    beta = np.asarray(beta, dtype=float)

    # ---------- sanity checks ----------
    if alpha.shape != (3,) or beta.shape != (3,):
        raise ValueError("alpha and beta must be length-3 vectors.")

    if not np.isclose(
        np.linalg.norm(alpha), 1.0, atol=atol, rtol=0.0
    ):
        raise ValueError("alpha must be a unit vector.")

    if not np.isclose(
        np.linalg.norm(beta), 1.0, atol=atol, rtol=0.0
    ):
        raise ValueError("beta must be a unit vector.")

    if not np.isclose(
        np.dot(alpha, beta), 0.0, atol=atol, rtol=0.0
    ):
        raise ValueError("alpha and beta must be orthogonal.")

    def apply_rz(v, angle):
        x, y, z = v
        c = np.cos(angle)
        s = np.sin(angle)
        return np.array([
            c * x - s * y,
            s * x + c * y,
            z,
        ])

    def apply_rx(v, angle):
        x, y, z = v
        c = np.cos(angle)
        s = np.sin(angle)
        return np.array([
            x,
            c * y - s * z,
            s * y + c * z,
        ])

    bx, by, bz = beta
    radial = np.hypot(bx, by)

    # ---------------------------------------------------------
    # 1. Choose psi so Rz(psi) beta lies in the YZ plane.
    # 2. Choose theta so Rx(theta) Rz(psi) beta = +Z.
    # ---------------------------------------------------------
    if radial > atol:
        # With this choice:
        # Rz(psi) beta = (0, radial, bz)
        psi = np.arctan2(bx, by)

        # Since beta is unit:
        # sin(theta) = radial, cos(theta) = bz
        theta = np.arctan2(radial, bz)

    else:
        # Euler singularity: beta is approximately +Z or -Z.
        # psi is not uniquely determined, so choose psi = 0.
        psi = 0.0
        theta = 0.0 if bz >= 0.0 else np.pi

    # ---------------------------------------------------------
    # 3. After the first two rotations, alpha lies in XY.
    #    Choose phi to rotate it onto +X.
    # ---------------------------------------------------------
    alpha_after_psi = apply_rz(alpha, psi)
    alpha_after_theta = apply_rx(alpha_after_psi, theta)

    phi = -np.arctan2(
        alpha_after_theta[1],
        alpha_after_theta[0],
    )

    def wrap_pi(angle):
        return (angle + np.pi) % (2.0 * np.pi) - np.pi

    phi = wrap_pi(phi)
    psi = wrap_pi(psi)

    # ---------- optional internal verification ----------
    transformed_alpha = apply_rz(
        apply_rx(apply_rz(alpha, psi), theta),
        phi,
    )
    transformed_beta = apply_rz(
        apply_rx(apply_rz(beta, psi), theta),
        phi,
    )

    if not np.allclose(
        transformed_alpha,
        np.array([1.0, 0.0, 0.0]),
        atol=10 * atol,
        rtol=0.0,
    ):
        raise RuntimeError(
            f"Failed to map alpha to X: {transformed_alpha}"
        )

    if not np.allclose(
        transformed_beta,
        np.array([0.0, 0.0, 1.0]),
        atol=10 * atol,
        rtol=0.0,
    ):
        raise RuntimeError(
            f"Failed to map beta to Z: {transformed_beta}"
        )

    return phi, theta, psi

def Repair(cnf: "CNF", i, cnf_file_root = tempfile.gettempdir()):
    res = check_entanglement(i, cnf, cnf_file_root)
    if res == True:
        return("cannot fix")
    else:
        alpha = res[0]; beta = res[1]
        theta_1, theta_2, theta_3 = solve_thetas(alpha, beta)
        return(theta_1, theta_2, theta_3)
        