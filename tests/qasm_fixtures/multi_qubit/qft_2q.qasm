// qft_2q.qasm
// 2-qubit Quantum Fourier Transform on |00>
// QFT|00> = (1/2)(|00>+|01>+|10>+|11>)
// Expected sim(comp, allzero)      = 0.25
// Expected sim(comp, {0:0,1:1})   = 0.25
// Expected sim(comp, {0:1,1:0})   = 0.25
// Expected sim(comp, {0:1,1:1})   = 0.25
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
h q[0];
cp(pi/2) q[1], q[0];
h q[1];
swap q[0], q[1];
