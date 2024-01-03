// Benchmark was created by MQT Bench on 2023-06-29

// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/

// MQT Bench version: v1.0.0

// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}



OPENQASM 2.0;

include "qelib1.inc";

qreg q[4];

qreg flag[1];

creg meas[5];

h q[0];

h q[1];

h q[2];

h q[3];

x flag[0];

rz(pi/8) flag[0];
cx q[3], flag[0];
rz(-pi/8) flag[0];
cx q[3], flag[0];
cx q[3],q[2];

rz(-pi/8) flag[0];
cx q[2], flag[0];
rz(pi/8) flag[0];
cx q[2], flag[0];
cx q[3],q[2];

rz(pi/8) flag[0];
cx q[2], flag[0];
rz(-pi/8) flag[0];
cx q[2], flag[0];
cx q[2],q[1];

rz(-pi/8) flag[0];
cx q[1], flag[0];
rz(pi/8) flag[0];
cx q[1], flag[0];
cx q[3],q[1];

rz(pi/8) flag[0];
cx q[1], flag[0];
rz(-pi/8) flag[0];
cx q[1], flag[0];
cx q[2],q[1];

rz(-pi/8) flag[0];
cx q[1], flag[0];
rz(pi/8) flag[0];
cx q[1], flag[0];
cx q[3],q[1];

rz(pi/8) flag[0];
cx q[1], flag[0];
rz(-pi/8) flag[0];
cx q[1], flag[0];
cx q[1],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[2],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[1],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(0) q[1];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[2],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(0) q[2];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(0) q[0];
h q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
cx q[1], q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
h q[0];
rz(-pi) q[3];
ccx q[2],flag[0],q[3];

h q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
cx q[1], q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
h q[0];
rz(-pi) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(-pi) q[0];
rz(-pi) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(-pi) q[1];
rz(-pi) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(-pi) q[2];
rz(-pi) q[3];
rz(pi/8) flag[0];
cx q[3], flag[0];
rz(-pi/8) flag[0];
cx q[3], flag[0];
cx q[3],q[2];

rz(-pi/8) flag[0];
cx q[2], flag[0];
rz(pi/8) flag[0];
cx q[2], flag[0];
cx q[3],q[2];

rz(pi/8) flag[0];
cx q[2], flag[0];
rz(-pi/8) flag[0];
cx q[2], flag[0];
cx q[2],q[1];

rz(-pi/8) flag[0];
cx q[1], flag[0];
rz(pi/8) flag[0];
cx q[1], flag[0];
cx q[3],q[1];

rz(pi/8) flag[0];
cx q[1], flag[0];
rz(-pi/8) flag[0];
cx q[1], flag[0];
cx q[2],q[1];

rz(-pi/8) flag[0];
cx q[1], flag[0];
rz(pi/8) flag[0];
cx q[1], flag[0];
cx q[3],q[1];

rz(pi/8) flag[0];
cx q[1], flag[0];
rz(-pi/8) flag[0];
cx q[1], flag[0];
cx q[1],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[2],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[1],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(0) q[1];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[2],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(0) q[2];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(0) q[0];
h q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
cx q[1], q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
h q[0];
rz(-pi) q[3];
ccx q[2],flag[0],q[3];

h q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
cx q[1], q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
h q[0];
rz(-pi) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(-pi) q[0];
rz(-pi) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(-pi) q[1];
rz(-pi) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(-pi) q[2];
rz(-pi) q[3];
rz(pi/8) flag[0];
cx q[3], flag[0];
rz(-pi/8) flag[0];
cx q[3], flag[0];
cx q[3],q[2];

rz(-pi/8) flag[0];
cx q[2], flag[0];
rz(pi/8) flag[0];
cx q[2], flag[0];
cx q[3],q[2];

rz(pi/8) flag[0];
cx q[2], flag[0];
rz(-pi/8) flag[0];
cx q[2], flag[0];
cx q[2],q[1];

rz(-pi/8) flag[0];
cx q[1], flag[0];
rz(pi/8) flag[0];
cx q[1], flag[0];
cx q[3],q[1];

rz(pi/8) flag[0];
cx q[1], flag[0];
rz(-pi/8) flag[0];
cx q[1], flag[0];
cx q[2],q[1];

rz(-pi/8) flag[0];
cx q[1], flag[0];
rz(pi/8) flag[0];
cx q[1], flag[0];
cx q[3],q[1];

rz(pi/8) flag[0];
cx q[1], flag[0];
rz(-pi/8) flag[0];
cx q[1], flag[0];
cx q[1],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[2],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[1],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(0) q[1];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
cx q[2],q[0];

rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(0) q[2];
cx q[3],q[0];

rz(pi/8) flag[0];
cx q[0], flag[0];
rz(-pi/8) flag[0];
cx q[0], flag[0];
rz(0) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(0) q[0];
h q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
cx q[1], q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
h q[0];
rz(-pi) q[3];
ccx q[2],flag[0],q[3];

h q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
cx q[1], q[0];
t q[0];
cx flag[0], q[0];
tdg q[0];
h q[0];
rz(-pi) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(-pi) q[0];
rz(-pi) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(-pi) q[1];
rz(-pi) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(-pi) q[2];
rz(-pi) q[3];
