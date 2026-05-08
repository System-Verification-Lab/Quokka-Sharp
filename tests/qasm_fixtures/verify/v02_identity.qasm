// v02_identity.qasm
// Identity (no gates).
// PASS: pre={0:0} post={0:0}
// FAIL: pre={0:0} post={0:1}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
id q[0];
