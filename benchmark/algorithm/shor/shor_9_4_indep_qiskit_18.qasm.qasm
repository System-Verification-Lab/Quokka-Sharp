// Benchmark was created by MQT Bench on 2023-06-29

// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/

// MQT Bench version: v1.0.0

// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}



OPENQASM 2.0;

include "qelib1.inc";

qreg up[8];

qreg down[4];

qreg aux[6];

creg meas[18];

h up[0];

h up[1];

h up[2];

h up[3];

h up[4];

h up[5];

h up[6];

h up[7];

x down[0];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[0];

rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[0], aux[2];
rz(pi/2) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[0], aux[2];
rz(-pi/2) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[0], aux[3];
rz(pi/4) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[0], aux[3];
rz(-pi/4) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[0], aux[4];
rz(pi/8) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(pi/8) aux[4];
cx up[0], aux[4];
rz(-pi/8) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[0];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

h aux[0];

rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[0], aux[2];
rz(-pi/2) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[0], aux[2];
rz(pi/2) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[0], aux[3];
rz(-pi/4) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[0], aux[3];
rz(pi/4) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[0], aux[4];
rz(-pi/8) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(-pi/8) aux[4];
cx up[0], aux[4];
rz(pi/8) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[0];

rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[2];
cx up[0], aux[2];
rz(pi/2) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[0], aux[2];
rz(-pi/2) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[3];
cx up[0], aux[3];
rz(pi/4) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[0], aux[3];
rz(-pi/4) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-pi/8) aux[4];
cx up[0], aux[4];
rz(pi/8) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(pi/8) aux[4];
cx up[0], aux[4];
rz(-pi/8) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[0], aux[2];
rz(-0.0) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[0], aux[2];
rz(-0.0) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[0], aux[3];
rz(pi/2) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[0], aux[3];
rz(-pi/2) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[0], aux[4];
rz(pi/4) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(pi/4) aux[4];
cx up[0], aux[4];
rz(-pi/4) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[0];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

h aux[0];

rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[0], aux[2];
rz(-0.0) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[0], aux[2];
rz(-0.0) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[0], aux[3];
rz(-pi/2) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[0], aux[3];
rz(pi/2) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[0], aux[4];
rz(-pi/4) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(-pi/4) aux[4];
cx up[0], aux[4];
rz(pi/4) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[0];

rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[0], aux[1];
rz(-0.0) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(0.0) aux[2];
cx up[0], aux[2];
rz(-0.0) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[0], aux[2];
rz(-0.0) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-pi/2) aux[3];
cx up[0], aux[3];
rz(pi/2) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[0], aux[3];
rz(-pi/2) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-pi/4) aux[4];
cx up[0], aux[4];
rz(pi/4) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(pi/4) aux[4];
cx up[0], aux[4];
rz(-pi/4) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[0], aux[2];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[0], aux[3];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[0];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

h aux[0];

rz(3*pi/4) aux[1];
cx up[0], aux[1];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[0], aux[2];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[0], aux[3];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-7*pi/8) aux[2];
cx up[0], aux[2];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-7*pi/16) aux[3];
cx up[0], aux[3];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[0], aux[2];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[0], aux[3];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[0];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

h aux[0];

rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[0], aux[2];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[0], aux[3];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

h aux[0];

rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[0], aux[2];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[0], aux[3];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[0],down[0],aux[0];

cswap up[0],down[1],aux[1];

cswap up[0],down[2],aux[2];

cswap up[0],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[0];

rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

h aux[0];

rz(pi/2) aux[1];
cx up[0], aux[1];
rz(-pi/2) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[0], aux[1];
rz(pi/2) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[0], aux[2];
rz(-pi/4) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[0], aux[2];
rz(pi/4) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[0], aux[3];
rz(-pi/8) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[0], aux[3];
rz(pi/8) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(-pi/16) aux[4];
cx up[0], aux[4];
rz(pi/16) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[0];

rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/2) aux[1];
cx up[0], aux[1];
rz(pi/2) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[0], aux[1];
rz(-pi/2) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[0], aux[2];
rz(pi/4) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[0], aux[2];
rz(-pi/4) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[0], aux[3];
rz(pi/8) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[0], aux[3];
rz(-pi/8) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[0], aux[4];
rz(pi/16) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(pi/16) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[0];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
cx down[3],up[0];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[0], aux[0];
rz(-0.0) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[0];

rz(pi/2) aux[1];
cx up[0], aux[1];
rz(-pi/2) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[0], aux[1];
rz(pi/2) aux[1];
cx up[0], aux[1];
cx down[3],up[0];

rz(pi/4) aux[2];
cx up[0], aux[2];
rz(-pi/4) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[0], aux[2];
rz(pi/4) aux[2];
cx up[0], aux[2];
cx down[3],up[0];

rz(pi/8) aux[3];
cx up[0], aux[3];
rz(-pi/8) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[0], aux[3];
rz(pi/8) aux[3];
cx up[0], aux[3];
cx down[3],up[0];

rz(pi/16) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[4];
cx up[0], aux[4];
cx down[3],up[0];

rz(-pi/16) aux[4];
cx up[0], aux[4];
rz(pi/16) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

h aux[0];

rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[0], aux[2];
rz(-pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[0], aux[2];
rz(pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[0], aux[3];
rz(-pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[0], aux[3];
rz(pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[0], aux[4];
rz(-pi/32) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(-pi/32) aux[4];
cx up[0], aux[4];
rz(pi/32) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[0], aux[2];
rz(pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[0], aux[2];
rz(-pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[0], aux[3];
rz(pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[0], aux[3];
rz(-pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[0], aux[4];
rz(pi/32) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(pi/32) aux[4];
cx up[0], aux[4];
rz(-pi/32) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[0];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[2],up[0];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[2],up[0];

rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[2],up[0];

rz(pi/8) aux[2];
cx up[0], aux[2];
rz(-pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[0], aux[2];
rz(pi/8) aux[2];
cx up[0], aux[2];
cx down[2],up[0];

rz(pi/16) aux[3];
cx up[0], aux[3];
rz(-pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[0], aux[3];
rz(pi/16) aux[3];
cx up[0], aux[3];
cx down[2],up[0];

rz(pi/32) aux[4];
cx up[0], aux[4];
rz(-pi/32) aux[4];
cx up[0], aux[4];
cx down[2],up[0];

rz(-pi/32) aux[4];
cx up[0], aux[4];
rz(pi/32) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

h aux[0];

rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[0], aux[2];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[0], aux[3];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[0], aux[2];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[0], aux[3];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[0];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[1],up[0];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[1],up[0];

rz(pi/4) aux[1];
cx up[0], aux[1];
rz(-pi/4) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[0], aux[1];
rz(pi/4) aux[1];
cx up[0], aux[1];
cx down[1],up[0];

rz(5*pi/8) aux[2];
cx up[0], aux[2];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[0], aux[2];
rz(5*pi/8) aux[2];
cx up[0], aux[2];
cx down[1],up[0];

rz(5*pi/16) aux[3];
cx up[0], aux[3];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[0], aux[3];
rz(5*pi/16) aux[3];
cx up[0], aux[3];
cx down[1],up[0];

rz(0.490873852123405) aux[4];
cx up[0], aux[4];
rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[1],up[0];

rz(-0.490873852123405) aux[4];
cx up[0], aux[4];
rz(0.490873852123405) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

h aux[0];

rz(3*pi/4) aux[1];
cx up[0], aux[1];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[0], aux[2];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[0], aux[3];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[0];

rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[0], aux[1];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[0], aux[2];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[0], aux[3];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[0];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[0], aux[0];
rz(-pi/2) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[0], aux[0];
rz(pi/2) aux[0];
cx up[0], aux[0];
cx down[0],up[0];

h aux[0];

rz(3*pi/4) aux[1];
cx up[0], aux[1];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[0], aux[1];
rz(3*pi/4) aux[1];
cx up[0], aux[1];
cx down[0],up[0];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[0], aux[2];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[0], aux[2];
rz(7*pi/8) aux[2];
cx up[0], aux[2];
cx down[0],up[0];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[0], aux[3];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[0], aux[3];
rz(7*pi/16) aux[3];
cx up[0], aux[3];
cx down[0],up[0];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
cx down[0],up[0];

rz(-0.687223392972767) aux[4];
cx up[0], aux[4];
rz(0.687223392972767) aux[4];
cx up[0], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[1], aux[2];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[1], aux[3];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[1];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

h aux[0];

rz(3*pi/4) aux[1];
cx up[1], aux[1];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[1], aux[2];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[1], aux[3];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-7*pi/8) aux[2];
cx up[1], aux[2];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-7*pi/16) aux[3];
cx up[1], aux[3];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[1], aux[2];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[1], aux[3];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[1];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

h aux[0];

rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[1], aux[2];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[1], aux[3];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(-5*pi/8) aux[2];
cx up[1], aux[2];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-5*pi/16) aux[3];
cx up[1], aux[3];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[1], aux[2];
rz(pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[1], aux[2];
rz(-pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[1], aux[3];
rz(pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[1], aux[3];
rz(-pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[1], aux[4];
rz(pi/32) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(pi/32) aux[4];
cx up[1], aux[4];
rz(-pi/32) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[1];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

h aux[0];

rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[1], aux[2];
rz(-pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[1], aux[2];
rz(pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[1], aux[3];
rz(-pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[1], aux[3];
rz(pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[1], aux[4];
rz(-pi/32) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(-pi/32) aux[4];
cx up[1], aux[4];
rz(pi/32) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-pi/8) aux[2];
cx up[1], aux[2];
rz(pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[1], aux[2];
rz(-pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-pi/16) aux[3];
cx up[1], aux[3];
rz(pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[1], aux[3];
rz(-pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-pi/32) aux[4];
cx up[1], aux[4];
rz(pi/32) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(pi/32) aux[4];
cx up[1], aux[4];
rz(-pi/32) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/2) aux[1];
cx up[1], aux[1];
rz(pi/2) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[1], aux[1];
rz(-pi/2) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[1], aux[2];
rz(pi/4) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[1], aux[2];
rz(-pi/4) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[1], aux[3];
rz(pi/8) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[1], aux[3];
rz(-pi/8) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[1], aux[4];
rz(pi/16) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(pi/16) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[1];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

h aux[0];

rz(pi/2) aux[1];
cx up[1], aux[1];
rz(-pi/2) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[1], aux[1];
rz(pi/2) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[1], aux[2];
rz(-pi/4) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[1], aux[2];
rz(pi/4) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[1], aux[3];
rz(-pi/8) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[1], aux[3];
rz(pi/8) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(-pi/16) aux[4];
cx up[1], aux[4];
rz(pi/16) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[1];

rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

h aux[0];

rz(-pi/2) aux[1];
cx up[1], aux[1];
rz(pi/2) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[1], aux[1];
rz(-pi/2) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[1], aux[2];
rz(pi/4) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[1], aux[2];
rz(-pi/4) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[1], aux[3];
rz(pi/8) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[1], aux[3];
rz(-pi/8) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[1], aux[4];
rz(pi/16) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(pi/16) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[1],down[0],aux[0];

cswap up[1],down[1],aux[1];

cswap up[1],down[2],aux[2];

cswap up[1],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[1];

rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

h aux[0];

rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[1], aux[2];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[1], aux[3];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[1], aux[2];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[1], aux[3];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[1];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[3],up[1];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[1];

rz(pi/4) aux[1];
cx up[1], aux[1];
rz(-pi/4) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[1], aux[1];
rz(pi/4) aux[1];
cx up[1], aux[1];
cx down[3],up[1];

rz(5*pi/8) aux[2];
cx up[1], aux[2];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[1], aux[2];
rz(5*pi/8) aux[2];
cx up[1], aux[2];
cx down[3],up[1];

rz(5*pi/16) aux[3];
cx up[1], aux[3];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[1], aux[3];
rz(5*pi/16) aux[3];
cx up[1], aux[3];
cx down[3],up[1];

rz(0.490873852123405) aux[4];
cx up[1], aux[4];
rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[3],up[1];

rz(-0.490873852123405) aux[4];
cx up[1], aux[4];
rz(0.490873852123405) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

h aux[0];

rz(3*pi/4) aux[1];
cx up[1], aux[1];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[1], aux[2];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[1], aux[3];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[1];

rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[1], aux[1];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[1], aux[2];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[1], aux[3];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[1];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(-pi/2) aux[0];
cx up[1], aux[0];
cx down[2],up[1];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[1], aux[0];
rz(pi/2) aux[0];
cx up[1], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[2],up[1];

rz(3*pi/4) aux[1];
cx up[1], aux[1];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[1], aux[1];
rz(3*pi/4) aux[1];
cx up[1], aux[1];
cx down[2],up[1];

rz(7*pi/8) aux[2];
cx up[1], aux[2];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[1], aux[2];
rz(7*pi/8) aux[2];
cx up[1], aux[2];
cx down[2],up[1];

rz(7*pi/16) aux[3];
cx up[1], aux[3];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[1], aux[3];
rz(7*pi/16) aux[3];
cx up[1], aux[3];
cx down[2],up[1];

rz(0.687223392972767) aux[4];
cx up[1], aux[4];
rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[2],up[1];

rz(-0.687223392972767) aux[4];
cx up[1], aux[4];
rz(0.687223392972767) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

h aux[0];

rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[1], aux[2];
rz(-0.0) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[1], aux[2];
rz(-0.0) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[1], aux[3];
rz(-pi/2) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[1], aux[3];
rz(pi/2) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[1], aux[4];
rz(-pi/4) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(-pi/4) aux[4];
cx up[1], aux[4];
rz(pi/4) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[1];

rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[1], aux[2];
rz(-0.0) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[1], aux[2];
rz(-0.0) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[1], aux[3];
rz(pi/2) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[1], aux[3];
rz(-pi/2) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[1], aux[4];
rz(pi/4) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(pi/4) aux[4];
cx up[1], aux[4];
rz(-pi/4) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[1];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[1],up[1];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[1],up[1];

rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[1],up[1];

rz(0.0) aux[2];
cx up[1], aux[2];
rz(-0.0) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[1], aux[2];
rz(-0.0) aux[2];
cx up[1], aux[2];
cx down[1],up[1];

rz(pi/2) aux[3];
cx up[1], aux[3];
rz(-pi/2) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[1], aux[3];
rz(pi/2) aux[3];
cx up[1], aux[3];
cx down[1],up[1];

rz(pi/4) aux[4];
cx up[1], aux[4];
rz(-pi/4) aux[4];
cx up[1], aux[4];
cx down[1],up[1];

rz(-pi/4) aux[4];
cx up[1], aux[4];
rz(pi/4) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

h aux[0];

rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[1], aux[2];
rz(-pi/2) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[1], aux[2];
rz(pi/2) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[1], aux[3];
rz(-pi/4) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[1], aux[3];
rz(pi/4) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[1], aux[4];
rz(-pi/8) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(-pi/8) aux[4];
cx up[1], aux[4];
rz(pi/8) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[1];

rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[1], aux[2];
rz(pi/2) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[1], aux[2];
rz(-pi/2) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[1], aux[3];
rz(pi/4) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[1], aux[3];
rz(-pi/4) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[1], aux[4];
rz(pi/8) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(pi/8) aux[4];
cx up[1], aux[4];
rz(-pi/8) aux[4];
cx up[1], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[1];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[1], aux[0];
rz(-0.0) aux[0];
cx up[1], aux[0];
cx down[0],up[1];

h aux[0];

rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[1], aux[1];
rz(-0.0) aux[1];
cx up[1], aux[1];
cx down[0],up[1];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[1], aux[2];
rz(-pi/2) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[1], aux[2];
rz(pi/2) aux[2];
cx up[1], aux[2];
cx down[0],up[1];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[1], aux[3];
rz(-pi/4) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[1], aux[3];
rz(pi/4) aux[3];
cx up[1], aux[3];
cx down[0],up[1];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[1], aux[4];
rz(-pi/8) aux[4];
cx up[1], aux[4];
cx down[0],up[1];

rz(-pi/8) aux[4];
cx up[1], aux[4];
rz(pi/8) aux[4];
cx up[1], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[2];

rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[2], aux[2];
rz(pi/2) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[2], aux[2];
rz(-pi/2) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[2], aux[3];
rz(pi/4) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[2], aux[3];
rz(-pi/4) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[2], aux[4];
rz(pi/8) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(pi/8) aux[4];
cx up[2], aux[4];
rz(-pi/8) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[2];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

h aux[0];

rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[2], aux[2];
rz(-pi/2) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[2], aux[2];
rz(pi/2) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[2], aux[3];
rz(-pi/4) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[2], aux[3];
rz(pi/4) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[2], aux[4];
rz(-pi/8) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(-pi/8) aux[4];
cx up[2], aux[4];
rz(pi/8) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[2];

rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[2];
cx up[2], aux[2];
rz(pi/2) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[2], aux[2];
rz(-pi/2) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[3];
cx up[2], aux[3];
rz(pi/4) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[2], aux[3];
rz(-pi/4) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-pi/8) aux[4];
cx up[2], aux[4];
rz(pi/8) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(pi/8) aux[4];
cx up[2], aux[4];
rz(-pi/8) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[2], aux[2];
rz(-0.0) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[2], aux[2];
rz(-0.0) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[2], aux[3];
rz(pi/2) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[2], aux[3];
rz(-pi/2) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[2], aux[4];
rz(pi/4) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(pi/4) aux[4];
cx up[2], aux[4];
rz(-pi/4) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[2];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

h aux[0];

rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[2], aux[2];
rz(-0.0) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[2], aux[2];
rz(-0.0) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[2], aux[3];
rz(-pi/2) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[2], aux[3];
rz(pi/2) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[2], aux[4];
rz(-pi/4) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(-pi/4) aux[4];
cx up[2], aux[4];
rz(pi/4) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[2];

rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[2], aux[1];
rz(-0.0) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(0.0) aux[2];
cx up[2], aux[2];
rz(-0.0) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[2], aux[2];
rz(-0.0) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-pi/2) aux[3];
cx up[2], aux[3];
rz(pi/2) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[2], aux[3];
rz(-pi/2) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-pi/4) aux[4];
cx up[2], aux[4];
rz(pi/4) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(pi/4) aux[4];
cx up[2], aux[4];
rz(-pi/4) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[2], aux[2];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[2], aux[3];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[2];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

h aux[0];

rz(3*pi/4) aux[1];
cx up[2], aux[1];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[2], aux[2];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[2], aux[3];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-7*pi/8) aux[2];
cx up[2], aux[2];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-7*pi/16) aux[3];
cx up[2], aux[3];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[2], aux[2];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[2], aux[3];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[2];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

h aux[0];

rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[2], aux[2];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[2], aux[3];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

h aux[0];

rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[2], aux[2];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[2], aux[3];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[2],down[0],aux[0];

cswap up[2],down[1],aux[1];

cswap up[2],down[2],aux[2];

cswap up[2],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[2];

rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

h aux[0];

rz(pi/2) aux[1];
cx up[2], aux[1];
rz(-pi/2) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[2], aux[1];
rz(pi/2) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[2], aux[2];
rz(-pi/4) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[2], aux[2];
rz(pi/4) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[2], aux[3];
rz(-pi/8) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[2], aux[3];
rz(pi/8) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(-pi/16) aux[4];
cx up[2], aux[4];
rz(pi/16) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[2];

rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/2) aux[1];
cx up[2], aux[1];
rz(pi/2) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[2], aux[1];
rz(-pi/2) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[2], aux[2];
rz(pi/4) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[2], aux[2];
rz(-pi/4) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[2], aux[3];
rz(pi/8) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[2], aux[3];
rz(-pi/8) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[2], aux[4];
rz(pi/16) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(pi/16) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[2];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
cx down[3],up[2];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[2], aux[0];
rz(-0.0) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[2];

rz(pi/2) aux[1];
cx up[2], aux[1];
rz(-pi/2) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[2], aux[1];
rz(pi/2) aux[1];
cx up[2], aux[1];
cx down[3],up[2];

rz(pi/4) aux[2];
cx up[2], aux[2];
rz(-pi/4) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[2], aux[2];
rz(pi/4) aux[2];
cx up[2], aux[2];
cx down[3],up[2];

rz(pi/8) aux[3];
cx up[2], aux[3];
rz(-pi/8) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[2], aux[3];
rz(pi/8) aux[3];
cx up[2], aux[3];
cx down[3],up[2];

rz(pi/16) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[4];
cx up[2], aux[4];
cx down[3],up[2];

rz(-pi/16) aux[4];
cx up[2], aux[4];
rz(pi/16) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

h aux[0];

rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[2], aux[2];
rz(-pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[2], aux[2];
rz(pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[2], aux[3];
rz(-pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[2], aux[3];
rz(pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[2], aux[4];
rz(-pi/32) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(-pi/32) aux[4];
cx up[2], aux[4];
rz(pi/32) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[2], aux[2];
rz(pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[2], aux[2];
rz(-pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[2], aux[3];
rz(pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[2], aux[3];
rz(-pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[2], aux[4];
rz(pi/32) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(pi/32) aux[4];
cx up[2], aux[4];
rz(-pi/32) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[2];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[2],up[2];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[2],up[2];

rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[2],up[2];

rz(pi/8) aux[2];
cx up[2], aux[2];
rz(-pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[2], aux[2];
rz(pi/8) aux[2];
cx up[2], aux[2];
cx down[2],up[2];

rz(pi/16) aux[3];
cx up[2], aux[3];
rz(-pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[2], aux[3];
rz(pi/16) aux[3];
cx up[2], aux[3];
cx down[2],up[2];

rz(pi/32) aux[4];
cx up[2], aux[4];
rz(-pi/32) aux[4];
cx up[2], aux[4];
cx down[2],up[2];

rz(-pi/32) aux[4];
cx up[2], aux[4];
rz(pi/32) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

h aux[0];

rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[2], aux[2];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[2], aux[3];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[2], aux[2];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[2], aux[3];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[2];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[1],up[2];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[1],up[2];

rz(pi/4) aux[1];
cx up[2], aux[1];
rz(-pi/4) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[2], aux[1];
rz(pi/4) aux[1];
cx up[2], aux[1];
cx down[1],up[2];

rz(5*pi/8) aux[2];
cx up[2], aux[2];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[2], aux[2];
rz(5*pi/8) aux[2];
cx up[2], aux[2];
cx down[1],up[2];

rz(5*pi/16) aux[3];
cx up[2], aux[3];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[2], aux[3];
rz(5*pi/16) aux[3];
cx up[2], aux[3];
cx down[1],up[2];

rz(0.490873852123405) aux[4];
cx up[2], aux[4];
rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[1],up[2];

rz(-0.490873852123405) aux[4];
cx up[2], aux[4];
rz(0.490873852123405) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

h aux[0];

rz(3*pi/4) aux[1];
cx up[2], aux[1];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[2], aux[2];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[2], aux[3];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[2];

rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[2], aux[1];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[2], aux[2];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[2], aux[3];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[2];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[2], aux[0];
rz(-pi/2) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[2], aux[0];
rz(pi/2) aux[0];
cx up[2], aux[0];
cx down[0],up[2];

h aux[0];

rz(3*pi/4) aux[1];
cx up[2], aux[1];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[2], aux[1];
rz(3*pi/4) aux[1];
cx up[2], aux[1];
cx down[0],up[2];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[2], aux[2];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[2], aux[2];
rz(7*pi/8) aux[2];
cx up[2], aux[2];
cx down[0],up[2];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[2], aux[3];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[2], aux[3];
rz(7*pi/16) aux[3];
cx up[2], aux[3];
cx down[0],up[2];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
cx down[0],up[2];

rz(-0.687223392972767) aux[4];
cx up[2], aux[4];
rz(0.687223392972767) aux[4];
cx up[2], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[3], aux[2];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[3], aux[3];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[3];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

h aux[0];

rz(3*pi/4) aux[1];
cx up[3], aux[1];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[3], aux[2];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[3], aux[3];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-7*pi/8) aux[2];
cx up[3], aux[2];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-7*pi/16) aux[3];
cx up[3], aux[3];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[3], aux[2];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[3], aux[3];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[3];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

h aux[0];

rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[3], aux[2];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[3], aux[3];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(-5*pi/8) aux[2];
cx up[3], aux[2];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-5*pi/16) aux[3];
cx up[3], aux[3];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[3], aux[2];
rz(pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[3], aux[2];
rz(-pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[3], aux[3];
rz(pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[3], aux[3];
rz(-pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[3], aux[4];
rz(pi/32) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(pi/32) aux[4];
cx up[3], aux[4];
rz(-pi/32) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[3];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

h aux[0];

rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[3], aux[2];
rz(-pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[3], aux[2];
rz(pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[3], aux[3];
rz(-pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[3], aux[3];
rz(pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[3], aux[4];
rz(-pi/32) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(-pi/32) aux[4];
cx up[3], aux[4];
rz(pi/32) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-pi/8) aux[2];
cx up[3], aux[2];
rz(pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[3], aux[2];
rz(-pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-pi/16) aux[3];
cx up[3], aux[3];
rz(pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[3], aux[3];
rz(-pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-pi/32) aux[4];
cx up[3], aux[4];
rz(pi/32) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(pi/32) aux[4];
cx up[3], aux[4];
rz(-pi/32) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/2) aux[1];
cx up[3], aux[1];
rz(pi/2) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[3], aux[1];
rz(-pi/2) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[3], aux[2];
rz(pi/4) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[3], aux[2];
rz(-pi/4) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[3], aux[3];
rz(pi/8) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[3], aux[3];
rz(-pi/8) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[3], aux[4];
rz(pi/16) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(pi/16) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[3];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

h aux[0];

rz(pi/2) aux[1];
cx up[3], aux[1];
rz(-pi/2) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[3], aux[1];
rz(pi/2) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[3], aux[2];
rz(-pi/4) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[3], aux[2];
rz(pi/4) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[3], aux[3];
rz(-pi/8) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[3], aux[3];
rz(pi/8) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(-pi/16) aux[4];
cx up[3], aux[4];
rz(pi/16) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[3];

rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

h aux[0];

rz(-pi/2) aux[1];
cx up[3], aux[1];
rz(pi/2) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[3], aux[1];
rz(-pi/2) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[3], aux[2];
rz(pi/4) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[3], aux[2];
rz(-pi/4) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[3], aux[3];
rz(pi/8) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[3], aux[3];
rz(-pi/8) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[3], aux[4];
rz(pi/16) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(pi/16) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[3],down[0],aux[0];

cswap up[3],down[1],aux[1];

cswap up[3],down[2],aux[2];

cswap up[3],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[3];

rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

h aux[0];

rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[3], aux[2];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[3], aux[3];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[3], aux[2];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[3], aux[3];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[3];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[3],up[3];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[3];

rz(pi/4) aux[1];
cx up[3], aux[1];
rz(-pi/4) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[3], aux[1];
rz(pi/4) aux[1];
cx up[3], aux[1];
cx down[3],up[3];

rz(5*pi/8) aux[2];
cx up[3], aux[2];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[3], aux[2];
rz(5*pi/8) aux[2];
cx up[3], aux[2];
cx down[3],up[3];

rz(5*pi/16) aux[3];
cx up[3], aux[3];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[3], aux[3];
rz(5*pi/16) aux[3];
cx up[3], aux[3];
cx down[3],up[3];

rz(0.490873852123405) aux[4];
cx up[3], aux[4];
rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[3],up[3];

rz(-0.490873852123405) aux[4];
cx up[3], aux[4];
rz(0.490873852123405) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

h aux[0];

rz(3*pi/4) aux[1];
cx up[3], aux[1];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[3], aux[2];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[3], aux[3];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[3];

rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[3], aux[1];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[3], aux[2];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[3], aux[3];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[3];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(-pi/2) aux[0];
cx up[3], aux[0];
cx down[2],up[3];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[3], aux[0];
rz(pi/2) aux[0];
cx up[3], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[2],up[3];

rz(3*pi/4) aux[1];
cx up[3], aux[1];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[3], aux[1];
rz(3*pi/4) aux[1];
cx up[3], aux[1];
cx down[2],up[3];

rz(7*pi/8) aux[2];
cx up[3], aux[2];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[3], aux[2];
rz(7*pi/8) aux[2];
cx up[3], aux[2];
cx down[2],up[3];

rz(7*pi/16) aux[3];
cx up[3], aux[3];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[3], aux[3];
rz(7*pi/16) aux[3];
cx up[3], aux[3];
cx down[2],up[3];

rz(0.687223392972767) aux[4];
cx up[3], aux[4];
rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[2],up[3];

rz(-0.687223392972767) aux[4];
cx up[3], aux[4];
rz(0.687223392972767) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

h aux[0];

rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[3], aux[2];
rz(-0.0) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[3], aux[2];
rz(-0.0) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[3], aux[3];
rz(-pi/2) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[3], aux[3];
rz(pi/2) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[3], aux[4];
rz(-pi/4) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(-pi/4) aux[4];
cx up[3], aux[4];
rz(pi/4) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[3];

rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[3], aux[2];
rz(-0.0) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[3], aux[2];
rz(-0.0) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[3], aux[3];
rz(pi/2) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[3], aux[3];
rz(-pi/2) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[3], aux[4];
rz(pi/4) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(pi/4) aux[4];
cx up[3], aux[4];
rz(-pi/4) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[3];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[1],up[3];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[1],up[3];

rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[1],up[3];

rz(0.0) aux[2];
cx up[3], aux[2];
rz(-0.0) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[3], aux[2];
rz(-0.0) aux[2];
cx up[3], aux[2];
cx down[1],up[3];

rz(pi/2) aux[3];
cx up[3], aux[3];
rz(-pi/2) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[3], aux[3];
rz(pi/2) aux[3];
cx up[3], aux[3];
cx down[1],up[3];

rz(pi/4) aux[4];
cx up[3], aux[4];
rz(-pi/4) aux[4];
cx up[3], aux[4];
cx down[1],up[3];

rz(-pi/4) aux[4];
cx up[3], aux[4];
rz(pi/4) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

h aux[0];

rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[3], aux[2];
rz(-pi/2) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[3], aux[2];
rz(pi/2) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[3], aux[3];
rz(-pi/4) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[3], aux[3];
rz(pi/4) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[3], aux[4];
rz(-pi/8) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(-pi/8) aux[4];
cx up[3], aux[4];
rz(pi/8) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[3];

rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[3], aux[2];
rz(pi/2) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[3], aux[2];
rz(-pi/2) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[3], aux[3];
rz(pi/4) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[3], aux[3];
rz(-pi/4) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[3], aux[4];
rz(pi/8) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(pi/8) aux[4];
cx up[3], aux[4];
rz(-pi/8) aux[4];
cx up[3], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[3];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[3], aux[0];
rz(-0.0) aux[0];
cx up[3], aux[0];
cx down[0],up[3];

h aux[0];

rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[3], aux[1];
rz(-0.0) aux[1];
cx up[3], aux[1];
cx down[0],up[3];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[3], aux[2];
rz(-pi/2) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[3], aux[2];
rz(pi/2) aux[2];
cx up[3], aux[2];
cx down[0],up[3];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[3], aux[3];
rz(-pi/4) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[3], aux[3];
rz(pi/4) aux[3];
cx up[3], aux[3];
cx down[0],up[3];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[3], aux[4];
rz(-pi/8) aux[4];
cx up[3], aux[4];
cx down[0],up[3];

rz(-pi/8) aux[4];
cx up[3], aux[4];
rz(pi/8) aux[4];
cx up[3], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[4];

rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[4], aux[2];
rz(pi/2) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[4], aux[2];
rz(-pi/2) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[4], aux[3];
rz(pi/4) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[4], aux[3];
rz(-pi/4) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[4], aux[4];
rz(pi/8) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(pi/8) aux[4];
cx up[4], aux[4];
rz(-pi/8) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[4];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

h aux[0];

rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[4], aux[2];
rz(-pi/2) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[4], aux[2];
rz(pi/2) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[4], aux[3];
rz(-pi/4) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[4], aux[3];
rz(pi/4) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[4], aux[4];
rz(-pi/8) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(-pi/8) aux[4];
cx up[4], aux[4];
rz(pi/8) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[4];

rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[2];
cx up[4], aux[2];
rz(pi/2) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[4], aux[2];
rz(-pi/2) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[3];
cx up[4], aux[3];
rz(pi/4) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[4], aux[3];
rz(-pi/4) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-pi/8) aux[4];
cx up[4], aux[4];
rz(pi/8) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(pi/8) aux[4];
cx up[4], aux[4];
rz(-pi/8) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[4], aux[2];
rz(-0.0) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[4], aux[2];
rz(-0.0) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[4], aux[3];
rz(pi/2) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[4], aux[3];
rz(-pi/2) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[4], aux[4];
rz(pi/4) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(pi/4) aux[4];
cx up[4], aux[4];
rz(-pi/4) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[4];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

h aux[0];

rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[4], aux[2];
rz(-0.0) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[4], aux[2];
rz(-0.0) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[4], aux[3];
rz(-pi/2) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[4], aux[3];
rz(pi/2) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[4], aux[4];
rz(-pi/4) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(-pi/4) aux[4];
cx up[4], aux[4];
rz(pi/4) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[4];

rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[4], aux[1];
rz(-0.0) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(0.0) aux[2];
cx up[4], aux[2];
rz(-0.0) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[4], aux[2];
rz(-0.0) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-pi/2) aux[3];
cx up[4], aux[3];
rz(pi/2) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[4], aux[3];
rz(-pi/2) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-pi/4) aux[4];
cx up[4], aux[4];
rz(pi/4) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(pi/4) aux[4];
cx up[4], aux[4];
rz(-pi/4) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[4], aux[2];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[4], aux[3];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[4];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

h aux[0];

rz(3*pi/4) aux[1];
cx up[4], aux[1];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[4], aux[2];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[4], aux[3];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-7*pi/8) aux[2];
cx up[4], aux[2];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-7*pi/16) aux[3];
cx up[4], aux[3];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[4], aux[2];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[4], aux[3];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[4];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

h aux[0];

rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[4], aux[2];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[4], aux[3];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

h aux[0];

rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[4], aux[2];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[4], aux[3];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[4],down[0],aux[0];

cswap up[4],down[1],aux[1];

cswap up[4],down[2],aux[2];

cswap up[4],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[4];

rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

h aux[0];

rz(pi/2) aux[1];
cx up[4], aux[1];
rz(-pi/2) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[4], aux[1];
rz(pi/2) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[4], aux[2];
rz(-pi/4) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[4], aux[2];
rz(pi/4) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[4], aux[3];
rz(-pi/8) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[4], aux[3];
rz(pi/8) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(-pi/16) aux[4];
cx up[4], aux[4];
rz(pi/16) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[4];

rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/2) aux[1];
cx up[4], aux[1];
rz(pi/2) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[4], aux[1];
rz(-pi/2) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[4], aux[2];
rz(pi/4) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[4], aux[2];
rz(-pi/4) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[4], aux[3];
rz(pi/8) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[4], aux[3];
rz(-pi/8) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[4], aux[4];
rz(pi/16) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(pi/16) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[4];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
cx down[3],up[4];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[4], aux[0];
rz(-0.0) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[4];

rz(pi/2) aux[1];
cx up[4], aux[1];
rz(-pi/2) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[4], aux[1];
rz(pi/2) aux[1];
cx up[4], aux[1];
cx down[3],up[4];

rz(pi/4) aux[2];
cx up[4], aux[2];
rz(-pi/4) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[4], aux[2];
rz(pi/4) aux[2];
cx up[4], aux[2];
cx down[3],up[4];

rz(pi/8) aux[3];
cx up[4], aux[3];
rz(-pi/8) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[4], aux[3];
rz(pi/8) aux[3];
cx up[4], aux[3];
cx down[3],up[4];

rz(pi/16) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[4];
cx up[4], aux[4];
cx down[3],up[4];

rz(-pi/16) aux[4];
cx up[4], aux[4];
rz(pi/16) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

h aux[0];

rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[4], aux[2];
rz(-pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[4], aux[2];
rz(pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[4], aux[3];
rz(-pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[4], aux[3];
rz(pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[4], aux[4];
rz(-pi/32) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(-pi/32) aux[4];
cx up[4], aux[4];
rz(pi/32) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[4], aux[2];
rz(pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[4], aux[2];
rz(-pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[4], aux[3];
rz(pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[4], aux[3];
rz(-pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[4], aux[4];
rz(pi/32) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(pi/32) aux[4];
cx up[4], aux[4];
rz(-pi/32) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[4];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[2],up[4];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[2],up[4];

rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[2],up[4];

rz(pi/8) aux[2];
cx up[4], aux[2];
rz(-pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[4], aux[2];
rz(pi/8) aux[2];
cx up[4], aux[2];
cx down[2],up[4];

rz(pi/16) aux[3];
cx up[4], aux[3];
rz(-pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[4], aux[3];
rz(pi/16) aux[3];
cx up[4], aux[3];
cx down[2],up[4];

rz(pi/32) aux[4];
cx up[4], aux[4];
rz(-pi/32) aux[4];
cx up[4], aux[4];
cx down[2],up[4];

rz(-pi/32) aux[4];
cx up[4], aux[4];
rz(pi/32) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

h aux[0];

rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[4], aux[2];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[4], aux[3];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[4], aux[2];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[4], aux[3];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[4];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[1],up[4];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[1],up[4];

rz(pi/4) aux[1];
cx up[4], aux[1];
rz(-pi/4) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[4], aux[1];
rz(pi/4) aux[1];
cx up[4], aux[1];
cx down[1],up[4];

rz(5*pi/8) aux[2];
cx up[4], aux[2];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[4], aux[2];
rz(5*pi/8) aux[2];
cx up[4], aux[2];
cx down[1],up[4];

rz(5*pi/16) aux[3];
cx up[4], aux[3];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[4], aux[3];
rz(5*pi/16) aux[3];
cx up[4], aux[3];
cx down[1],up[4];

rz(0.490873852123405) aux[4];
cx up[4], aux[4];
rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[1],up[4];

rz(-0.490873852123405) aux[4];
cx up[4], aux[4];
rz(0.490873852123405) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

h aux[0];

rz(3*pi/4) aux[1];
cx up[4], aux[1];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[4], aux[2];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[4], aux[3];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[4];

rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[4], aux[1];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[4], aux[2];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[4], aux[3];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[4];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[4], aux[0];
rz(-pi/2) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[4], aux[0];
rz(pi/2) aux[0];
cx up[4], aux[0];
cx down[0],up[4];

h aux[0];

rz(3*pi/4) aux[1];
cx up[4], aux[1];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[4], aux[1];
rz(3*pi/4) aux[1];
cx up[4], aux[1];
cx down[0],up[4];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[4], aux[2];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[4], aux[2];
rz(7*pi/8) aux[2];
cx up[4], aux[2];
cx down[0],up[4];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[4], aux[3];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[4], aux[3];
rz(7*pi/16) aux[3];
cx up[4], aux[3];
cx down[0],up[4];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
cx down[0],up[4];

rz(-0.687223392972767) aux[4];
cx up[4], aux[4];
rz(0.687223392972767) aux[4];
cx up[4], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[5];

swap up[3],up[4];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[5], aux[2];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[5], aux[3];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[5];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

h aux[0];

rz(3*pi/4) aux[1];
cx up[5], aux[1];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[5], aux[2];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[5], aux[3];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-7*pi/8) aux[2];
cx up[5], aux[2];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-7*pi/16) aux[3];
cx up[5], aux[3];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[5], aux[2];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[5], aux[3];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[5];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

h aux[0];

rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[5], aux[2];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[5], aux[3];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(-5*pi/8) aux[2];
cx up[5], aux[2];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-5*pi/16) aux[3];
cx up[5], aux[3];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[5], aux[2];
rz(pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[5], aux[2];
rz(-pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[5], aux[3];
rz(pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[5], aux[3];
rz(-pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[5], aux[4];
rz(pi/32) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(pi/32) aux[4];
cx up[5], aux[4];
rz(-pi/32) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[5];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

h aux[0];

rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[5], aux[2];
rz(-pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[5], aux[2];
rz(pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[5], aux[3];
rz(-pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[5], aux[3];
rz(pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[5], aux[4];
rz(-pi/32) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(-pi/32) aux[4];
cx up[5], aux[4];
rz(pi/32) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-pi/8) aux[2];
cx up[5], aux[2];
rz(pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[5], aux[2];
rz(-pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-pi/16) aux[3];
cx up[5], aux[3];
rz(pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[5], aux[3];
rz(-pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-pi/32) aux[4];
cx up[5], aux[4];
rz(pi/32) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(pi/32) aux[4];
cx up[5], aux[4];
rz(-pi/32) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/2) aux[1];
cx up[5], aux[1];
rz(pi/2) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[5], aux[1];
rz(-pi/2) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[5], aux[2];
rz(pi/4) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[5], aux[2];
rz(-pi/4) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[5], aux[3];
rz(pi/8) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[5], aux[3];
rz(-pi/8) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[5], aux[4];
rz(pi/16) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(pi/16) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[5];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

h aux[0];

rz(pi/2) aux[1];
cx up[5], aux[1];
rz(-pi/2) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[5], aux[1];
rz(pi/2) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[5], aux[2];
rz(-pi/4) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[5], aux[2];
rz(pi/4) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[5], aux[3];
rz(-pi/8) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[5], aux[3];
rz(pi/8) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(-pi/16) aux[4];
cx up[5], aux[4];
rz(pi/16) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[5];

rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

h aux[0];

rz(-pi/2) aux[1];
cx up[5], aux[1];
rz(pi/2) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[5], aux[1];
rz(-pi/2) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[5], aux[2];
rz(pi/4) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[5], aux[2];
rz(-pi/4) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[5], aux[3];
rz(pi/8) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[5], aux[3];
rz(-pi/8) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[5], aux[4];
rz(pi/16) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(pi/16) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[5],down[0],aux[0];

cswap up[5],down[1],aux[1];

cswap up[5],down[2],aux[2];

cswap up[5],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[5];

rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

h aux[0];

rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[5], aux[2];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[5], aux[3];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[5], aux[2];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[5], aux[3];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[5];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[3],up[5];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[5];

rz(pi/4) aux[1];
cx up[5], aux[1];
rz(-pi/4) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[5], aux[1];
rz(pi/4) aux[1];
cx up[5], aux[1];
cx down[3],up[5];

rz(5*pi/8) aux[2];
cx up[5], aux[2];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[5], aux[2];
rz(5*pi/8) aux[2];
cx up[5], aux[2];
cx down[3],up[5];

rz(5*pi/16) aux[3];
cx up[5], aux[3];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[5], aux[3];
rz(5*pi/16) aux[3];
cx up[5], aux[3];
cx down[3],up[5];

rz(0.490873852123405) aux[4];
cx up[5], aux[4];
rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[3],up[5];

rz(-0.490873852123405) aux[4];
cx up[5], aux[4];
rz(0.490873852123405) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

h aux[0];

rz(3*pi/4) aux[1];
cx up[5], aux[1];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[5], aux[2];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[5], aux[3];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[5];

rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[5], aux[1];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[5], aux[2];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[5], aux[3];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[5];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(-pi/2) aux[0];
cx up[5], aux[0];
cx down[2],up[5];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[5], aux[0];
rz(pi/2) aux[0];
cx up[5], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[2],up[5];

rz(3*pi/4) aux[1];
cx up[5], aux[1];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[5], aux[1];
rz(3*pi/4) aux[1];
cx up[5], aux[1];
cx down[2],up[5];

rz(7*pi/8) aux[2];
cx up[5], aux[2];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[5], aux[2];
rz(7*pi/8) aux[2];
cx up[5], aux[2];
cx down[2],up[5];

rz(7*pi/16) aux[3];
cx up[5], aux[3];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[5], aux[3];
rz(7*pi/16) aux[3];
cx up[5], aux[3];
cx down[2],up[5];

rz(0.687223392972767) aux[4];
cx up[5], aux[4];
rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[2],up[5];

rz(-0.687223392972767) aux[4];
cx up[5], aux[4];
rz(0.687223392972767) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

h aux[0];

rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[5], aux[2];
rz(-0.0) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[5], aux[2];
rz(-0.0) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[5], aux[3];
rz(-pi/2) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[5], aux[3];
rz(pi/2) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[5], aux[4];
rz(-pi/4) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(-pi/4) aux[4];
cx up[5], aux[4];
rz(pi/4) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[5];

rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[5], aux[2];
rz(-0.0) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[5], aux[2];
rz(-0.0) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[5], aux[3];
rz(pi/2) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[5], aux[3];
rz(-pi/2) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[5], aux[4];
rz(pi/4) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(pi/4) aux[4];
cx up[5], aux[4];
rz(-pi/4) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[5];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[1],up[5];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[1],up[5];

rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[1],up[5];

rz(0.0) aux[2];
cx up[5], aux[2];
rz(-0.0) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[5], aux[2];
rz(-0.0) aux[2];
cx up[5], aux[2];
cx down[1],up[5];

rz(pi/2) aux[3];
cx up[5], aux[3];
rz(-pi/2) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[5], aux[3];
rz(pi/2) aux[3];
cx up[5], aux[3];
cx down[1],up[5];

rz(pi/4) aux[4];
cx up[5], aux[4];
rz(-pi/4) aux[4];
cx up[5], aux[4];
cx down[1],up[5];

rz(-pi/4) aux[4];
cx up[5], aux[4];
rz(pi/4) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

h aux[0];

rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[5], aux[2];
rz(-pi/2) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[5], aux[2];
rz(pi/2) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[5], aux[3];
rz(-pi/4) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[5], aux[3];
rz(pi/4) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[5], aux[4];
rz(-pi/8) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(-pi/8) aux[4];
cx up[5], aux[4];
rz(pi/8) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[5];

rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[5], aux[2];
rz(pi/2) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[5], aux[2];
rz(-pi/2) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[5], aux[3];
rz(pi/4) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[5], aux[3];
rz(-pi/4) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[5], aux[4];
rz(pi/8) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(pi/8) aux[4];
cx up[5], aux[4];
rz(-pi/8) aux[4];
cx up[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[5];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[5], aux[0];
rz(-0.0) aux[0];
cx up[5], aux[0];
cx down[0],up[5];

h aux[0];

rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[5], aux[1];
rz(-0.0) aux[1];
cx up[5], aux[1];
cx down[0],up[5];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[5], aux[2];
rz(-pi/2) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[5], aux[2];
rz(pi/2) aux[2];
cx up[5], aux[2];
cx down[0],up[5];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[5], aux[3];
rz(-pi/4) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[5], aux[3];
rz(pi/4) aux[3];
cx up[5], aux[3];
cx down[0],up[5];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[5], aux[4];
rz(-pi/8) aux[4];
cx up[5], aux[4];
cx down[0],up[5];

rz(-pi/8) aux[4];
cx up[5], aux[4];
rz(pi/8) aux[4];
cx up[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[6];

swap up[2],up[5];

rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[6], aux[2];
rz(pi/2) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[6], aux[2];
rz(-pi/2) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[6], aux[3];
rz(pi/4) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[6], aux[3];
rz(-pi/4) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[6], aux[4];
rz(pi/8) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(pi/8) aux[4];
cx up[6], aux[4];
rz(-pi/8) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[6];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

h aux[0];

rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[6], aux[2];
rz(-pi/2) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[6], aux[2];
rz(pi/2) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[6], aux[3];
rz(-pi/4) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[6], aux[3];
rz(pi/4) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[6], aux[4];
rz(-pi/8) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(-pi/8) aux[4];
cx up[6], aux[4];
rz(pi/8) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[6];

rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[2];
cx up[6], aux[2];
rz(pi/2) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[6], aux[2];
rz(-pi/2) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[3];
cx up[6], aux[3];
rz(pi/4) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[6], aux[3];
rz(-pi/4) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-pi/8) aux[4];
cx up[6], aux[4];
rz(pi/8) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(pi/8) aux[4];
cx up[6], aux[4];
rz(-pi/8) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[6], aux[2];
rz(-0.0) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[6], aux[2];
rz(-0.0) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[6], aux[3];
rz(pi/2) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[6], aux[3];
rz(-pi/2) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[6], aux[4];
rz(pi/4) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(pi/4) aux[4];
cx up[6], aux[4];
rz(-pi/4) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[6];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

h aux[0];

rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[6], aux[2];
rz(-0.0) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[6], aux[2];
rz(-0.0) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[6], aux[3];
rz(-pi/2) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[6], aux[3];
rz(pi/2) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[6], aux[4];
rz(-pi/4) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(-pi/4) aux[4];
cx up[6], aux[4];
rz(pi/4) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[6];

rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[6], aux[1];
rz(-0.0) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(0.0) aux[2];
cx up[6], aux[2];
rz(-0.0) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[6], aux[2];
rz(-0.0) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-pi/2) aux[3];
cx up[6], aux[3];
rz(pi/2) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[6], aux[3];
rz(-pi/2) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-pi/4) aux[4];
cx up[6], aux[4];
rz(pi/4) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(pi/4) aux[4];
cx up[6], aux[4];
rz(-pi/4) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[6], aux[2];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[6], aux[3];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[6];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

h aux[0];

rz(3*pi/4) aux[1];
cx up[6], aux[1];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[6], aux[2];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[6], aux[3];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-7*pi/8) aux[2];
cx up[6], aux[2];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-7*pi/16) aux[3];
cx up[6], aux[3];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[6], aux[2];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[6], aux[3];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[6];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

h aux[0];

rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[6], aux[2];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[6], aux[3];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

h aux[0];

rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[6], aux[2];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[6], aux[3];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[6],down[0],aux[0];

cswap up[6],down[1],aux[1];

cswap up[6],down[2],aux[2];

cswap up[6],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[6];

rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

h aux[0];

rz(pi/2) aux[1];
cx up[6], aux[1];
rz(-pi/2) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[6], aux[1];
rz(pi/2) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[6], aux[2];
rz(-pi/4) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[6], aux[2];
rz(pi/4) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[6], aux[3];
rz(-pi/8) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[6], aux[3];
rz(pi/8) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(-pi/16) aux[4];
cx up[6], aux[4];
rz(pi/16) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[6];

rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/2) aux[1];
cx up[6], aux[1];
rz(pi/2) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[6], aux[1];
rz(-pi/2) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[6], aux[2];
rz(pi/4) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[6], aux[2];
rz(-pi/4) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[6], aux[3];
rz(pi/8) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[6], aux[3];
rz(-pi/8) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[6], aux[4];
rz(pi/16) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(pi/16) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[6];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
cx down[3],up[6];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[6], aux[0];
rz(-0.0) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[6];

rz(pi/2) aux[1];
cx up[6], aux[1];
rz(-pi/2) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[6], aux[1];
rz(pi/2) aux[1];
cx up[6], aux[1];
cx down[3],up[6];

rz(pi/4) aux[2];
cx up[6], aux[2];
rz(-pi/4) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[6], aux[2];
rz(pi/4) aux[2];
cx up[6], aux[2];
cx down[3],up[6];

rz(pi/8) aux[3];
cx up[6], aux[3];
rz(-pi/8) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[6], aux[3];
rz(pi/8) aux[3];
cx up[6], aux[3];
cx down[3],up[6];

rz(pi/16) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[4];
cx up[6], aux[4];
cx down[3],up[6];

rz(-pi/16) aux[4];
cx up[6], aux[4];
rz(pi/16) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

h aux[0];

rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[6], aux[2];
rz(-pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[6], aux[2];
rz(pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[6], aux[3];
rz(-pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[6], aux[3];
rz(pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[6], aux[4];
rz(-pi/32) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(-pi/32) aux[4];
cx up[6], aux[4];
rz(pi/32) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[6], aux[2];
rz(pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[6], aux[2];
rz(-pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[6], aux[3];
rz(pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[6], aux[3];
rz(-pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[6], aux[4];
rz(pi/32) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(pi/32) aux[4];
cx up[6], aux[4];
rz(-pi/32) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[6];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[2],up[6];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[2],up[6];

rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[2],up[6];

rz(pi/8) aux[2];
cx up[6], aux[2];
rz(-pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[6], aux[2];
rz(pi/8) aux[2];
cx up[6], aux[2];
cx down[2],up[6];

rz(pi/16) aux[3];
cx up[6], aux[3];
rz(-pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[6], aux[3];
rz(pi/16) aux[3];
cx up[6], aux[3];
cx down[2],up[6];

rz(pi/32) aux[4];
cx up[6], aux[4];
rz(-pi/32) aux[4];
cx up[6], aux[4];
cx down[2],up[6];

rz(-pi/32) aux[4];
cx up[6], aux[4];
rz(pi/32) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

h aux[0];

rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[6], aux[2];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[6], aux[3];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[6], aux[2];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[6], aux[3];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[6];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[1],up[6];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[1],up[6];

rz(pi/4) aux[1];
cx up[6], aux[1];
rz(-pi/4) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[6], aux[1];
rz(pi/4) aux[1];
cx up[6], aux[1];
cx down[1],up[6];

rz(5*pi/8) aux[2];
cx up[6], aux[2];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[6], aux[2];
rz(5*pi/8) aux[2];
cx up[6], aux[2];
cx down[1],up[6];

rz(5*pi/16) aux[3];
cx up[6], aux[3];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[6], aux[3];
rz(5*pi/16) aux[3];
cx up[6], aux[3];
cx down[1],up[6];

rz(0.490873852123405) aux[4];
cx up[6], aux[4];
rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[1],up[6];

rz(-0.490873852123405) aux[4];
cx up[6], aux[4];
rz(0.490873852123405) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

h aux[0];

rz(3*pi/4) aux[1];
cx up[6], aux[1];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[6], aux[2];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[6], aux[3];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[6];

rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[6], aux[1];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[6], aux[2];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[6], aux[3];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[6];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[6], aux[0];
rz(-pi/2) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[6], aux[0];
rz(pi/2) aux[0];
cx up[6], aux[0];
cx down[0],up[6];

h aux[0];

rz(3*pi/4) aux[1];
cx up[6], aux[1];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[6], aux[1];
rz(3*pi/4) aux[1];
cx up[6], aux[1];
cx down[0],up[6];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[6], aux[2];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[6], aux[2];
rz(7*pi/8) aux[2];
cx up[6], aux[2];
cx down[0],up[6];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[6], aux[3];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[6], aux[3];
rz(7*pi/16) aux[3];
cx up[6], aux[3];
cx down[0],up[6];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
cx down[0],up[6];

rz(-0.687223392972767) aux[4];
cx up[6], aux[4];
rz(0.687223392972767) aux[4];
cx up[6], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[7];

swap up[1],up[6];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[7], aux[2];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[7], aux[3];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
rz(pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[7];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

h aux[0];

rz(3*pi/4) aux[1];
cx up[7], aux[1];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[7], aux[2];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[7], aux[3];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[0], aux[0];
rz(-pi/2) aux[0];
cx down[0], aux[0];
cx down[0],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(3*pi/4) aux[1];
cx down[0], aux[1];
rz(-3*pi/4) aux[1];
cx down[0], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(7*pi/8) aux[2];
cx down[0], aux[2];
rz(-7*pi/8) aux[2];
cx down[0], aux[2];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-7*pi/8) aux[2];
cx up[7], aux[2];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(7*pi/16) aux[3];
cx down[0], aux[3];
rz(-7*pi/16) aux[3];
cx down[0], aux[3];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-7*pi/16) aux[3];
cx up[7], aux[3];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(0.687223392972767) aux[4];
cx down[0], aux[4];
rz(-0.687223392972767) aux[4];
cx down[0], aux[4];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[7], aux[2];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[7], aux[3];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
rz(pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[7];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

h aux[0];

rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[7], aux[2];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[7], aux[3];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[1], aux[0];
rz(-pi/2) aux[0];
cx down[1], aux[0];
cx down[1],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(pi/4) aux[1];
cx down[1], aux[1];
rz(-pi/4) aux[1];
cx down[1], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(5*pi/8) aux[2];
cx down[1], aux[2];
rz(-5*pi/8) aux[2];
cx down[1], aux[2];
rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(-5*pi/8) aux[2];
cx up[7], aux[2];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(5*pi/16) aux[3];
cx down[1], aux[3];
rz(-5*pi/16) aux[3];
cx down[1], aux[3];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-5*pi/16) aux[3];
cx up[7], aux[3];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(0.490873852123405) aux[4];
cx down[1], aux[4];
rz(-0.490873852123405) aux[4];
cx down[1], aux[4];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/8) aux[2];
cx up[7], aux[2];
rz(pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[7], aux[2];
rz(-pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/16) aux[3];
cx up[7], aux[3];
rz(pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[7], aux[3];
rz(-pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/32) aux[4];
cx up[7], aux[4];
rz(pi/32) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(pi/32) aux[4];
cx up[7], aux[4];
rz(-pi/32) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[7];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

h aux[0];

rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/8) aux[2];
cx up[7], aux[2];
rz(-pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/8) aux[2];
cx up[7], aux[2];
rz(pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/16) aux[3];
cx up[7], aux[3];
rz(-pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/16) aux[3];
cx up[7], aux[3];
rz(pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/32) aux[4];
cx up[7], aux[4];
rz(-pi/32) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(-pi/32) aux[4];
cx up[7], aux[4];
rz(pi/32) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(pi/8) aux[2];
cx down[2], aux[2];
rz(-pi/8) aux[2];
cx down[2], aux[2];
rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-pi/8) aux[2];
cx up[7], aux[2];
rz(pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(pi/16) aux[3];
cx down[2], aux[3];
rz(-pi/16) aux[3];
cx down[2], aux[3];
rz(pi/8) aux[2];
cx up[7], aux[2];
rz(-pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-pi/16) aux[3];
cx up[7], aux[3];
rz(pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(pi/32) aux[4];
cx down[2], aux[4];
rz(-pi/32) aux[4];
cx down[2], aux[4];
rz(pi/16) aux[3];
cx up[7], aux[3];
rz(-pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-pi/32) aux[4];
cx up[7], aux[4];
rz(pi/32) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(pi/32) aux[4];
cx up[7], aux[4];
rz(-pi/32) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(0) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(0) aux[0];
rz(-pi/2) aux[1];
cx up[7], aux[1];
rz(pi/2) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[7], aux[1];
rz(-pi/2) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-pi/2) aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[7], aux[2];
rz(pi/4) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[7], aux[2];
rz(-pi/4) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-pi/4) aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[7], aux[3];
rz(pi/8) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[7], aux[3];
rz(-pi/8) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-9*pi/8) aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[7], aux[4];
rz(pi/16) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(pi/16) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi) aux[0];
cx aux[5], aux[0];
rz(-pi) aux[0];
cx aux[5], aux[0];
rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[7];

rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

h aux[0];

rz(pi/2) aux[1];
cx up[7], aux[1];
rz(-pi/2) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/2) aux[1];
cx up[7], aux[1];
rz(pi/2) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/4) aux[2];
cx up[7], aux[2];
rz(-pi/4) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/4) aux[2];
cx up[7], aux[2];
rz(pi/4) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/8) aux[3];
cx up[7], aux[3];
rz(-pi/8) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/8) aux[3];
cx up[7], aux[3];
rz(pi/8) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/16) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(-pi/16) aux[4];
cx up[7], aux[4];
rz(pi/16) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[3], aux[0];
rz(-0.0) aux[0];
cx down[3], aux[0];
cx down[3],up[7];

rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(pi/2) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[1];
cx down[3], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

h aux[0];

rz(-pi/2) aux[1];
cx up[7], aux[1];
rz(pi/2) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(pi/4) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[2];
cx down[3], aux[2];
rz(pi/2) aux[1];
cx up[7], aux[1];
rz(-pi/2) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/4) aux[2];
cx up[7], aux[2];
rz(pi/4) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(pi/8) aux[3];
cx down[3], aux[3];
rz(-pi/8) aux[3];
cx down[3], aux[3];
rz(pi/4) aux[2];
cx up[7], aux[2];
rz(-pi/4) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/8) aux[3];
cx up[7], aux[3];
rz(pi/8) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(pi/16) aux[4];
cx down[3], aux[4];
rz(-pi/16) aux[4];
cx down[3], aux[4];
rz(pi/8) aux[3];
cx up[7], aux[3];
rz(-pi/8) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/16) aux[4];
cx up[7], aux[4];
rz(pi/16) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(pi/16) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
cswap up[7],down[0],aux[0];

cswap up[7],down[1],aux[1];

cswap up[7],down[2],aux[2];

cswap up[7],down[3],aux[3];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[7];

rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

h aux[0];

rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(5*pi/8) aux[2];
cx up[7], aux[2];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(5*pi/16) aux[3];
cx up[7], aux[3];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[3], aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-5*pi/8) aux[2];
cx up[7], aux[2];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-5*pi/16) aux[3];
cx up[7], aux[3];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[3], aux[0];
rz(pi/2) aux[0];
cx down[3], aux[0];
cx down[3],up[7];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[3],up[7];

rz(-pi/4) aux[1];
cx down[3], aux[1];
rz(pi/4) aux[1];
cx down[3], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[3],up[7];

rz(pi/4) aux[1];
cx up[7], aux[1];
rz(-pi/4) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(-5*pi/8) aux[2];
cx down[3], aux[2];
rz(5*pi/8) aux[2];
cx down[3], aux[2];
rz(-pi/4) aux[1];
cx up[7], aux[1];
rz(pi/4) aux[1];
cx up[7], aux[1];
cx down[3],up[7];

rz(5*pi/8) aux[2];
cx up[7], aux[2];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(-5*pi/16) aux[3];
cx down[3], aux[3];
rz(5*pi/16) aux[3];
cx down[3], aux[3];
rz(-5*pi/8) aux[2];
cx up[7], aux[2];
rz(5*pi/8) aux[2];
cx up[7], aux[2];
cx down[3],up[7];

rz(5*pi/16) aux[3];
cx up[7], aux[3];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(-0.490873852123405) aux[4];
cx down[3], aux[4];
rz(0.490873852123405) aux[4];
cx down[3], aux[4];
rz(-5*pi/16) aux[3];
cx up[7], aux[3];
rz(5*pi/16) aux[3];
cx up[7], aux[3];
cx down[3],up[7];

rz(0.490873852123405) aux[4];
cx up[7], aux[4];
rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[3],up[7];

rz(-0.490873852123405) aux[4];
cx up[7], aux[4];
rz(0.490873852123405) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

h aux[0];

rz(3*pi/4) aux[1];
cx up[7], aux[1];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(7*pi/8) aux[2];
cx up[7], aux[2];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(7*pi/16) aux[3];
cx up[7], aux[3];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(pi/2) aux[0];
cx down[2], aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[7];

rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(-3*pi/4) aux[1];
cx up[7], aux[1];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-7*pi/8) aux[2];
cx up[7], aux[2];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-7*pi/16) aux[3];
cx up[7], aux[3];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(-pi/2) aux[0];
cx down[2], aux[0];
rz(pi/2) aux[0];
cx down[2], aux[0];
cx down[2],up[7];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(-pi/2) aux[0];
cx up[7], aux[0];
cx down[2],up[7];

rz(-3*pi/4) aux[1];
cx down[2], aux[1];
rz(3*pi/4) aux[1];
cx down[2], aux[1];
rz(-pi/2) aux[0];
cx up[7], aux[0];
rz(pi/2) aux[0];
cx up[7], aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[2],up[7];

rz(3*pi/4) aux[1];
cx up[7], aux[1];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(-7*pi/8) aux[2];
cx down[2], aux[2];
rz(7*pi/8) aux[2];
cx down[2], aux[2];
rz(-3*pi/4) aux[1];
cx up[7], aux[1];
rz(3*pi/4) aux[1];
cx up[7], aux[1];
cx down[2],up[7];

rz(7*pi/8) aux[2];
cx up[7], aux[2];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(-7*pi/16) aux[3];
cx down[2], aux[3];
rz(7*pi/16) aux[3];
cx down[2], aux[3];
rz(-7*pi/8) aux[2];
cx up[7], aux[2];
rz(7*pi/8) aux[2];
cx up[7], aux[2];
cx down[2],up[7];

rz(7*pi/16) aux[3];
cx up[7], aux[3];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(-0.687223392972767) aux[4];
cx down[2], aux[4];
rz(0.687223392972767) aux[4];
cx down[2], aux[4];
rz(-7*pi/16) aux[3];
cx up[7], aux[3];
rz(7*pi/16) aux[3];
cx up[7], aux[3];
cx down[2],up[7];

rz(0.687223392972767) aux[4];
cx up[7], aux[4];
rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[2],up[7];

rz(-0.687223392972767) aux[4];
cx up[7], aux[4];
rz(0.687223392972767) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

h aux[0];

rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[7], aux[2];
rz(-0.0) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[7], aux[2];
rz(-0.0) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/2) aux[3];
cx up[7], aux[3];
rz(-pi/2) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[7], aux[3];
rz(pi/2) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/4) aux[4];
cx up[7], aux[4];
rz(-pi/4) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(-pi/4) aux[4];
cx up[7], aux[4];
rz(pi/4) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[7];

rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(0.0) aux[2];
cx up[7], aux[2];
rz(-0.0) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(pi/2) aux[3];
cx down[1], aux[3];
rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[7], aux[2];
rz(-0.0) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/2) aux[3];
cx up[7], aux[3];
rz(pi/2) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/2) aux[3];
cx up[7], aux[3];
rz(-pi/2) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/4) aux[4];
cx up[7], aux[4];
rz(pi/4) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(pi/4) aux[4];
cx up[7], aux[4];
rz(-pi/4) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[1], aux[0];
rz(-0.0) aux[0];
cx down[1], aux[0];
cx down[1],up[7];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[1],up[7];

rz(0.0) aux[1];
cx down[1], aux[1];
rz(-0.0) aux[1];
cx down[1], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[1],up[7];

rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(0.0) aux[2];
cx down[1], aux[2];
rz(-0.0) aux[2];
cx down[1], aux[2];
rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[1],up[7];

rz(0.0) aux[2];
cx up[7], aux[2];
rz(-0.0) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(-pi/2) aux[3];
cx down[1], aux[3];
rz(pi/2) aux[3];
cx down[1], aux[3];
rz(0.0) aux[2];
cx up[7], aux[2];
rz(-0.0) aux[2];
cx up[7], aux[2];
cx down[1],up[7];

rz(pi/2) aux[3];
cx up[7], aux[3];
rz(-pi/2) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(-pi/4) aux[4];
cx down[1], aux[4];
rz(pi/4) aux[4];
cx down[1], aux[4];
rz(-pi/2) aux[3];
cx up[7], aux[3];
rz(pi/2) aux[3];
cx up[7], aux[3];
cx down[1],up[7];

rz(pi/4) aux[4];
cx up[7], aux[4];
rz(-pi/4) aux[4];
cx up[7], aux[4];
cx down[1],up[7];

rz(-pi/4) aux[4];
cx up[7], aux[4];
rz(pi/4) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

h aux[0];

rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[7], aux[2];
rz(-pi/2) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[7], aux[2];
rz(pi/2) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[7], aux[3];
rz(-pi/4) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[7], aux[3];
rz(pi/4) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[7], aux[4];
rz(-pi/8) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(-pi/8) aux[4];
cx up[7], aux[4];
rz(pi/8) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(0) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(0) aux[4];
cx aux[4],aux[5];

rz(-pi) aux[4];
s aux[4];
h aux[4];
rz(-0.5*pi) aux[4];
h aux[4];
sdg aux[4];
rz(-pi) aux[4];
rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
h aux[0];

rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[7];

rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(-pi) aux[0];
cx aux[5], aux[0];
rz(pi) aux[0];
cx aux[5], aux[0];
h aux[0];

rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(pi/2) aux[2];
cx down[0], aux[2];
rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[1];
cx aux[5], aux[1];
rz(pi/2) aux[1];
cx aux[5], aux[1];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(-pi/2) aux[2];
cx up[7], aux[2];
rz(pi/2) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/2) aux[2];
cx up[7], aux[2];
rz(-pi/2) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[2];
cx aux[5], aux[2];
rz(pi/4) aux[2];
cx aux[5], aux[2];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(-pi/4) aux[3];
cx up[7], aux[3];
rz(pi/4) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/4) aux[3];
cx up[7], aux[3];
rz(-pi/4) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-9*pi/8) aux[3];
cx aux[5], aux[3];
rz(9*pi/8) aux[3];
cx aux[5], aux[3];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(-pi/8) aux[4];
cx up[7], aux[4];
rz(pi/8) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(pi/8) aux[4];
cx up[7], aux[4];
rz(-pi/8) aux[4];
cx up[7], aux[4];
rz(-9*pi/16) aux[4];
cx aux[5], aux[4];
rz(9*pi/16) aux[4];
cx aux[5], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

cx aux[4],aux[5];

h aux[4];

rz(pi/2) aux[3];
cx aux[4], aux[3];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
h aux[3];

rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
h aux[2];

rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
h aux[1];

rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(-pi) aux[0];
s aux[0];
h aux[0];
rz(-0.5*pi) aux[0];
h aux[0];
sdg aux[0];
rz(-pi) aux[0];
rz(0.0) aux[0];
cx down[0], aux[0];
rz(-0.0) aux[0];
cx down[0], aux[0];
cx down[0],up[7];

rz(pi/2) aux[1];
rz(pi/4) aux[2];
rz(9*pi/8) aux[3];
rz(9*pi/16) aux[4];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

rz(0.0) aux[1];
cx down[0], aux[1];
rz(-0.0) aux[1];
cx down[0], aux[1];
rz(0.0) aux[0];
cx up[7], aux[0];
rz(-0.0) aux[0];
cx up[7], aux[0];
cx down[0],up[7];

h aux[0];

rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[2];
cx down[0], aux[2];
rz(pi/2) aux[2];
cx down[0], aux[2];
rz(0.0) aux[1];
cx up[7], aux[1];
rz(-0.0) aux[1];
cx up[7], aux[1];
cx down[0],up[7];

rz(-pi/2) aux[0];
cx aux[1], aux[0];
rz(pi/2) aux[0];
cx aux[1], aux[0];
h aux[1];

rz(pi/2) aux[2];
cx up[7], aux[2];
rz(-pi/2) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[3];
cx down[0], aux[3];
rz(pi/4) aux[3];
cx down[0], aux[3];
rz(-pi/2) aux[2];
cx up[7], aux[2];
rz(pi/2) aux[2];
cx up[7], aux[2];
cx down[0],up[7];

rz(-pi/4) aux[0];
cx aux[2], aux[0];
rz(pi/4) aux[0];
cx aux[2], aux[0];
rz(-pi/2) aux[1];
cx aux[2], aux[1];
rz(pi/2) aux[1];
cx aux[2], aux[1];
h aux[2];

rz(pi/4) aux[3];
cx up[7], aux[3];
rz(-pi/4) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-pi/8) aux[4];
cx down[0], aux[4];
rz(pi/8) aux[4];
cx down[0], aux[4];
rz(-pi/4) aux[3];
cx up[7], aux[3];
rz(pi/4) aux[3];
cx up[7], aux[3];
cx down[0],up[7];

rz(-pi/8) aux[0];
cx aux[3], aux[0];
rz(pi/8) aux[0];
cx aux[3], aux[0];
rz(-pi/4) aux[1];
cx aux[3], aux[1];
rz(pi/4) aux[1];
cx aux[3], aux[1];
rz(-pi/2) aux[2];
cx aux[3], aux[2];
rz(pi/2) aux[2];
cx aux[3], aux[2];
h aux[3];

rz(pi/8) aux[4];
cx up[7], aux[4];
rz(-pi/8) aux[4];
cx up[7], aux[4];
cx down[0],up[7];

rz(-pi/8) aux[4];
cx up[7], aux[4];
rz(pi/8) aux[4];
cx up[7], aux[4];
rz(-pi/16) aux[0];
cx aux[4], aux[0];
rz(pi/16) aux[0];
cx aux[4], aux[0];
rz(-pi/8) aux[1];
cx aux[4], aux[1];
rz(pi/8) aux[1];
cx aux[4], aux[1];
rz(-pi/4) aux[2];
cx aux[4], aux[2];
rz(pi/4) aux[2];
cx aux[4], aux[2];
rz(-pi/2) aux[3];
cx aux[4], aux[3];
rz(pi/2) aux[3];
cx aux[4], aux[3];
h aux[4];

swap up[0],up[7];

h up[0];

rz(-pi/2) up[0];
cx up[1], up[0];
rz(pi/2) up[0];
cx up[1], up[0];
h up[1];

rz(-pi/4) up[0];
cx up[2], up[0];
rz(pi/4) up[0];
cx up[2], up[0];
rz(-pi/2) up[1];
cx up[2], up[1];
rz(pi/2) up[1];
cx up[2], up[1];
h up[2];

rz(-pi/8) up[0];
cx up[3], up[0];
rz(pi/8) up[0];
cx up[3], up[0];
rz(-pi/4) up[1];
cx up[3], up[1];
rz(pi/4) up[1];
cx up[3], up[1];
rz(-pi/2) up[2];
cx up[3], up[2];
rz(pi/2) up[2];
cx up[3], up[2];
h up[3];

rz(-pi/16) up[0];
cx up[4], up[0];
rz(pi/16) up[0];
cx up[4], up[0];
rz(-pi/8) up[1];
cx up[4], up[1];
rz(pi/8) up[1];
cx up[4], up[1];
rz(-pi/4) up[2];
cx up[4], up[2];
rz(pi/4) up[2];
cx up[4], up[2];
rz(-pi/2) up[3];
cx up[4], up[3];
rz(pi/2) up[3];
cx up[4], up[3];
h up[4];

rz(-pi/32) up[0];
cx up[5], up[0];
rz(pi/32) up[0];
cx up[5], up[0];
rz(-pi/16) up[1];
cx up[5], up[1];
rz(pi/16) up[1];
cx up[5], up[1];
rz(-pi/8) up[2];
cx up[5], up[2];
rz(pi/8) up[2];
cx up[5], up[2];
rz(-pi/4) up[3];
cx up[5], up[3];
rz(pi/4) up[3];
cx up[5], up[3];
rz(-pi/2) up[4];
cx up[5], up[4];
rz(pi/2) up[4];
cx up[5], up[4];
h up[5];

rz(-pi/64) up[0];
cx up[6], up[0];
rz(pi/64) up[0];
cx up[6], up[0];
rz(-pi/32) up[1];
cx up[6], up[1];
rz(pi/32) up[1];
cx up[6], up[1];
rz(-pi/16) up[2];
cx up[6], up[2];
rz(pi/16) up[2];
cx up[6], up[2];
rz(-pi/8) up[3];
cx up[6], up[3];
rz(pi/8) up[3];
cx up[6], up[3];
rz(-pi/4) up[4];
cx up[6], up[4];
rz(pi/4) up[4];
cx up[6], up[4];
rz(-pi/2) up[5];
cx up[6], up[5];
rz(pi/2) up[5];
cx up[6], up[5];
h up[6];

rz(-pi/128) up[0];
cx up[7], up[0];
rz(pi/128) up[0];
cx up[7], up[0];
rz(-pi/64) up[1];
cx up[7], up[1];
rz(pi/64) up[1];
cx up[7], up[1];
rz(-pi/32) up[2];
cx up[7], up[2];
rz(pi/32) up[2];
cx up[7], up[2];
rz(-pi/16) up[3];
cx up[7], up[3];
rz(pi/16) up[3];
cx up[7], up[3];
rz(-pi/8) up[4];
cx up[7], up[4];
rz(pi/8) up[4];
cx up[7], up[4];
rz(-pi/4) up[5];
cx up[7], up[5];
rz(pi/4) up[5];
cx up[7], up[5];
rz(-pi/2) up[6];
cx up[7], up[6];
rz(pi/2) up[6];
cx up[7], up[6];
h up[7];

