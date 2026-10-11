from dataclasses import dataclass
from pathlib import Path
from time import perf_counter

from qiskit import QuantumCircuit, qasm2, transpile
from qiskit.quantum_info import Operator

from .engine import TARGET_GATES, Engine


@dataclass
class QiskitEngine(Engine):
    approximation_degree: float = 0.9
    optimization_level: int = 3

    def run(self, target: Path) -> str:
        source = qasm2.load(target)
        unitary = Operator(source)
        circuit = QuantumCircuit(source.num_qubits)
        circuit.unitary(unitary, circuit.qubits)
        start = perf_counter()
        result = transpile(
            circuit,
            basis_gates=TARGET_GATES,
            optimization_level=self.optimization_level,
            approximation_degree=self.approximation_degree,
            seed_transpiler=0,
        )
        self.elapsed_seconds = perf_counter() - start
        return qasm2.dumps(result)
