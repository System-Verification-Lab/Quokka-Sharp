// eq5_swap.qasm  ←→  eq5_3cx_swap.qasm  (EQUIVALENT)
// Built-in SWAP
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
swap q[0], q[1];
