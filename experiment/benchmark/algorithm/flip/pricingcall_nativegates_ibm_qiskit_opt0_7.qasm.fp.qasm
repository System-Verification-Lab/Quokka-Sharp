OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
cx q[5], q[6];
cx q[6], q[5];
cx q[5], q[6];
cx q[4], q[6];
cx q[6], q[4];
cx q[4], q[6];
cx q[3], q[4];
cx q[4], q[3];
cx q[3], q[4];
cx q[2], q[3];
cx q[3], q[2];
cx q[2], q[3];
cx q[1], q[6];
cx q[6], q[1];
cx q[1], q[6];
h q[6];
h q[4];
h q[3];
h q[0];
rz(0.5*pi) q[3];
rz(0.5*pi) q[6];
h q[3];
h q[6];
cz q[3], q[6];
rz(1.980904017001273*pi) q[3];
h q[3];
cz q[3], q[6];
rz(1.5*pi) q[0];
rz(1.6704057840563415*pi) q[3];
h q[0];
h q[3];
cz q[3], q[6];
cz q[0], q[6];
rz(0.035675128363554964*pi) q[6];
h q[6];
rz(1.0489207533360703*pi) q[6];
h q[6];
cx q[6], q[3];
h q[5];
h q[2];
cz q[2], q[5];
rz(0.25*pi) q[5];
h q[5];
h q[1];
h q[6];
cz q[5], q[6];
cz q[1], q[6];
rz(0.8988570404164714*pi) q[6];
h q[6];
cz q[0], q[6];
cz q[0], q[5];
cz q[0], q[3];
rz(0.9559284665327498*pi) q[0];
h q[0];
h q[3];
cz q[1], q[3];
cz q[0], q[3];
rz(0.21689782570242436*pi) q[3];
h q[3];
cz q[2], q[3];
h q[2];
rz(1.75*pi) q[2];
h q[2];
cx q[2], q[6];
h q[5];
rz(1.75*pi) q[5];
h q[5];
h q[2];
cz q[2], q[5];
cz q[1], q[2];
rz(1.25*pi) q[2];
h q[2];
cx q[2], q[6];
cx q[6], q[0];
rz(0.25*pi) q[1];
h q[1];
cx q[1], q[0];
h q[1];
rz(0.75*pi) q[1];
h q[1];
cz q[2], q[3];
cz q[1], q[2];
cz q[0], q[2];
rz(0.5*pi) q[4];
rz(1.25*pi) q[2];
h q[4];
h q[2];
h q[0];
cz q[0], q[4];
cz q[0], q[3];
cz q[0], q[2];
rz(0.75*pi) q[0];
h q[0];
cz q[3], q[4];
cz q[0], q[4];
rz(0.2969553801708318*pi) q[4];
h q[4];
cz q[0], q[4];
rz(1.0780446198291684*pi) q[0];
h q[0];
cx q[0], q[3];
cz q[0], q[3];
rz(0.25*pi) q[0];
h q[0];
cx q[0], q[4];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[4];
h q[0];
rz(0.25*pi) q[0];
h q[0];
cx q[0], q[4];
h q[3];
cz q[0], q[3];
rz(0.75*pi) q[3];
h q[3];
rz(0.5156188169099362*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.484381183090064*pi) q[3];
h q[3];
cz q[0], q[3];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[4];
h q[0];
rz(1.25*pi) q[0];
h q[0];
cx q[0], q[4];
h q[3];
rz(1.25*pi) q[3];
h q[3];
cx q[3], q[4];
h q[0];
rz(1.75*pi) q[0];
h q[0];
cx q[0], q[3];
rz(0.4687623661801281*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.5312376338198723*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[6];
cx q[3], q[2];
rz(0.75*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[6];
cx q[3], q[2];
h q[3];
rz(0.25*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.25*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[6];
cx q[3], q[2];
h q[3];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[4];
rz(0.5312376338198723*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.4687623661801281*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[6];
cx q[3], q[2];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[6];
cx q[3], q[2];
h q[3];
rz(0.25*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.25*pi) q[3];
h q[3];
cx q[3], q[6];
cx q[3], q[2];
h q[3];
rz(0.75*pi) q[3];
h q[3];
cx q[3], q[4];
rz(0.4375247323602559*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.5624752676397442*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[2];
rz(0.75*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[2];
h q[3];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(0.75*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[2];
h q[3];
rz(0.75*pi) q[3];
h q[3];
cx q[3], q[4];
rz(0.5624752676397441*pi) q[3];
h q[3];
cx q[3], q[4];
h q[3];
rz(1.4375247323602558*pi) q[3];
h q[3];
cx q[3], q[2];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[2];
h q[3];
rz(0.75*pi) q[3];
h q[3];
cx q[4], q[3];
h q[3];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[4];
cx q[3], q[2];
rz(0.25*pi) q[4];
h q[4];
cx q[4], q[2];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[1];
cx q[1], q[6];
cx q[6], q[2];
rz(0.75*pi) q[1];
h q[1];
cx q[1], q[6];
h q[1];
rz(0.25*pi) q[1];
h q[1];
cx q[1], q[5];
cx q[5], q[0];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[2];
h q[1];
cz q[1], q[6];
rz(0.25*pi) q[1];
h q[1];
h q[4];
h q[3];
h q[6];
cz q[1], q[6];
rz(1.75*pi) q[6];
h q[6];
h q[5];
rz(1.25*pi) q[4];
h q[4];
rz(1.25*pi) q[3];
h q[3];
rz(1.0*pi) q[2];
h q[2];
h q[1];
h q[0];
