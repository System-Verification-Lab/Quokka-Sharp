// hs.qasm
// H then S.  NOT equivalent to h.qasm (different global phase + Bloch sphere orientation).
// Expected sim(comp, allzero) = 0.5   (same amplitude, but inequivalent as unitaries)
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
s q[0];
