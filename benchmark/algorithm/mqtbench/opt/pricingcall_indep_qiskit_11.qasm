OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
s q[0];
h q[0];
rz(0.48437992146628694*pi) q[0];
s q[1];
s q[2];
s q[3];
h q[3];
cz q[2], q[3];
rz(0.4743658393543287*pi) q[3];
s q[4];
h q[4];
cz q[3], q[4];
rz(1.5181451780114485*pi) q[4];
cx q[2], q[4];
h q[4];
rz(0.7178042483695274*pi) q[4];
cx q[3], q[4];
cz q[1], q[4];
s q[5];
h q[5];
rz(1.125*pi) q[5];
h q[5];
rz(0.9063365632608956*pi) q[5];
h q[5];
rz(1.0936634367391043*pi) q[5];
h q[5];
rz(1.9373268734782088*pi) q[5];
h q[5];
cx q[3], q[2];
h q[3];
cz q[0], q[3];
cx q[3], q[2];
rz(1.9608582390955724*pi) q[3];
cx q[4], q[3];
h q[2];
rz(1.3229833707720065*pi) q[2];
cx q[3], q[0];
cz q[1], q[3];
rz(1.9136206450763487*pi) q[3];
cx q[4], q[2];
cx q[4], q[3];
cx q[2], q[0];
cz q[1], q[2];
rz(0.9688509226405643*pi) q[2];
cx q[2], q[3];
rz(1.969906429106724*pi) q[0];
h q[1];
rz(1.9712853788064446*pi) q[1];
cx q[1], q[3];
rz(1.9740787638972137*pi) q[3];
cx q[4], q[2];
h q[2];
cz q[1], q[2];
rz(0.99704060349257*pi) q[2];
cx q[0], q[2];
cx q[2], q[1];
cx q[3], q[2];
cx q[4], q[0];
rz(1.9832064002549232*pi) q[0];
rz(1.9932245478309558*pi) q[1];
rz(1.9859194336110988*pi) q[2];
cx q[3], q[1];
cx q[4], q[2];
cx q[1], q[0];
cx q[3], q[1];
cx q[4], q[1];
cx q[4], q[3];
rz(1.9913485565445936*pi) q[0];
rz(1.997066473632341*pi) q[1];
cx q[1], q[2];
rz(1.3975569765584233*pi) q[3];
cx q[4], q[0];
rz(0.9845446922742163*pi) q[0];
cx q[3], q[1];
cx q[2], q[3];
rz(1.945344190648078*pi) q[3];
cx q[1], q[3];
rz(1.9726326382476531*pi) q[3];
cx q[0], q[3];
h q[3];
rz(1.999596167146814*pi) q[3];
cx q[2], q[3];
rz(1.999251197255718*pi) q[3];
cx q[1], q[3];
rz(1.9985179329019944*pi) q[3];
cx q[4], q[3];
cx q[2], q[0];
rz(1.9975638297298144*pi) q[3];
cx q[2], q[3];
rz(1.9956472950763868*pi) q[3];
cx q[1], q[3];
rz(1.9997516505589297*pi) q[3];
cx q[2], q[3];
rz(1.9987592736171076*pi) q[3];
cx q[4], q[0];
cx q[1], q[4];
rz(1.4951474468130193*pi) q[0];
cx q[2], q[1];
cx q[0], q[2];
cx q[2], q[3];
cx q[4], q[0];
cx q[1], q[4];
rz(1.4455983189023545*pi) q[0];
cx q[2], q[1];
cx q[0], q[2];
cx q[0], q[3];
rz(1.492224922493899*pi) q[3];
cx q[1], q[0];
sdg q[1];
cx q[1], q[3];
h q[1];
sdg q[1];
cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
cx q[1], q[3];
cx q[3], q[1];
cx q[1], q[3];
cx q[3], q[4];
cx q[4], q[3];
cx q[3], q[4];