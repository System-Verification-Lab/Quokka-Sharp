// syn08_hcxh_target.qasm

// gate_set={h, cx, s, cz}: HCXH=CZ is the canonical solution.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
h q[1];
cx q[0], q[1];
h q[1];