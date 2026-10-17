import argparse
from pathlib import Path

from circuits import to_synthetiq
from qiskit import qasm2


def convert(source: Path, output: Path) -> None:
    circuit = qasm2.load(source, custom_instructions=qasm2.LEGACY_CUSTOM_INSTRUCTIONS)
    output.write_text(to_synthetiq(circuit))


def main() -> None:
    """Prepare a Synthetiq matrix input from QASM. Uses O(4^n) memory."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    convert(args.input, args.output)


if __name__ == "__main__":
    main()
