// eq5_3cx_swap.qasm  ←→  eq5_swap.qasm  (EQUIVALENT)
// SWAP via 3 CNOTs
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
