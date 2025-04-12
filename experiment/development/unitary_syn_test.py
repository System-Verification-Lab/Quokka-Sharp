import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import os
import pandas as pd
import numpy as np

from eq_run import main as eq_check
I = np.array([[1, 0], 
              [0, 1]])

H = np.array([[1/np.sqrt(2), 1/np.sqrt(2)], 
              [1/np.sqrt(2), -1/np.sqrt(2)]])

T = np.array([[1, 0],
              [0, np.exp(1j * np.pi / 4)]])

CNOT = np.array([[1, 0, 0, 0],
                [0, 0, 0, 1],
                [0, 0, 1, 0],
                [0, 1, 0, 0]])

CNOT_flip = np.array([[1, 0, 0, 0],
                    [0, 1, 0, 0],
                    [0, 0, 0, 1],
                    [0, 0, 1, 0]])

CCX = np.array([[1, 0, 0, 0, 0, 0, 0, 0],
                [0, 1, 0, 0, 0, 0, 0, 0],
                [0, 0, 1, 0, 0, 0, 0, 0],
                [0, 0, 0, 1, 0, 0, 0, 0],
                [0, 0, 0, 0, 1, 0, 0, 0],
                [0, 0, 0, 0, 0, 1, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 1],
                [0, 0, 0, 0, 0, 0, 1, 0]])

CH = np.array([[1, 0, 0, 0],
               [0, 1, 0, 0],
               [0, 0, 1/np.sqrt(2), 1/np.sqrt(2)],
               [0, 0, 1/np.sqrt(2), -1/np.sqrt(2)]])


basic_gates = [
    # ["H", H],
    # ["CNOT", CNOT]
    # ["T", T],
    # ["htht", H @ T @ H @ T],
    # ["hh",  CNOT]
    ["ccx", CCX],
    ["ch", CH]
]

for gate in basic_gates:
    U = gate[1].conj().T
    cnf = qk.encoding.CNF(computational_basis=True, unitary_encoding=True, Unitary=U)
    helper_folder = "./syn_cnf_files/" + "Unitary" + gate[0] + "/"
    print(helper_folder)
    if not os.path.exists(helper_folder):
        os.mkdir(helper_folder)

    tool_path = "../../d4v2/build/maxT_static "
    # glb_st = time.time()
    res, weight, sol, layers = qk.Synthesis(tool_path, cnf, cnf_file_root=helper_folder, fidelity_threshold=1, bin_search=False, initial_depth=0, onehot_xz = False, h_sandwich=False)
    # glb_et = time.time()