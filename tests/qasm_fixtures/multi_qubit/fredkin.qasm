// fredkin.qasm
// Fredkin (CSWAP): swaps q[1] and q[2] when q[0]=1.
// On |000>: no swap.  Expected sim(comp, allzero) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
cswap q[0], q[1], q[2];
