OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
h q[1] ;
csqrtxdg q[0] q[2] ;
csqrtx q[0] q[1] ;
h q[1] ;
cx q[0] q[2] ;
