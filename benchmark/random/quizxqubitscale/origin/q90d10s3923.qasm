OPENQASM 2.0;
include "qelib1.inc";
qreg q[90];
h q[36];
cx q[29], q[36];
rz(1.75*pi) q[36];
cx q[29], q[36];
h q[36];
cx q[40], q[61];
rz(0.75*pi) q[61];
cx q[40], q[61];
rx(0.5*pi) q[44];
h q[74];
h q[88];
cx q[0], q[88];
cx q[44], q[88];
cx q[74], q[88];
rz(1.25*pi) q[88];
cx q[74], q[88];
cx q[44], q[88];
cx q[0], q[88];
h q[88];
h q[74];
rx(-0.5*pi) q[44];
rx(0.5*pi) q[5];
h q[56];
cx q[5], q[87];
cx q[7], q[87];
cx q[56], q[87];
rz(1.25*pi) q[87];
cx q[56], q[87];
cx q[7], q[87];
cx q[5], q[87];
h q[56];
rx(-0.5*pi) q[5];
rx(0.5*pi) q[62];
rx(0.5*pi) q[66];
cx q[19], q[66];
cx q[34], q[66];
cx q[62], q[66];
rz(0.75*pi) q[66];
cx q[62], q[66];
cx q[34], q[66];
cx q[19], q[66];
rx(-0.5*pi) q[66];
rx(-0.5*pi) q[62];
rx(0.5*pi) q[17];
rx(0.5*pi) q[48];
cx q[17], q[75];
cx q[28], q[75];
cx q[48], q[75];
rz(0.25*pi) q[75];
cx q[48], q[75];
cx q[28], q[75];
cx q[17], q[75];
rx(-0.5*pi) q[48];
rx(-0.5*pi) q[17];
rx(0.5*pi) q[42];
rx(0.5*pi) q[58];
cx q[3], q[58];
cx q[42], q[58];
rz(0.75*pi) q[58];
cx q[42], q[58];
cx q[3], q[58];
rx(-0.5*pi) q[58];
rx(-0.5*pi) q[42];
rx(0.5*pi) q[11];
rx(0.5*pi) q[15];
h q[68];
h q[82];
cx q[11], q[82];
cx q[15], q[82];
cx q[68], q[82];
rz(0.75*pi) q[82];
cx q[68], q[82];
cx q[15], q[82];
cx q[11], q[82];
h q[82];
h q[68];
rx(-0.5*pi) q[15];
rx(-0.5*pi) q[11];
h q[29];
h q[68];
cx q[29], q[68];
rz(0.25*pi) q[68];
cx q[29], q[68];
h q[68];
h q[29];
rx(0.5*pi) q[60];
h q[81];
cx q[60], q[81];
rz(0.75*pi) q[81];
cx q[60], q[81];
h q[81];
rx(-0.5*pi) q[60];