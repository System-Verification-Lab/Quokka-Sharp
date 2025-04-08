from qiskit import QuantumCircuit
from qiskit.quantum_info import Statevector
import numpy as np

qc1 = QuantumCircuit(2)
qc1.rz(np.pi/2, 1)
qc1.rx(np.pi/2, 1)
qc1.rz(-np.pi/2, 1)


qc2 = QuantumCircuit(2)
qc2.ry(-np.pi/2, 1)

print(Statevector.from_instruction(qc1).equiv(Statevector.from_instruction(qc2))) # True