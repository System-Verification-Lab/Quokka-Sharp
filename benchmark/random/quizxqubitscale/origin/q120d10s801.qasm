OPENQASM 2.0;
include "qelib1.inc";
qreg q[120];
rx(0.5*pi) q[35];
rx(0.5*pi) q[51];
rx(0.5*pi) q[98];
cx q[35], q[98];
cx q[51], q[98];
rz(0.75*pi) q[98];
cx q[51], q[98];
cx q[35], q[98];
rx(-0.5*pi) q[98];
rx(-0.5*pi) q[51];
rx(-0.5*pi) q[35];
rx(0.5*pi) q[89];
cx q[43], q[110];
cx q[89], q[110];
rz(1.75*pi) q[110];
cx q[89], q[110];
cx q[43], q[110];
rx(-0.5*pi) q[89];
cx q[34], q[118];
cx q[36], q[118];
rz(0.75*pi) q[118];
cx q[36], q[118];
cx q[34], q[118];
cx q[63], q[68];
rz(1.75*pi) q[68];
cx q[63], q[68];
rx(0.5*pi) q[1];
h q[8];
cx q[1], q[90];
cx q[8], q[90];
cx q[70], q[90];
rz(1.75*pi) q[90];
cx q[70], q[90];
cx q[8], q[90];
cx q[1], q[90];
h q[8];
rx(-0.5*pi) q[1];
h q[4];
h q[19];
cx q[4], q[74];
cx q[19], q[74];
rz(0.75*pi) q[74];
cx q[19], q[74];
cx q[4], q[74];
h q[19];
h q[4];
rx(0.5*pi) q[118];
cx q[4], q[118];
cx q[11], q[118];
cx q[53], q[118];
rz(0.75*pi) q[118];
cx q[53], q[118];
cx q[11], q[118];
cx q[4], q[118];
rx(-0.5*pi) q[118];
cx q[31], q[56];
rz(1.25*pi) q[56];
cx q[31], q[56];
rx(0.5*pi) q[7];
h q[91];
cx q[7], q[91];
rz(0.25*pi) q[91];
cx q[7], q[91];
h q[91];
rx(-0.5*pi) q[7];
h q[40];
rx(0.5*pi) q[87];
rx(0.5*pi) q[112];
cx q[34], q[112];
cx q[40], q[112];
cx q[87], q[112];
rz(1.75*pi) q[112];
cx q[87], q[112];
cx q[40], q[112];
cx q[34], q[112];
rx(-0.5*pi) q[112];
rx(-0.5*pi) q[87];
h q[40];