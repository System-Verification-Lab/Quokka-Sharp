// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
h q[0];
h q[1];
cx q[0], q[1];
rx(1.8521342049448277) q[1];
cx q[0], q[1];
h q[2];
h q[3];
cx q[1], q[3];
rx(1.8521342049448277) q[3];
cx q[1], q[3];
rx(-3.7863525258053894) q[1];
h q[4];
cx q[3], q[4];
rx(1.8521342049448277) q[4];
cx q[3], q[4];
rx(-3.7863525258053894) q[3];
h q[5];
h q[6];
cx q[0], q[6];
rx(1.8521342049448277) q[6];
cx q[0], q[6];
rx(-3.7863525258053894) q[0];
cx q[0], q[1];
rx(0.6447668769789422) q[1];
cx q[0], q[1];
cx q[1], q[3];
rx(0.6447668769789422) q[3];
cx q[1], q[3];
rx(-1.8520927988925373) q[1];
cx q[2], q[6];
rx(1.8521342049448277) q[6];
cx q[2], q[6];
rx(-3.7863525258053894) q[6];
cx q[0], q[6];
rx(0.6447668769789422) q[6];
cx q[0], q[6];
rx(-1.8520927988925373) q[0];
h q[7];
cx q[5], q[7];
rx(1.8521342049448277) q[7];
cx q[5], q[7];
h q[8];
cx q[2], q[8];
rx(1.8521342049448277) q[8];
cx q[2], q[8];
rx(-3.7863525258053894) q[2];
cx q[2], q[6];
rx(0.6447668769789422) q[6];
cx q[2], q[6];
cx q[4], q[8];
rx(1.8521342049448277) q[8];
cx q[4], q[8];
rx(-3.7863525258053894) q[4];
cx q[3], q[4];
rx(0.6447668769789422) q[4];
cx q[3], q[4];
rx(-1.8520927988925373) q[3];
rx(-1.8520927988925373) q[6];
rx(-3.7863525258053894) q[8];
cx q[2], q[8];
rx(0.6447668769789422) q[8];
cx q[2], q[8];
rx(-1.8520927988925373) q[2];
cx q[4], q[8];
rx(0.6447668769789422) q[8];
cx q[4], q[8];
rx(-1.8520927988925373) q[4];
rx(-1.8520927988925373) q[8];
h q[9];
cx q[5], q[9];
rx(1.8521342049448277) q[9];
cx q[5], q[9];
rx(-3.7863525258053894) q[5];
cx q[7], q[9];
rx(1.8521342049448277) q[9];
cx q[7], q[9];
rx(-3.7863525258053894) q[7];
cx q[5], q[7];
rx(0.6447668769789422) q[7];
cx q[5], q[7];
rx(-3.7863525258053894) q[9];
cx q[5], q[9];
rx(0.6447668769789422) q[9];
cx q[5], q[9];
rx(-1.8520927988925373) q[5];
cx q[7], q[9];
rx(0.6447668769789422) q[9];
cx q[7], q[9];
rx(-1.8520927988925373) q[7];
rx(-1.8520927988925373) q[9];