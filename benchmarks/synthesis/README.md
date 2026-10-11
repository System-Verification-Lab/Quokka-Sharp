# Synthesis benchmarks

Two kinds of synthetic benchmarks are run - exact and approximate.

The engines use the same gate set: H, S, S†, T, T† and CX. Each run executes one engine once.

## Running

Run these commands from the project root, with the Python environment activated and the engines installed:

```bash
export PATH="$PWD/.solvers/bin:$PATH"

# Quokka# - exact
python benchmarks/synthesis/run.py quokka benchmarks/synthesis/inputs/cz.qasm

# Quokka# - approximate
python benchmarks/synthesis/run.py quokka benchmarks/synthesis/inputs/cz.qasm --fidelity 0.99

# Upstream Quokka# - exact
python benchmarks/synthesis/run.py quokka-upstream benchmarks/synthesis/inputs/cz.qasm

# Upstream Quokka# - approximate
python benchmarks/synthesis/run.py quokka-upstream benchmarks/synthesis/inputs/cz.qasm --fidelity 0.99

# MITMS - exact
python benchmarks/synthesis/run.py mitms benchmarks/synthesis/inputs/cz.mitms

# Qiskit - approximate
python benchmarks/synthesis/run.py qiskit benchmarks/synthesis/inputs/cz.qasm --approximation-degree 0.99

# Synthetiq - approximate
python benchmarks/synthesis/run.py synthetiq benchmarks/synthesis/inputs/cz.txt --epsilon 0.01
```

Use `python benchmarks/synthesis/run.py {engine} --help` for the available options.

Run all exact or approximate engines:

```bash
python benchmarks/synthesis/run_exact.py
python benchmarks/synthesis/run_approximate.py
```

Results go to `benchmarks/synthesis/results/{timestamp}/`.

Peak memory usage is measured with `/usr/bin/time`.

---

## Exact synthesis

Here these projects are compared:

### Quokka#

- Depth optimal
- Clifford+T gate set
- Takes a QASM file as input

### MITMS

- Paper: https://arxiv.org/abs/1206.0758
- Original code: https://github.com/meamy/mitms
- The fork used: https://github.com/ethroz/mitms

- Depth optimal
- Clifford+T gate set
- Takes its own circuit format as input (`.mitms` files here)

The supported gates for `.mitms`:

- `I` - identity
- `H` - Hadamard
- `X`, `Y`, `Z` - Pauli gates
- `S` - phase gate
- `S*` - inverse phase gate (S†)
- `T` - T gate
- `T*` - inverse T gate (T†)
- `C(n)` - control for the gate on qubit `n` in the same column. Note: qubits are numbered from 1

Each row represents a qubit, and each column represents a layer.

The fork's `mitms_original` executable is used. It has bug fixes and an option to stop once a depth with solutions is found compared to the upstream version.

## Approximate synthesis

### Quokka#

- Depth optimal
- Clifford+T gate set
- Uses the Jamiołkowski fidelity

### MITMS

- Depth optimal
- Clifford+T gate set
- Takes its own circuit format as input (`.mitms` files here)
- Doesn't support a unitary matrix as input, so can't approximate every circuit

### Synthetiq

- Paper: https://doi.org/10.1145/3649813
- Code: https://github.com/eth-sri/synthetiq

- The resulting circuit is not guaranteed to be depth optimal.
- It can use the Clifford+T gate set.
- Takes a unitary matrix in its own text format. This can be generated from QASM using `qasm_to_unitary.py`.

As recommended, the Rust version is used. The approximation is controlled using `--epsilon`. The Jamiołkowski fidelity of `f` corresponds to `epsilon = sqrt(1 - sqrt(f))`.

### Qiskit

- Code: https://github.com/Qiskit/qiskit

- The resulting circuit is not guaranteed to be depth optimal.
- It can use the Clifford+T gate set.
- Takes a QASM file, which is converted to a unitary before timing the synthesis.

The approximation is controlled using `--approximation-degree`. This is a heuristic parameter, so it does not guarantee an exact fidelity.

## Other options considered

### MQT QMAP

- https://github.com/munich-quantum-toolkit/qmap/
- https://mqt.readthedocs.io/projects/qmap/en/latest/synthesis.html#using-qmap-for-optimal-synthesis

It allows for optimal exact synthesis, however the gate set is only Clifford. Additionally, their gate set includes X, Y, Z gates, which haven't been implemented in Quokka#.

### MITMNNS

- Paper: https://arxiv.org/abs/2510.08312
- Code: https://github.com/hofwe/MITMNNS

Not yet added to the benchmark suite.

---

## Existing comparisons

Paper: https://doi.org/10.4230/LIPIcs.CP.2025.38

For exact synthesis in the paper Quokka# is compared with `mitms`:

- Paper: https://arxiv.org/abs/1206.0758 (https://ieeexplore.ieee.org/document/6516700)
- Code: https://github.com/meamy/mitms

However, it has to be noted that the comparison is not exactly fair because they couldn't run `mitms` themselves, and had to fall back to the reported performance data in the paper itself.

For approximate synthesis nothing is directly compared, because they found no tool that would allow optimal approximate synthesis with fidelity as a metric. However, they mention `gridsynth` (https://arxiv.org/abs/1403.2975) and `mitms`.
