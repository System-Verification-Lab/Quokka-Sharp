OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
cx q[3], q[14];
cx q[14], q[3];
cx q[3], q[14];
h q[19];
h q[16];
h q[15];
h q[13];
h q[10];
h q[3];
h q[13];
cz q[3], q[13];
h q[3];
rz(1.75*pi) q[3];
h q[3];
h q[9];
h q[8];
h q[7];
cz q[10], q[18];
cz q[9], q[13];
cz q[8], q[15];
cz q[7], q[11];
cz q[3], q[14];
cz q[2], q[15];
rz(0.5*pi) q[18];
rz(0.5*pi) q[14];
rz(1.5*pi) q[13];
rz(0.25*pi) q[6];
rz(0.5*pi) q[4];
h q[18];
h q[15];
h q[14];
h q[13];
h q[11];
h q[10];
h q[6];
h q[4];
h q[2];
h q[3];
cz q[14], q[15];
cz q[6], q[19];
cz q[6], q[18];
cz q[5], q[16];
cz q[4], q[13];
cz q[3], q[14];
cz q[2], q[12];
cz q[1], q[11];
rz(1.5*pi) q[18];
rz(1.25*pi) q[17];
rz(0.75*pi) q[16];
h q[16];
rz(1.25*pi) q[15];
rz(1.5*pi) q[13];
h q[13];
h q[11];
rz(0.25*pi) q[10];
rz(1.75*pi) q[9];
h q[9];
rz(0.5*pi) q[8];
h q[7];
h q[6];
rz(0.25*pi) q[3];
rz(1.25*pi) q[1];
rz(0.7854981633974483) q[0];
