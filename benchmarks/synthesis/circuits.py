"""Generate, read, and export benchmark circuits without running synthesis."""

import random
import re
from typing import cast

from numpy.typing import NDArray
from qiskit import QuantumCircuit, qasm2
from qiskit.circuit import ControlledGate
from qiskit.circuit.library import get_standard_gate_name_mapping
from qiskit.converters import circuit_to_dag

RANDOM_CIRCUIT_GATES = [
    "h",
    # "x",
    # "y",
    # "z",
    "s",
    "sdg",
    "t",
    "tdg",
    "cx",
    # "cy",
    # "cz",
    # "cs",
    # "csdg",
    # "ct",
    # "ctdg",
]

MITMS_SINGLE_GATES = {
    "I": "id",
    "H": "h",
    "X": "x",
    "Y": "y",
    "Z": "z",
    "S": "s",
    "S*": "sdg",
    "T": "t",
    "T*": "tdg",
}
QISKIT_TO_MITMS_GATES = {name: token for token, name in MITMS_SINGLE_GATES.items()}
MITMS_TOKENS = re.compile(r"C\([1-9][0-9]*\)|[ST]\*|[IHXYZST]")


def generate_random_circuit(
    num_qubits: int, depth: int, seed: int | None = None
) -> QuantumCircuit:
    """Generate nonempty layers of disjoint gates; actual depth may be smaller.

    Each layer uses a random nonempty subset of qubits. Gates are chosen
    uniformly from RANDOM_CIRCUIT_GATES among those fitting the remaining qubits.
    """
    if num_qubits < 1 or depth < 0:
        raise ValueError("num_qubits must be positive and depth must be nonnegative")
    rng = random.Random(seed)
    circuit = QuantumCircuit(num_qubits)
    gate_mapping = get_standard_gate_name_mapping()
    gate_mapping["ct"] = gate_mapping["t"].control()
    gate_mapping["ctdg"] = gate_mapping["tdg"].control()
    gates = [gate_mapping[name] for name in RANDOM_CIRCUIT_GATES]
    for _ in range(depth):
        qubits = rng.sample(range(num_qubits), rng.randint(1, num_qubits))
        while qubits:
            gate = rng.choice(
                [gate for gate in gates if gate.num_qubits <= len(qubits)]
            )
            circuit.append(gate, [qubits.pop() for _ in range(gate.num_qubits)])
    return circuit


def to_quokka(circuit: QuantumCircuit) -> str:
    """Write generated gates directly; Quokka cannot parse QASM gate definitions."""
    lines = ["OPENQASM 2.0;", 'include "qelib1.inc";', f"qreg q[{circuit.num_qubits}];"]
    for instruction in circuit.data:
        qubits = ",".join(f"q[{circuit.find_bit(q).index}]" for q in instruction.qubits)
        lines.append(f"{instruction.operation.name} {qubits};")
    return "\n".join(lines) + "\n"


def to_mitms(circuit: QuantumCircuit) -> str:
    """Export MITMS single-qubit gates and their singly controlled versions."""
    dag = circuit_to_dag(circuit)
    rows = [["I"] * max(1, dag.depth()) for _ in circuit.qubits]
    for column, layer in enumerate(dag.layers()):
        for node in layer["graph"].op_nodes():
            gate = node.op
            qubits = [circuit.find_bit(q).index for q in node.qargs]
            if isinstance(gate, ControlledGate):
                if (
                    gate.num_ctrl_qubits != 1
                    or gate.ctrl_state != 1
                    or gate.base_gate is None
                ):
                    raise ValueError(f"Unsupported MITMS control: {gate.name}")
                control, *qubits = qubits
                rows[control][column] = f"C({qubits[0] + 1})"
                gate = gate.base_gate
            if gate.name not in QISKIT_TO_MITMS_GATES:
                raise ValueError(f"Gate cannot be represented in MITMS: {gate.name}")
            rows[qubits[0]][column] = QISKIT_TO_MITMS_GATES[gate.name]
    return (
        f"target {circuit.num_qubits}\n"
        + "\n".join(" ".join(row) for row in rows)
        + "\n\n----------------\n"
    )


def _parse_mitms_row(line: str) -> list[str]:
    # MITMS output can join adjacent controls, e.g. C(2)C(2).
    if MITMS_TOKENS.sub("", line).strip():
        raise ValueError(f"Invalid MITMS circuit row: {line!r}")
    return MITMS_TOKENS.findall(line)


def _circuit_from_mitms_rows(rows: list[list[str]]) -> QuantumCircuit:
    if not rows or not rows[0] or any(len(row) != len(rows[0]) for row in rows):
        raise ValueError("MITMS circuit must have nonempty rows of equal length")
    circuit = QuantumCircuit(len(rows))
    gates = get_standard_gate_name_mapping()
    for column in zip(*rows):
        controls = {
            q: int(token[2:-1]) - 1
            for q, token in enumerate(column)
            if token.startswith("C(")
        }
        targets = list(controls.values())
        if len(set(targets)) != len(targets) or any(
            target < 0 or target >= len(rows) or target in controls
            for target in targets
        ):
            raise ValueError("MITMS controls must refer to distinct non-control qubits")
        for control, target in controls.items():
            gate = gates[MITMS_SINGLE_GATES[column[target]]]
            circuit.append(gate.control(), [control, target])
        for q, token in enumerate(column):
            if q not in controls and q not in targets and token != "I":
                getattr(circuit, MITMS_SINGLE_GATES[token])(q)
    return circuit


def from_engine_output(text: str, engine: str) -> list[QuantumCircuit]:
    """Read every reported candidate, in output order (no implicit best selection)."""
    if engine in {"quokka", "quokka-upstream", "qiskit", "synthetiq"}:
        return [qasm2.loads(text)]
    if engine != "mitms":
        raise ValueError(f"Unknown engine: {engine}")
    circuits = []
    rows = []
    for line in text.splitlines():
        if re.fullmatch(r"(?:Cost|Distance)\s+\S+", line.strip()):
            circuits.append(_circuit_from_mitms_rows(rows))
            rows.clear()
            continue
        try:
            row = _parse_mitms_row(line)
        except ValueError:
            rows.clear()
            continue
        if row:
            rows.append(row)
    if not circuits:
        raise ValueError("No synthesized circuit found in MITMS output")
    return circuits


def to_synthetiq(circuit: QuantumCircuit) -> str:
    """Export a target matrix, using O(4^n) memory; depth is not retained."""
    from qiskit.quantum_info import Operator

    # Order: |q[n-1] ... q[0]>.
    unitary = cast(NDArray, Operator(circuit).data)
    matrix = "\n".join(
        " ".join(f"({z.real:.17g},{z.imag:.17g})" for z in row) for row in unitary
    )
    mask = (" ".join(["1"] * len(unitary)) + "\n") * len(unitary)
    return f"target\n{circuit.num_qubits}\n{matrix}\n{mask}"
