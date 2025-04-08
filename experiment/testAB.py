from qiskit import QuantumCircuit
from qiskit.quantum_info import Statevector
import numpy as np

qc1 = QuantumCircuit(1)
qc1.x(0)
qc1.rz(np.pi/2, 0)
qc1.rx(np.pi/2, 0)
qc1.rz(-np.pi/2, 0)


qc2 = QuantumCircuit(1)
qc1.x(0)
qc2.ry(-np.pi/2, 0)

print(Statevector.from_instruction(qc1).equiv(Statevector.from_instruction(qc2))) # True


from qiskit.quantum_info import Operator

circ = QuantumCircuit(1)
circ.rz(np.pi/2, 0)
circ.rx(np.pi/2, 0)
circ.rz(-np.pi/2, 0)
circ.ry(np.pi/2, 0)

circOp = Operator.from_circuit(circ)
print(circOp.to_matrix())