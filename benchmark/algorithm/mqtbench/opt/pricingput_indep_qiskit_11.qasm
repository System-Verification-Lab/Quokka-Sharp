OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
s q[0];
s q[1];
s q[2];
s q[3];
cx q[1], q[3];
h q[3];
cz q[2], q[3];
cz q[0], q[3];
rz(0.4743658393543287*pi) q[3];
s q[4];
h q[4];
cz q[3], q[4];
rz(1.5181451780114485*pi) q[4];
cx q[1], q[4];
cx q[2], q[4];
cx q[0], q[4];
h q[4];
rz(1.2178042483695273*pi) q[4];
s q[5];
h q[5];
rz(0.875*pi) q[5];
h q[5];
rz(0.875*pi) q[5];
h q[5];
rz(1.125*pi) q[5];
h q[5];
rz(1.9373163701316252*pi) q[5];
h q[5];
h q[1];
cx q[1], q[0];
rz(1.3975569765584233*pi) q[1];
h q[2];
cz q[1], q[2];
rz(1.8229833707720065*pi) q[2];
cz q[1], q[3];
cx q[4], q[2];
cz q[1], q[4];
cx q[3], q[4];
sdg q[2];
cx q[3], q[2];
cx q[1], q[3];
h q[3];
rz(1.9608582390955724*pi) q[3];
cx q[4], q[3];
cx q[2], q[0];
rz(1.9688509226405644*pi) q[2];
cx q[2], q[1];
cx q[3], q[1];
cx q[3], q[2];
rz(1.9136206450763487*pi) q[3];
h q[3];
rz(1.9913485565445936*pi) q[3];
cx q[4], q[1];
h q[0];
rz(0.9455983189023545*pi) q[0];
rz(1.945344190648078*pi) q[1];
cx q[2], q[1];
s q[2];
cz q[0], q[4];
rz(1.9740787638972137*pi) q[1];
cx q[3], q[0];
cx q[4], q[3];
sdg q[0];
cx q[1], q[0];
cx q[2], q[1];
sdg q[3];
cx q[2], q[3];
rz(1.9951474468130193*pi) q[3];
cx q[4], q[1];
cx q[4], q[0];
cx q[4], q[3];
rz(1.9859194336110988*pi) q[0];
rz(0.9712853788064447*pi) q[1];
cx q[2], q[0];
rz(1.9970406034925698*pi) q[3];
rz(1.997066473632341*pi) q[0];
cx q[4], q[0];
rz(1.9932245478309558*pi) q[0];
cx q[2], q[0];
rz(0.9726326382476531*pi) q[0];
cx q[1], q[0];
cx q[4], q[1];
h q[1];
rz(0.4985179329019943*pi) q[1];
cx q[2], q[1];
cx q[0], q[4];
rz(1.4956472950763868*pi) q[1];
cx q[4], q[1];
cx q[2], q[4];
rz(1.9997516505589297*pi) q[1];
cx q[2], q[1];
rz(1.999251197255718*pi) q[1];
cx q[0], q[1];
rz(1.9975638297298144*pi) q[1];
cx q[1], q[3];
cx q[1], q[4];
rz(0.9995961671468141*pi) q[4];
cx q[2], q[1];
cx q[4], q[2];
cx q[3], q[4];
rz(1.9832064002549232*pi) q[4];
cx q[0], q[4];
rz(0.9845446922742163*pi) q[4];
rz(0.992224922493899*pi) q[1];
rz(1.9987592736171076*pi) q[2];
cx q[1], q[3];
cx q[3], q[0];
cx q[4], q[3];
rz(1.969906429106724*pi) q[0];
cx q[2], q[1];
h q[3];
rz(0.22571167490664523*pi) q[3];
h q[3];
sdg q[3];
cx q[4], q[1];
cz q[0], q[4];
cx q[4], q[2];
rz(0.9984869011479522*pi) q[1];
cx q[1], q[0];
h q[2];
rz(0.028213959363330654*pi) q[2];
h q[2];
sdg q[2];
cx q[1], q[4];
h q[4];
rz(0.05642791872666131*pi) q[4];
h q[4];
sdg q[4];
h q[0];
rz(0.11285583745332262*pi) q[0];
h q[0];
sdg q[0];
h q[1];
sdg q[1];
cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[1];
cx q[1], q[2];
cx q[2], q[4];
cx q[4], q[2];
cx q[2], q[4];
cx q[3], q[4];
cx q[4], q[3];
cx q[3], q[4];