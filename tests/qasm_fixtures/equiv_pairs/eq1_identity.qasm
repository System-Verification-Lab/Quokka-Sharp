// eq1_identity.qasm  ←→  eq1_hh.qasm  (EQUIVALENT)
// Single-qubit identity (no gates)
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
id q[0];
