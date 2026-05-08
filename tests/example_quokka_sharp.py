"""
example_quokka_sharp.py
=======================
A hands-on playground for Quokka-Sharp.

Edit the variables in each section, then run:

    python example_quokka_sharp.py

Each section is independent — comment out the ones you don't need.

Prerequisites
-------------
    pip install quokka_sharp
    export QUOKKA_CONFIG=/path/to/config.json

QASM files used here live in ./qasm_fixtures/.
You can also point any variable at your own .qasm file.
"""

import os
import decimal
import quokka_sharp as qk

# ── helpers ───────────────────────────────────────────────────────────────────

def to_float(v) -> float:
    """Convert Decimal / float / int to plain Python float."""
    return float(v)

FIXTURES = os.path.join(os.path.dirname(__file__), "qasm_fixtures")

def fixture(subdir: str, filename: str) -> str:
    return os.path.join(FIXTURES, subdir, filename)

def section(title: str):
    print()
    print("═" * 60)
    print(f"  {title}")
    print("═" * 60)

def result_line(label: str, value):
    print(f"  {label:<32} {value}")

# ══════════════════════════════════════════════════════════════════════════════
# 1.  SIMULATION
#     Compute the probability of a measurement outcome after running a circuit.
# ══════════════════════════════════════════════════════════════════════════════

section("1 · SIMULATION")

# ── What to change ────────────────────────────────────────────────────────────
#
# SIM_FILE       : path to your .qasm circuit file
# SIM_BASIS      : "comp"  – computational basis
#                  "pauli" – Pauli basis
# SIM_MEASUREMENT: "allzero"            – P(all qubits = 0)
#                  "firstzero"          – P(first qubit = 0)
#                  {qubit_index: 0or1}  – specific outcome, e.g. {0:1, 1:0}
#                  NOTE: dict measurement has a known library bug
#                  (Variables.projector missing var_curr argument).
#                  Use "allzero" / "firstzero" when possible.

SIM_FILE        = fixture("multi_qubit", "bell.qasm")   # ← change me
SIM_BASIS       = "comp"                                 # ← "comp" or "pauli"
SIM_MEASUREMENT = "allzero"                              # ← see options above

prob = qk.functionalities.sim(
    qasmfile    = SIM_FILE,
    basis       = SIM_BASIS,
    measurement = SIM_MEASUREMENT,
)

result_line("Circuit:",     os.path.basename(SIM_FILE))
result_line("Basis:",       SIM_BASIS)
result_line("Measurement:", SIM_MEASUREMENT)
result_line("Probability:", prob if prob in ("TIMEOUT", "MEMOUT")
                            else f"{to_float(prob):.10f}")

# ── More examples to try (uncomment one at a time) ────────────────────────────
#
# H gate: superposition → P(0) = 0.5
# SIM_FILE = fixture("single_qubit", "h.qasm"); SIM_MEASUREMENT = "allzero"
#
# X gate: bit-flip → P(0) = 0.0
# SIM_FILE = fixture("single_qubit", "x.qasm"); SIM_MEASUREMENT = "allzero"
#
# HH = identity → P(0) = 1.0
# SIM_FILE = fixture("single_qubit", "hh.qasm"); SIM_MEASUREMENT = "allzero"
#
# GHZ state: P(000) = 0.5
# SIM_FILE = fixture("multi_qubit", "ghz_3q.qasm"); SIM_MEASUREMENT = "allzero"
#
# Bell Psi- in Pauli basis: P(allzero) = 0.0
# SIM_FILE = fixture("multi_qubit", "bell_psi_minus.qasm")
# SIM_BASIS = "pauli"; SIM_MEASUREMENT = "allzero"
#
# Your own circuit:
# SIM_FILE = "/path/to/my_circuit.qasm"; SIM_MEASUREMENT = "allzero"


# ══════════════════════════════════════════════════════════════════════════════
# 2.  VERIFICATION
#     Check that a circuit maps a given input state to a given output state.
# ══════════════════════════════════════════════════════════════════════════════

section("2 · VERIFICATION")

# ── What to change ────────────────────────────────────────────────────────────
#
# VER_BASIS : "comp"  – computational basis
#             "pauli" – Pauli basis
#
# Computational basis — pre/postcons use integer values:
#   {qubit_index: 0_or_1}   e.g. {0: 0, 1: 1}
#
# Pauli basis — pre/postcons use stabilizer strings:
#   "Z"  → |0⟩  (+Z eigenstate)
#   "-Z" → |1⟩  (-Z eigenstate)
#   "X"  → |+⟩  (+X eigenstate)
#   "-X" → |−⟩  (-X eigenstate)
#   "Y"  → |i+⟩ (+Y eigenstate)
#   "I"  → unconstrained (any state)
#
# Result: True  → circuit always maps precons → postcons
#         False → it does NOT

VER_FILE     = fixture("verify", "v04_cx_control1.qasm")  # ← change me
VER_BASIS    = "comp"                                      # ← "comp" or "pauli"
VER_PRECONS  = {0: 0, 1: 0}                               # ← input  state
VER_POSTCONS = {0: 1, 1: 1}                               # ← output state

verified = qk.functionalities.verify(
    VER_FILE,
    basis    = VER_BASIS,
    precons  = VER_PRECONS,
    postcons = VER_POSTCONS,
)

result_line("Circuit:",       os.path.basename(VER_FILE))
result_line("Basis:",         VER_BASIS)
result_line("Precondition:",  VER_PRECONS)
result_line("Postcondition:", VER_POSTCONS)
result_line("Result:",        verified)

# ── More examples to try (uncomment one at a time) ────────────────────────────
#
# ── Computational basis ──
#
# X flips the qubit → True
# VER_FILE = fixture("verify", "v01_x_flip.qasm")
# VER_PRECONS = {0: 0}; VER_POSTCONS = {0: 1}
#
# X, wrong postcondition → False
# VER_FILE = fixture("verify", "v01_x_flip.qasm")
# VER_PRECONS = {0: 0}; VER_POSTCONS = {0: 0}
#
# Toffoli with both controls set → target flips → True
# VER_FILE = fixture("verify", "v06_toffoli_flip.qasm")
# VER_PRECONS = {0: 0, 1: 0, 2: 0}; VER_POSTCONS = {0: 1, 1: 1, 2: 1}
#
# ── Pauli basis, stabilizer strings ──
#
# H maps Z-eigenstate to X-eigenstate: |0⟩ → |+⟩ → True
# VER_FILE = fixture("single_qubit", "h.qasm")
# VER_BASIS = "pauli"; VER_PRECONS = {0: "Z"}; VER_POSTCONS = {0: "X"}
#
# H does NOT preserve Z-stabilizer → False
# VER_FILE = fixture("single_qubit", "h.qasm")
# VER_BASIS = "pauli"; VER_PRECONS = {0: "Z"}; VER_POSTCONS = {0: "Z"}
#
# X maps Z to -Z: |0⟩ → |1⟩ → True
# VER_FILE = fixture("single_qubit", "x.qasm")
# VER_BASIS = "pauli"; VER_PRECONS = {0: "Z"}; VER_POSTCONS = {0: "-Z"}
#
# X commutes with X-stabilizer: |+⟩ → |+⟩ → True
# VER_FILE = fixture("single_qubit", "x.qasm")
# VER_BASIS = "pauli"; VER_PRECONS = {0: "X"}; VER_POSTCONS = {0: "X"}
#
# S maps X to Y: |+⟩ → |i+⟩ → True
# VER_FILE = fixture("single_qubit", "s.qasm")
# VER_BASIS = "pauli"; VER_PRECONS = {0: "X"}; VER_POSTCONS = {0: "Y"}
#
# CNOT: control in |0⟩ → target X-stab unchanged → True
# VER_FILE = fixture("multi_qubit", "cx_q0q1.qasm")
# VER_BASIS = "pauli"
# VER_PRECONS = {0: "Z", 1: "X"}; VER_POSTCONS = {0: "Z", 1: "X"}
#
# CNOT entangles: q[0] alone no longer X-stabilized → False
# VER_FILE = fixture("multi_qubit", "cx_q0q1.qasm")
# VER_BASIS = "pauli"
# VER_PRECONS = {0: "Z", 1: "X"}; VER_POSTCONS = {0: "X", 1: "I"}


# ══════════════════════════════════════════════════════════════════════════════
# 3.  EQUIVALENCE CHECKING
#     Decide whether two circuits implement the same unitary.
# ══════════════════════════════════════════════════════════════════════════════

section("3 · EQUIVALENCE CHECKING")

# ── What to change ────────────────────────────────────────────────────────────
#
# EQ_BASIS  : "comp"   → use EQ_CHECK = "cyclic"
#             "pauli"  → use EQ_CHECK = "linear"
# EQ_EPSILON: 0 for exact equivalence

EQ_FILE1   = fixture("equiv_pairs", "eq1_hh.qasm")       # ← change me
EQ_FILE2   = fixture("equiv_pairs", "eq1_identity.qasm")  # ← change me
EQ_BASIS   = "comp"                                        # ← "comp" or "pauli"
EQ_CHECK   = "cyclic"                                      # ← "cyclic" or "linear"
EQ_EPSILON = 0                                             # ← 0 for exact

equiv = qk.functionalities.eq(
    EQ_FILE1,
    EQ_FILE2,
    basis   = EQ_BASIS,
    check   = EQ_CHECK,
    epsilon = EQ_EPSILON,
)

result_line("Circuit A:",  os.path.basename(EQ_FILE1))
result_line("Circuit B:",  os.path.basename(EQ_FILE2))
result_line("Basis:",      EQ_BASIS)
result_line("Check mode:", EQ_CHECK)
result_line("Equivalent:", equiv)

# ── More examples to try (uncomment one at a time) ────────────────────────────
#
# SS = Z  →  True
# EQ_FILE1 = fixture("equiv_pairs", "eq2_ss.qasm")
# EQ_FILE2 = fixture("equiv_pairs", "eq2_z.qasm")
# EQ_BASIS = "pauli"; EQ_CHECK = "linear"
#
# HXH = Z  →  True
# EQ_FILE1 = fixture("equiv_pairs", "eq3_hxh.qasm")
# EQ_FILE2 = fixture("equiv_pairs", "eq3_z.qasm")
#
# 3-CNOT SWAP = built-in SWAP  →  True
# EQ_FILE1 = fixture("equiv_pairs", "eq5_3cx_swap.qasm")
# EQ_FILE2 = fixture("equiv_pairs", "eq5_swap.qasm")
#
# H vs X  →  False
# EQ_FILE1 = fixture("equiv_pairs", "neq1_h.qasm")
# EQ_FILE2 = fixture("equiv_pairs", "neq1_x.qasm")
#
# H vs HS  →  False
# EQ_FILE1 = fixture("equiv_pairs", "neq2_h.qasm")
# EQ_FILE2 = fixture("equiv_pairs", "neq2_hs.qasm")
# EQ_BASIS = "pauli"; EQ_CHECK = "linear"
#
# Your own circuits:
# EQ_FILE1 = "/path/to/circuit_a.qasm"
# EQ_FILE2 = "/path/to/circuit_b.qasm"


# ══════════════════════════════════════════════════════════════════════════════
# 4.  SYNTHESIS
#     Find the shortest circuit implementing a target unitary from a gate set.
#
#     Synthesis works in the Pauli basis only.
#     Requires a maximum WMC solver (e.g. d4max) in your config.json.
# ══════════════════════════════════════════════════════════════════════════════

section("4 · SYNTHESIS")

# ── What to change ────────────────────────────────────────────────────────────
#
# SYN_FILE        : target circuit (the unitary you want to re-implement)
# SYN_GATE_SET    : allowed gates — any subset of {"h", "cx", "s", "t", "cz"}
# SYN_FID         : target fidelity — 1.0 for exact synthesis
# SYN_FILES_ROOT  : directory for intermediate CNF files (will be created)
# SYN_CYC_LIN_ENC : True uses cyclic+linear encoding (recommended)
#
# Returns (outcome, weight, qasm_string, layers):
#   outcome : "FOUND" | "TIMEOUT" | "CRASH" | "ERROR#"
#   weight  : achieved fidelity (1.0 when FOUND with fid=1.0)
#   qasm_str: synthesised circuit as a QASM string
#   layers  : circuit depth of the solution

SYN_FILE        = fixture("synthesis", "syn01_h_target.qasm")  # ← change me
SYN_GATE_SET    = {"h", "cx", "s"}                             # ← change me
SYN_FID         = 1.0                                          # ← 1.0 for exact
SYN_FILES_ROOT  = "tmp"                                        # ← writable dir
SYN_CYC_LIN_ENC = True                                         # ← recommended

os.makedirs(SYN_FILES_ROOT, exist_ok=True)

outcome, weight, qasm_str, layers = qk.functionalities.syn(
    SYN_FILE,
    basis            = "pauli",
    fid              = SYN_FID,
    files_root       = SYN_FILES_ROOT,
    cyc_lin_encoding = SYN_CYC_LIN_ENC,
    gate_set         = SYN_GATE_SET,
)

result_line("Target circuit:",    os.path.basename(SYN_FILE))
result_line("Gate set:",          str(SYN_GATE_SET))
result_line("Target fidelity:",   SYN_FID)
result_line("Outcome:",           outcome)
result_line("Achieved fidelity:", f"{float(weight):.6f}" if weight is not None else "—")
result_line("Depth (layers):",    layers)

if outcome == "FOUND" and qasm_str:
    print()
    print("  Synthesised circuit:")
    print("  " + "-" * 50)
    for line in qasm_str.strip().splitlines():
        print(f"    {line}")
    print("  " + "-" * 50)

# ── More examples to try (uncomment one at a time) ────────────────────────────
#
# Synthesise X using {h, cx, s}
# SYN_FILE = fixture("synthesis", "syn02_x_target.qasm")
# SYN_GATE_SET = {"h", "cx", "s"}
#
# Synthesise Z using {h, cx, s}  — should find S S
# SYN_FILE = fixture("synthesis", "syn03_z_target.qasm")
# SYN_GATE_SET = {"h", "cx", "s"}
#
# Synthesise T using {h, cx, t}
# SYN_FILE = fixture("synthesis", "syn05_t_target.qasm")
# SYN_GATE_SET = {"h", "cx", "t"}
#
# Synthesise Bell state prep using {h, cx, s}
# SYN_FILE = fixture("synthesis", "syn07_bell_target.qasm")
# SYN_GATE_SET = {"h", "cx", "s"}
#
# Your own target:
# SYN_FILE = "/path/to/my_target.qasm"
# SYN_GATE_SET = {"h", "cx", "s", "t"}

print()