OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c0[1]; 
creg c1[2];

h q[2];
cx q[2], q[1];
cx q[0], q[1];
h q[0];

measure q[0] -> c0[0];
measure q[1] -> c1[0];

if (c0[0]==1) z q[2];
if (c1[0]==1) x q[2];

x q[2];