// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
s q[0];
h q[0];
rz(-1.7092511325680477) q[0];
h q[0];
sdg q[0];
s q[1];
h q[1];
rz(-1.682873047977714) q[1];
h q[1];
sdg q[1];
s q[2];
h q[2];
rz(-1.5108045268930206) q[2];
h q[2];
sdg q[2];
cx q[2],q[1];
s q[1];
h q[1];
rz(-1.035450767474285) q[1];
h q[1];
sdg q[1];
cx q[2],q[1];
cx q[1],q[0];
s q[0];
h q[0];
rz(-0.3177499787899434) q[0];
h q[0];
sdg q[0];
cx q[2],q[0];
s q[0];
h q[0];
rz(-0.1536890792886707) q[0];
h q[0];
sdg q[0];
cx q[1],q[0];
s q[0];
h q[0];
rz(-0.6814046158063357) q[0];
h q[0];
sdg q[0];
cx q[2],q[0];
s q[3];
h q[3];
rz(-5*pi/8) q[3];
h q[3];
sdg q[3];
s q[0];
h q[0];
rz(0.19626712795715498) q[0];
h q[0];
sdg q[0];
s q[1];
h q[1];
rz(0.39253425591430996) q[1];
h q[1];
sdg q[1];
x q[1];
s q[2];
h q[2];
rz(0.7850685118286199) q[2];
h q[2];
sdg q[2];
cx q[0],q[5];
x q[5];
x q[6];
ccx q[1],q[5],q[6];
ccx q[2],q[6],q[4];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(2.748893571891069) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(0.0) q[3];
rx(1.5707963267948966) q[3];
rz(3.5342917352885173) q[3];
rx(1.5707963267948966) q[3];
rz(-pi) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0925258716005044) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0925258716005044) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
x q[6];
ccx q[1],q[5],q[6];
x q[1];
x q[5];
cx q[0],q[5];
ccx q[4],q[0],q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0925258716005044) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0925258716005044) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
ccx q[4],q[0],q[3];
cx q[0],q[5];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0434590896112157) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0434590896112157) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
ccx q[4],q[1],q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0434590896112157) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(3.0434590896112157) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
ccx q[4],q[1],q[3];
x q[1];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(2.9453255256326383) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(2.9453255256326383) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
ccx q[4],q[2],q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(2.9453255256326383) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
cx q[4],q[3];
rz(-1.5707963267948966) q[3];
rx(1.5707963267948966) q[3];
rz(2.9453255256326383) q[3];
rx(1.5707963267948966) q[3];
rz(-1.5707963267948966) q[3];
ccx q[4],q[2],q[3];
x q[5];
ccx q[1],q[5],q[6];
x q[6];
ccx q[2],q[6],q[4];
ccx q[1],q[5],q[6];
x q[1];
x q[5];
cx q[0],q[5];
x q[6];