OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];


x q[0];
x q[1];
x q[2];
x q[4]; 

ccx q[2], q[0], q[5]; 
ccx q[2], q[1], q[6];
ccx q[3], q[0], q[7];
ccx q[3], q[1], q[8];
ccx q[4], q[0], q[9];
ccx q[4], q[1], q[10];

cx q[6], q[11];
cx q[7], q[11];
cx q[8], q[12];
cx q[9], q[12];