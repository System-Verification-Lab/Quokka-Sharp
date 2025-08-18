OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
csqrtx q[1] q[2] ;
csqrtx q[0] q[2] ;
