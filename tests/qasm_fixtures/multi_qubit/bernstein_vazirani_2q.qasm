// bernstein_vazirani_2q.qasm
// BV circuit for secret s=1 on 2 data qubits + 1 ancilla.
// After the algorithm q[0..1] should encode s=01 in the output.
// Expected sim(comp, {0:0,1:1,2:1}) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
// ancilla into |->>
x q[2];
h q[2];
// Hadamard on data qubits
h q[0];
h q[1];
// Oracle for s=01: CX from q[1] to ancilla
cx q[1], q[2];
// Hadamard again
h q[0];
h q[1];
h q[2];
