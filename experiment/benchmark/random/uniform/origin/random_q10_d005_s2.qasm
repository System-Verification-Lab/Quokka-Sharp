OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
tdg q[2];
cx q[7],q[0];
sdg q[6];
h q[9];
h q[5];
sdg q[3];
h q[4];
sdg q[8];
h q[1];
tdg q[3];
t q[2];
s q[8];
s q[7];
cx q[0],q[5];
h q[4];
h q[9];
s q[6];
sdg q[1];
s q[2];
sdg q[1];
t q[8];
t q[7];
cx q[4],q[5];
s q[0];
cx q[3],q[6];
tdg q[9];
s q[3];
sdg q[6];
sdg q[0];
t q[5];
sdg q[9];
s q[1];
tdg q[2];
h q[4];
s q[7];
s q[8];
h q[4];
h q[2];
cx q[7],q[6];
sdg q[5];
cx q[1],q[8];
sdg q[9];
t q[0];
sdg q[3];