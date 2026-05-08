# Quokka-Sharp

Quokka-Sharp is a quantum circuit tool based on model counting. It provides four functionalities: **Simulate**, **Verify**, **Equivalence Checking**, and **Synthesis**.
---

## Prerequisites

Install the solvers required by Quokka-Sharp:

- **GPMC** (simulation, verification, equivalence): [GPMC on GitHub](https://github.com/System-Verification-Lab/GPMC)
- **Ganak** (alternative WMC solver): [Ganak releases](https://github.com/meelgroup/ganak/releases/tag/release%2F2.4.4)
- **d4max** (synthesis only): [d4v2 on GitHub](https://github.com/jm62300/d4)

Then install Quokka-Sharp:

```bash
pip install quokka_sharp
```

---

## Configuration

Copy the template and edit it to point at your solver binaries:

```bash
cp config.example.json config.json
```

**For GPMC (simulation / verification / equivalence):**
```json
{
  "DEBUG": false,
  "TIMEOUT": 300,
  "ToolInvocation": "/path/to/gpmc -mode=1",
  "GetResult": "exact.double.prec-sci.(.+?)\\nc s",
  "FPE": 1e-12
}
```

**For Ganak:**
```json
{
  "DEBUG": false,
  "TIMEOUT": 1,
  "ToolInvocation": "/path/to/ganak --mode=6",
  "GetResult": "c s exact arb cpx (.+?)\\nc",
  "FPE": 1e-12
}
```

**For d4max (synthesis):**
```json
{
  "DEBUG": true,
  "TIMEOUT": 1000,
  "ToolInvocation": "/path/to/gpmc -mode=1",
  "D4ToolInvocation": "/path/to/d4maxT",
  "GetResult": "exact.double.prec-sci.(.+?)\\nc s",
  "FPE": 1e-12,
  "Precision": 32
}
```

Set the environment variable before running anything:

```bash
export QUOKKA_CONFIG=/path/to/config.json
```

---

## Usage

Quokka-Sharp exposes four high-level functions. All circuits must be in [QASM format](https://openqasm.com/).

### Simulation

Compute the probability of a measurement outcome after executing a circuit.

```python
import quokka_sharp as qk

prob = qk.functionalities.sim(
    qasmfile="circuit.qasm",
    basis="comp",           # "comp" (computational) or "pauli"
    measurement="allzero"   # "allzero", "firstzero", or {qubit: 0_or_1}
)
# Returns a float, "TIMEOUT", or "MEMOUT"
```

### Verification

Check that a circuit maps a given input state to a given output state.

```python
# Computational basis — integer values
res = qk.functionalities.verify(
    "circuit.qasm",
    basis="comp",
    precons={0: 0, 1: 0},   # input  state constraints
    postcons={0: 1, 1: 1},  # output state constraints
)

# Pauli basis — stabilizer strings
res = qk.functionalities.verify(
    "circuit.qasm",
    basis="pauli",
    precons={0: "Z"},        # qubit 0 starts with the subspace defined by Z
    postcons={0: "X"},       # qubit 0 ends in with the subspace defined by X
)
# Returns "True", "False", "TIMEOUT", or "MEMOUT"
```

### Equivalence Checking

Decide whether two circuits implement the same unitary.

```python
res = qk.functionalities.eq(
    "circuit1.qasm",
    "circuit2.qasm",
    basis="comp",     # "comp" → use check="cyclic"
    check="cyclic",   # "pauli" → use check="linear"
    epsilon=0,        # 0 for exact equivalence
)
# Returns True, False, "TIMEOUT", or "MEMOUT"
```

### Synthesis

Find the shortest circuit implementing a target unitary from a given gate set. Requires d4max (set `D4ToolInvocation` in `config.json`).

```python
import os
os.makedirs("tmp", exist_ok=True)

outcome, weight, qasm_str, layers = qk.functionalities.syn(
    "target.qasm",
    gate_set={"h", "cx", "s"},  # supported: "h", "cx", "s", "t", "cz", "csqrtx"
    basis="pauli",               # synthesis works in Pauli basis only
    fid=1.0,                     # target fidelity: 1.0 for exact synthesis
    files_root="tmp",            # directory for intermediate CNF files
    cyc_lin_encoding=True,       # use cyclic+linear encoding (recommended)
)
# outcome : "FOUND" | "TIMEOUT" | "CRASH" | "ERROR#"
# weight  : achieved fidelity (1.0 when FOUND)
# qasm_str: synthesised circuit as a QASM string
# layers  : circuit depth
```

> **Note:** Use either `"t"` or `"csqrtx"` for CCX synthesis, but not both simultaneously. Currently, we only implemented choosing different gate sets in Pauli basis.

---
---

# Test Suite

A pytest test suite, interactive example script, and QASM fixture library for Quokka-Sharp.

## Contents

```
tests/
├── test_quokka_sharp.py     # pytest test suite (6 classes, ~90 tests)
├── example_quokka_sharp.py  # interactive example script
├── config.example.json      # solver config template
└── qasm_fixtures/           # pre-built QASM circuits
    ├── single_qubit/        # 15 single-qubit circuits
    ├── multi_qubit/         # 19 multi-qubit circuits
    ├── equiv_pairs/         # 20 equivalence checking pairs
    ├── verify/              # 10 verification circuits
    ├── synthesis/           #  7 synthesis target circuits
    └── README.md            # per-fixture expected values
```

---

## Running the Tests

Install pytest:

```bash
pip install pytest
```

Place `qasm_fixtures/` either next to `test_quokka_sharp.py` or one level above it (the project root). The test suite searches both locations automatically.

```bash
# Run all tests
pytest tests/test_quokka_sharp.py -v

# Run a specific class
pytest tests/test_quokka_sharp.py -v -k "Simulation"
pytest tests/test_quokka_sharp.py -v -k "Verification"
pytest tests/test_quokka_sharp.py -v -k "Equivalence"
pytest tests/test_quokka_sharp.py -v -k "Synthesis"
```

If `qasm_fixtures/` is in a non-standard location:

```bash
export QUOKKA_FIXTURES=/path/to/qasm_fixtures
pytest tests/test_quokka_sharp.py -v
```

---

## Test Coverage

### 1 · Simulation (`TestSimulation`)

Verifies `qk.functionalities.sim()` in both computational and Pauli bases.

| Circuit | Basis | Measurement | Expected |
|---|---|---|---|
| Identity wire | comp | allzero | 1.0 |
| H | comp | allzero | 0.5 |
| X | comp | allzero | 0.0 |
| Z, S, T | comp | allzero | 1.0 |
| HH, XXXX | comp | allzero | 1.0 (self-inverse) |
| HZH | comp | allzero | 0.0 (= X) |
| Bell | comp | allzero | 0.5 — P(00) |
| GHZ | comp | allzero | 0.5 — P(000) |
| Bell Ψ− | pauli | allzero | 0.0 |

### 2 · Verification (`TestVerification`)

Verifies `qk.functionalities.verify()` with both computational and Pauli basis pre/postconditions.

**Computational basis** — integer values `{qubit: 0_or_1}`:

```python
# X flips the qubit
qk.functionalities.verify("x.qasm", basis="comp",
    precons={0: 0}, postcons={0: 1})   # → True

# Toffoli fires only when both controls are set
qk.functionalities.verify("toffoli.qasm", basis="comp",
    precons={0: 1, 1: 1, 2: 0}, postcons={0: 1, 1: 1, 2: 1})  # → True
```

**Pauli basis** — stabilizer strings `{qubit: "Z"|"X"|"Y"|"I"}`:

```python
# H swaps Z and X stabilizers: |0⟩ → |+⟩
qk.functionalities.verify("h.qasm", basis="pauli",
    precons={0: "Z"}, postcons={0: "X"})   # → True

# S maps X-stabilizer to Y: |+⟩ → |i+⟩
qk.functionalities.verify("s.qasm", basis="pauli",
    precons={0: "X"}, postcons={0: "Y"})   # → True

# CNOT: control in |0⟩ leaves target X-stab unchanged
qk.functionalities.verify("cx.qasm", basis="pauli",
    precons={0: "Z", 1: "X"}, postcons={0: "Z", 1: "X"})  # → True

# CNOT entangles: q[0] alone is no longer X-stabilized after CX
qk.functionalities.verify("cx.qasm", basis="pauli",
    precons={0: "Z", 1: "X"}, postcons={0: "X", 1: "I"})  # → False
```

### 3 · Equivalence Checking (`TestEquivalenceChecking`)

Verifies `qk.functionalities.eq()`. Use `check="cyclic"` with `basis="comp"` and `check="linear"` with `basis="pauli"`.

**Equivalent pairs (→ True):**

| Circuit A | Circuit B | Identity |
|---|---|---|
| HH | Identity | HH = I |
| SS | Z | SS = Z |
| HXH | Z | basis-change identity |
| CX CX | Identity (2q) | CX is self-inverse |
| 3-CNOT SWAP | built-in SWAP | standard decomposition |
| TT | S | TT = S |

**Non-equivalent pairs (→ False):**

| Circuit A | Circuit B |
|---|---|
| H | X |
| H | HS |
| Bell (H+CX) | CX only |
| Z | S |

### 4 · Synthesis (`TestSynthesis`)

Verifies `qk.functionalities.syn()`. Synthesis works in the Pauli basis only and requires d4max.

### 5 · Encoding & Parser (`TestEncodingAndParser`)

Unit tests for `QASMparser`, `QASM2CNF`, `dagger()`, `append()`, and `write_to_file()`.

### 6 · Edge Cases (`TestEdgeCases`)

Invalid paths, invalid basis strings, empty pre/postconditions, and probability sum checks.

## Interactive Example

`example_quokka_sharp.py` demonstrates all four functionalities. Edit the variables at the top of each section and run:

```bash
python tests/example_quokka_sharp.py
```

Example output:

```
════════════════════════════════════════════════════════════
  1 · SIMULATION
════════════════════════════════════════════════════════════
  Circuit:                         bell.qasm
  Basis:                           comp
  Measurement:                     allzero
  Probability:                     0.5000000000

════════════════════════════════════════════════════════════
  2 · VERIFICATION
════════════════════════════════════════════════════════════
  Circuit:                         v04_cx_control1.qasm
  Basis:                           comp
  Precondition:                    {0: 0, 1: 0}
  Postcondition:                   {0: 1, 1: 1}
  Result:                          True

════════════════════════════════════════════════════════════
  3 · EQUIVALENCE CHECKING
════════════════════════════════════════════════════════════
  Circuit A:                       eq1_hh.qasm
  Circuit B:                       eq1_identity.qasm
  Basis:                           comp
  Check mode:                      cyclic
  Equivalent:                      True

════════════════════════════════════════════════════════════
  4 · SYNTHESIS
════════════════════════════════════════════════════════════
  Target circuit:                  syn01_h_target.qasm
  Gate set:                        {'h', 'cx', 's'}
  Target fidelity:                 1.0
  Outcome:                         FOUND
  Achieved fidelity:               1.000000
  Depth (layers):                  1
```

**Quick reference — variables to change per section:**

```python
# ── Simulation ──────────────────────────────────────────────
SIM_FILE        = fixture("multi_qubit", "bell.qasm")
SIM_BASIS       = "comp"          # "comp" or "pauli"
SIM_MEASUREMENT = "allzero"       # "allzero", "firstzero"
                                  

# ── Verification ────────────────────────────────────────────
VER_FILE     = fixture("verify", "v01_x_flip.qasm")
VER_BASIS    = "pauli"
VER_PRECONS  = {0: "Z"}           # comp: {0: 0}   pauli: {0: "Z"}
VER_POSTCONS = {0: "X"}

# ── Equivalence ─────────────────────────────────────────────
EQ_FILE1  = fixture("equiv_pairs", "eq1_hh.qasm")
EQ_FILE2  = fixture("equiv_pairs", "eq1_identity.qasm")
EQ_BASIS  = "comp"                # pair with EQ_CHECK = "cyclic"
EQ_CHECK  = "cyclic"              # "cyclic" (comp) or "linear" (pauli)

# ── Synthesis ───────────────────────────────────────────────
SYN_FILE        = fixture("synthesis", "syn01_h_target.qasm")
SYN_GATE_SET    = {"h", "cx", "s"}
SYN_FID         = 1.0             # 1.0 for exact synthesis
SYN_FILES_ROOT  = "tmp"           # directory for intermediate CNF files
SYN_CYC_LIN_ENC = True
```

Each section also has multiple commented-out examples — uncomment one at a time to try different circuits.

---

## QASM Fixtures

All circuits are standard OpenQASM 2.0. See `qasm_fixtures/README.md` for the full table of expected values.

```
qasm_fixtures/
├── single_qubit/
│   ├── identity_wire.qasm    P(allzero) = 1.0
│   ├── h.qasm                P(allzero) = 0.5
│   ├── x.qasm                P(allzero) = 0.0
│   ├── hh.qasm               P(allzero) = 1.0  ≡ identity_wire
│   ├── ss.qasm               P(allzero) = 1.0  ≡ z.qasm
│   ├── hxh.qasm              P(allzero) = 1.0  ≡ z.qasm
│   ├── hzh.qasm              P(allzero) = 0.0  ≡ x.qasm
│   └── ...
├── multi_qubit/
│   ├── bell.qasm             P(00) = P(11) = 0.5
│   ├── ghz_3q.qasm           P(000) = P(111) = 0.5
│   ├── qft_2q.qasm           all four outcomes = 0.25
│   ├── toffoli.qasm          CCX gate
│   ├── bernstein_vazirani_2q.qasm   BV algorithm, secret s=01
│   └── ...
├── equiv_pairs/
│   ├── eq1_hh.qasm  ─┐ equivalent (HH = I)
│   ├── eq1_identity.qasm ─┘
│   ├── neq1_h.qasm  ─┐ NOT equivalent
│   ├── neq1_x.qasm  ─┘
│   └── ...
├── verify/
│   ├── v01_x_flip.qasm       pre={0:0} → post={0:1}  True
│   ├── v06_toffoli_flip.qasm pre={0:0,1:0,2:0} → post={0:1,1:1,2:1}  True
│   └── ...
└── synthesis/
    ├── syn01_h_target.qasm   Target: H,  gate_set={h,cx,s}
    ├── syn03_z_target.qasm   Target: Z,  expected: S S
    └── ...
```

## Modifications

### code structure:
The Quokka sharp repository has two main directories. The first directory is named quokka_sharp, and has the source code for the Quokka library. The second directory is named experiments, has examples on how to use the tool and benchmarks to test it.

In the directory qukkora_sharp/quokka_sharp the main functionalities are implemented each in its own file and they use the core libraries defined within the quokka_sharp/quokka_sharp encoding. 



### extension of the encodings:
Advanced users can extend `quokka-sharp` to support more quantum gates than the current gate set.  
To do this, one needs to install [`SymPy`](https://docs.sympy.org/latest/index.html):

```bash
pip install sympy
```
The encoding supports a universal gate set: CNOT, CZ, H, S, T, RX, RZ.
To add direct encoding of other gates, add new encoding in Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/pauli2cnf_py_codegen.py or Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/comput2cnf_py_codegen.py, depending on the basis.
Then, update the ifelse cases at the "QASMparser" function in Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/qasm_parser.py and the "encode_circuit" function in Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/cnf.py.
Finally, run one of the following commands correspondingly:

```
python3 pauli2cnf_py_codegen.py>pauli2cnf.py
```
or
```
python3 comput2cnf_py_codegen.py>comput2cnf.py
```

### updating the installation
When changing the core files, Quokka# needs to be reinstalled from the local files. To do that, run:
```
pip install ./quokka_sharp --force-reinstall 
```

## Evaluation

For evaluation of Quokka# please refer to [quokka-sharp-ae26]([https://github.com/System-Verification-Lab/quokka-sharp-artifacts](https://github.com/JingyiMei98/quokka-sharp-ae26))


## 📚 Citation

If you use the materials in this repository, please cite the following papers:

1. **Simulating Quantum Circuits by Model Counting**  
   *Jingyi Mei, Marcello Bonsangue, Alfons Laarman*  
   *Proceedings of the 36th International Conference on Computer Aided Verification (CAV 2024)*

2. **Equivalence Checking of Quantum Circuits by Model Counting**  
   *Jingyi Mei, Thijmen Coopmans, Marcello Bonsangue, Alfons Laarman*  
   *Proceedings of the 12th International Joint Conference on Automated Reasoning (IJCAR 2024)*


<details>
<summary>📄 BibTeX</summary>

```bibtex
@InProceedings{mei2024simulating,
author="J. Mei
and M. Bonsangue
and A. Laarman",
title="Simulating Quantum Circuits by Model Counting",
booktitle="CAV",
year="2024"
}


@InProceedings{mei2024eq,
author="J. Mei and T. Coopmans and M. Bonsangue and A. Laarman",
title="Equivalence Checking of Quantum Circuits by Model Counting",
booktitle="Automated Reasoning",
year="2024"
}
 ```
</details>

## 📬 Contact

If you have any questions, suggestions, or encounter issues while using the materials in this repository, feel free to:

- [Create an issue](https://github.com/System-Verification-Lab/Quokka-Sharp/issues)
- Or email me at: **j.mei@liacs.leidenuniv.nl**
