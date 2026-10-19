// syn12_ttdg_target.qasm
// TARGET: Identity gate (T Tdg = I).
// gate_set={h, cx, s, t, cz}: T Tdg = I (empty circuit).
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];

t q[0];
tdg q[0];