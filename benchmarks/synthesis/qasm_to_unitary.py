import argparse
from pathlib import Path

from qiskit import qasm2
from qiskit.quantum_info import Operator


def convert(source: Path, output: Path) -> None:
    circuit = qasm2.load(source)
    # Order: |q[n-1] ... q[0]>.
    unitary = Operator(circuit).data
    matrix = "\n".join(
        " ".join(f"({z.real:.17g},{z.imag:.17g})" for z in row) for row in unitary
    )
    # A full mask (of 1s) asks Synthetiq to synthesize the complete unitary
    mask = (" ".join(["1"] * len(unitary)) + "\n") * len(unitary)
    output.write_text(f"target\n{circuit.num_qubits}\n{matrix}\n{mask}")


def main() -> None:
    """Prepare a Synthetiq matrix input from QASM. Uses O(4^n) memory."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    convert(args.input, args.output)


if __name__ == "__main__":
    main()
