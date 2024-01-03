// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
qreg flag[1];
creg meas[4];
h q[0];
h q[1];
h q[2];
x flag[0];
cp(pi/4) q[2],flag[0];
cx q[2],q[1];
cp(-pi/4) q[1],flag[0];
cx q[2],q[1];
cp(pi/4) q[1],flag[0];
cx q[1],q[0];
cp(-pi/4) q[0],flag[0];
cx q[2],q[0];
cp(pi/4) q[0],flag[0];
cx q[1],q[0];
cp(-pi/4) q[0],flag[0];
u2(0,0) q[1];
cx q[2],q[0];
cp(pi/4) q[0],flag[0];
u2(0,0) q[0];
u1(-pi) q[2];
ccx q[0],q[1],q[2];
u2(-pi,-pi) q[0];
u2(-pi,-pi) q[1];
u1(-pi) q[2];
cp(pi/4) q[2],flag[0];
cx q[2],q[1];
cp(-pi/4) q[1],flag[0];
cx q[2],q[1];
cp(pi/4) q[1],flag[0];
cx q[1],q[0];
cp(-pi/4) q[0],flag[0];
cx q[2],q[0];
cp(pi/4) q[0],flag[0];
cx q[1],q[0];
cp(-pi/4) q[0],flag[0];
u2(0,0) q[1];
cx q[2],q[0];
cp(pi/4) q[0],flag[0];
u2(0,0) q[0];
u1(-pi) q[2];
ccx q[0],q[1],q[2];
u2(-pi,-pi) q[0];
u2(-pi,-pi) q[1];
u1(-pi) q[2];
barrier q[0],q[1],q[2],flag[0];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure flag[0] -> meas[3];
