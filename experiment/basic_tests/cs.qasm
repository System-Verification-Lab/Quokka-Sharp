OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[1] q[0];
tdg q[0] ;
cx q[1] q[0];
t q[0] ;
t q[1] ;
