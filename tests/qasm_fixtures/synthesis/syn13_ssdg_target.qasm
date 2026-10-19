// syn13_ssdg_target.qasm
// TARGET: Identity gate (S Sdg = I).
// gate_set={h, cx, s, cz}: S Sdg = I (empty circuit).
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];

s q[0];
sdg q[0];