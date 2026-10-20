import sys

from batch import run_batch

INPUTS = ["ct_cy"]
# Example: {"num_qubits": 2, "depth": 1, "num_circuits": 10, "seed": 1}
RANDOM_CIRCUIT: dict[str, int] | None = None
RUNS_PER_CIRCUIT = 10
RUNS = [
    (
        "quokka-approximate",
        "quokka",
        ".qasm",
        ["--fidelity", "0.89", "--timeout", "180"],
    ),
    (
        "quokka-upstream-approximate",
        "quokka-upstream",
        ".qasm",
        ["--fidelity", "0.89", "--timeout", "180"],
    ),
    ("qiskit", "qiskit", ".qasm", ["--approximation-degree", "0.9"]),
    (
        "synthetiq",
        "synthetiq",
        ".txt",
        ["--epsilon", "0.23791151042843564", "--timeout", "180"],
    ),
    (
        "mitms-approximate",
        "mitms",
        ".mitms",
        ["--approximate", "--max-depth", "4", "--timeout", "180"],
    ),
]


if __name__ == "__main__":
    sys.exit(
        run_batch(
            INPUTS,
            RUNS,
            RANDOM_CIRCUIT,
            runs_per_circuit=RUNS_PER_CIRCUIT,
            measure_fidelity=True,
        )
    )
