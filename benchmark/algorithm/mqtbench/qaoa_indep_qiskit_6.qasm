// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
h q[0];
h q[1];
h q[2];
cx q[0], q[2];
rx(-1.8521391244334475) q[2];
cx q[0], q[2];
h q[3];
cx q[0], q[3];
rx(-1.8521391244334475) q[3];
cx q[0], q[3];
rx(10.069503014678693) q[0];
h q[4];
cx q[1], q[4];
rx(-1.8521391244334475) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(-1.8521391244334475) q[4];
cx q[2], q[4];
rx(10.069503014678693) q[2];
cx q[0], q[2];
rx(-0.6447275075138147) q[2];
cx q[0], q[2];
rx(10.069503014678693) q[4];
h q[5];
cx q[1], q[5];
rx(-1.8521391244334475) q[5];
cx q[1], q[5];
rx(10.069503014678693) q[1];
cx q[1], q[4];
rx(-0.6447275075138147) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(-0.6447275075138147) q[4];
cx q[2], q[4];
rx(4.9937354315365) q[2];
cx q[3], q[5];
rx(-1.8521391244334475) q[5];
cx q[3], q[5];
rx(10.069503014678693) q[3];
cx q[0], q[3];
rx(-0.6447275075138147) q[3];
cx q[0], q[3];
rx(4.9937354315365) q[0];
rx(4.9937354315365) q[4];
rx(10.069503014678693) q[5];
cx q[1], q[5];
rx(-0.6447275075138147) q[5];
cx q[1], q[5];
rx(4.9937354315365) q[1];
cx q[3], q[5];
rx(-0.6447275075138147) q[5];
cx q[3], q[5];
rx(4.9937354315365) q[3];
rx(4.9937354315365) q[5];