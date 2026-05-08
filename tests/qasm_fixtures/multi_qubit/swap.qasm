// swap.qasm
// SWAP via three CNOTs: SWAP(q0,q1)
// On |00>: stays |00>
// Expected sim(comp, allzero) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
