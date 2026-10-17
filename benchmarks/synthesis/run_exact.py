import sys

from batch import run_batch

INPUTS = []
# Example: {"num_qubits": 2, "depth": 1, "num_circuits": 10, "seed": 1}
RANDOM_CIRCUIT: dict[str, int] | None = {
    "num_qubits": 2,
    "depth": 6,
    "num_circuits": 3,
    "seed": 1,
}
RUNS_PER_CIRCUIT = 10
RUNS = [
    ("quokka-exact", "quokka", ".qasm", ["--timeout", "60"]),
    ("quokka-upstream-exact", "quokka-upstream", ".qasm", ["--timeout", "60"]),
    ("mitms", "mitms", ".mitms", ["--max-depth", "10", "--timeout", "60"]),
]


if __name__ == "__main__":
    sys.exit(run_batch(INPUTS, RUNS, RANDOM_CIRCUIT, runs_per_circuit=RUNS_PER_CIRCUIT))
