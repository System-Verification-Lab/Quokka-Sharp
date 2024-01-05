// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
s q[0];
h q[0];
rz(pi/4) q[0];
h q[0];
sdg q[0];
s q[1];
h q[1];
rz(0.9553166181245093) q[1];
h q[1];
sdg q[1];
s q[2];
h q[2];
rz(pi/3) q[2];
h q[2];
sdg q[2];
x q[3];
h q[2];
cx q[3], q[2];
h q[2];
s q[2];
h q[2];
rz(-pi/3) q[2];
h q[2];
sdg q[2];
h q[1];
cx q[2], q[1];
h q[1];
s q[1];
h q[1];
rz(-0.9553166181245093) q[1];
h q[1];
sdg q[1];
h q[0];
cx q[1], q[0];
h q[0];
s q[0];
h q[0];
rz(-pi/4) q[0];
h q[0];
sdg q[0];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
