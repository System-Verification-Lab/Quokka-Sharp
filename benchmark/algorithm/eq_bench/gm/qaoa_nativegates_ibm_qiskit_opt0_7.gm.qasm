OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
cx q[5], q[6];
cx q[6], q[5];
cx q[5], q[6];
cx q[3], q[5];
cx q[5], q[3];
cx q[3], q[5];
h q[5];
cz q[3], q[5];
h q[3];
cz q[5], q[6];
cz q[3], q[6];
h q[6];
h q[2];
cz q[1], q[2];
cz q[0], q[6];
cz q[0], q[5];
cz q[0], q[3];
h q[0];
h q[1];
cz q[2], q[4];
cz q[1], q[4];
rz(0.4739302916834884*pi) q[0];
rz(0.4739302916834884*pi) q[1];
h q[4];
h q[0];
h q[1];
cz q[1], q[4];
cz q[0], q[6];
rz(0.4739302916834884*pi) q[4];
rz(0.4739302916834884*pi) q[6];
h q[4];
h q[6];
cz q[0], q[3];
h q[0];
h q[1];
cz q[3], q[6];
cz q[1], q[4];
rz(0.4739302916834884*pi) q[0];
rz(0.4739302916834884*pi) q[3];
rz(0.4739302916834884*pi) q[1];
h q[0];
h q[3];
h q[1];
cz q[5], q[6];
cz q[3], q[5];
cz q[2], q[4];
cz q[1], q[2];
cz q[0], q[5];
rz(1.2510787879057839*pi) q[0];
h q[5];
h q[2];
h q[0];
cz q[0], q[5];
rz(1.2510787879057839*pi) q[5];
rz(0.2510787879057839*pi) q[2];
h q[5];
h q[2];
cz q[5], q[6];
cz q[3], q[5];
cz q[2], q[4];
cz q[0], q[3];
rz(0.2510787879057839*pi) q[4];
rz(1.2510787879057839*pi) q[3];
rz(1.7489275783599878*pi) q[5];
h q[3];
h q[5];
cz q[3], q[6];
cz q[3], q[5];
cz q[1], q[4];
cz q[1], q[2];
cz q[0], q[6];
rz(1.2510787879057839*pi) q[6];
rz(0.2510787879057839*pi) q[1];
rz(1.7489275783599878*pi) q[4];
rz(1.7489275783599878*pi) q[3];
h q[6];
h q[1];
h q[4];
h q[3];
cz q[5], q[6];
cz q[3], q[6];
cz q[1], q[4];
rz(1.7489275783599878*pi) q[6];
rz(1.7489275783599878*pi) q[1];
h q[6];
h q[1];
h q[4];
h q[5];
cz q[5], q[6];
cz q[3], q[5];
cz q[1], q[4];
rz(1.7489275783599878*pi) q[5];
rz(1.7489275783599878*pi) q[4];
h q[5];
h q[4];
cz q[2], q[4];
cz q[1], q[2];
cz q[0], q[6];
cz q[0], q[5];
cz q[0], q[3];
h q[2];
h q[0];
rz(0.5260663715192746*pi) q[6];
h q[6];
rz(0.5260663715192746*pi) q[5];
h q[5];
rz(1.5260663715192746*pi) q[4];
h q[4];
rz(0.5260663715192746*pi) q[3];
h q[3];
rz(1.5260663715192746*pi) q[2];
h q[2];
rz(1.5260663715192746*pi) q[1];
h q[1];
rz(0.5260663715192746*pi) q[0];
h q[0];