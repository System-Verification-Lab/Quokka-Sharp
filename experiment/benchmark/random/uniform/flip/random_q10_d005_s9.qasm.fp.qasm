OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
cx q[3], q[9];
cx q[9], q[3];
cx q[9], q[3];
h q[9];
h q[8];
h q[7];
h q[6];
h q[4];
h q[3];
h q[2];
h q[1];
h q[0];
h q[7];
cz q[7], q[8];
h q[8];
rz(0.25*pi) q[8];
h q[3];
h q[8];
h q[4];
h q[2];
cz q[7], q[8];
cz q[4], q[9];
cz q[4], q[6];
cz q[3], q[9];
cz q[1], q[2];
rz(0.25*pi) q[3];
rz(1.25*pi) q[7];
rz(1.75*pi) q[5];
h q[3];
h q[9];
h q[7];
h q[6];
h q[5];
h q[1];
cz q[3], q[9];
cz q[3], q[4];
h q[8];
h q[3];
cz q[7], q[8];
cz q[0], q[2];
cz q[0], q[1];
rz(0.25*pi) q[9];
rz(1.25*pi) q[8];
h q[8];
h q[7];
rz(0.75*pi) q[6];
rz(0.25*pi) q[5];
h q[5];
rz(0.75*pi) q[4];
h q[4];
rz(1.0*pi) q[2];
h q[2];
rz(1.5*pi) q[1];
rz(0.75*pi) q[0];
h q[0];
