// syn09_tt_target.qasm

// gate_set={h, cx, s, cz}: HCXH=CZ is the canonical solution.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
t q[0];
t q[0];
