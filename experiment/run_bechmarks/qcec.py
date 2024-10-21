from qiskit import QuantumCircuit
from mqt import qcec
import time
import sys

def main(qasm_file1, qasm_file2, default_or_dd):
    # verify the equivalence of both circuits
    start = time.time()
    circ1 = QuantumCircuit.from_qasm_file(qasm_file1)
    circ2 = QuantumCircuit.from_qasm_file(qasm_file2)
    if default_or_dd == 'default':
        result = qcec.verify(circ1, circ2)
    elif default_or_dd == 'dd':
        result = qcec.verify(circ1, circ2,run_zx_checker=False)
    # result = qcec.verify(circ1, circ2)
    end = time.time()

    print(  ' {"time" :', (end - start),
            ', "result" :', ' "' + str(result.equivalence) + '"}')

if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2], sys.argv[3])