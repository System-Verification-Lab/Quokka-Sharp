OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
s q[0];
h q[0];
rz(1.881963032016619*pi) q[0];
s q[1];
s q[2];
s q[3];
h q[3];
rz(1.3596595632544297*pi) q[3];
s q[4];
h q[4];
rz(1.9872854839254366*pi) q[4];
s q[5];
s q[6];
h q[6];
rz(0.7597174285049879*pi) q[6];
s q[7];
h q[7];
s q[7];
s q[8];
s q[9];
h q[9];
rz(1.7425537143146184*pi) q[9];
s q[10];
h q[10];
cz q[9], q[10];
rz(0.25123735417425813*pi) q[10];
s q[11];
h q[11];
cz q[10], q[11];
rz(1.1692280424831367*pi) q[11];
cz q[9], q[11];
s q[12];
h q[12];
cz q[7], q[12];
cx q[12], q[5];
cx q[12], q[1];
cx q[12], q[8];
cz q[9], q[12];
cz q[11], q[12];
cz q[10], q[12];
cz q[3], q[12];
cz q[0], q[12];
rz(1.4887502953080392*pi) q[12];
cz q[6], q[12];
cx q[10], q[12];
cx q[6], q[12];
cx q[11], q[12];
cx q[9], q[12];
h q[1];
s q[1];
cx q[0], q[1];
sdg q[1];
cx q[1], q[2];
cz q[1], q[3];
h q[5];
s q[5];
cx q[3], q[5];
sdg q[5];
cx q[5], q[2];
cz q[5], q[6];
cz q[1], q[6];
cx q[6], q[7];
sdg q[7];
h q[8];
cz q[7], q[8];
cz q[5], q[8];
cz q[1], q[8];
rz(0.9464273255573606*pi) q[8];
cz q[8], q[9];
cz q[7], q[9];
cz q[5], q[9];
cz q[1], q[9];
cx q[4], q[9];
cz q[8], q[10];
cz q[7], q[10];
cz q[5], q[10];
cz q[1], q[10];
cx q[4], q[10];
cz q[8], q[11];
cz q[7], q[11];
cz q[5], q[11];
cz q[1], q[11];
cx q[4], q[11];
cx q[8], q[12];
cx q[6], q[7];
cz q[5], q[7];
cz q[1], q[7];
rz(0.11188401539892374*pi) q[7];
cx q[4], q[8];
cx q[7], q[12];
cx q[12], q[2];
cx q[5], q[12];
cx q[1], q[12];
cx q[4], q[12];
h q[2];
rz(1.5148190793829217*pi) q[2];
cx q[3], q[5];
cz q[1], q[5];
rz(0.6510325844699782*pi) q[5];
cx q[4], q[5];
cx q[4], q[6];
cx q[4], q[7];
cx q[2], q[12];
h q[12];
cx q[0], q[1];
rz(1.1011417564199575*pi) q[1];
cx q[4], q[3];
cx q[4], q[1];
cx q[4], q[0];
cx q[2], q[4];
h q[4];
rz(1.5980522249793725*pi) q[4];
cz q[4], q[12];
h q[12];
cx q[0], q[2];
cx q[1], q[2];
cx q[3], q[2];
h q[3];
rz(0.28602036344418574*pi) q[3];
h q[4];
cx q[5], q[2];
h q[5];
rz(1.513760052347626*pi) q[5];
cx q[6], q[2];
h q[6];
rz(0.754282722971378*pi) q[6];
cx q[7], q[2];
h q[7];
rz(0.0224196441422234*pi) q[7];
cx q[8], q[2];
h q[8];
rz(1.9679015951165537*pi) q[8];
cx q[9], q[2];
h q[9];
rz(0.6717605340456513*pi) q[9];
cx q[10], q[2];
h q[10];
rz(1.0985336433013364*pi) q[10];
cx q[11], q[2];
h q[11];
rz(0.5926988138422298*pi) q[11];
cz q[4], q[12];
cx q[3], q[12];
cx q[10], q[12];
cx q[8], q[12];
cx q[6], q[12];
cx q[11], q[12];
cx q[9], q[12];
cx q[7], q[12];
cx q[5], q[12];
h q[0];
rz(0.04021816417888625*pi) q[0];
h q[1];
rz(1.1775462037938291*pi) q[1];
h q[2];
rz(0.7262756217076322*pi) q[2];
cx q[2], q[3];
cz q[2], q[4];
cx q[2], q[5];
cx q[2], q[6];
cx q[2], q[7];
cx q[2], q[8];
cx q[2], q[9];
cx q[2], q[10];
cx q[2], q[11];
cx q[0], q[12];
cx q[1], q[12];
cz q[4], q[12];
cx q[2], q[12];
cz q[4], q[12];
rz(0.07937039119439011*pi) q[12];
cx q[2], q[0];
cx q[2], q[1];
cx q[12], q[2];
cx q[3], q[12];
cx q[10], q[12];
cx q[8], q[12];
cx q[6], q[12];
cx q[11], q[12];
cx q[9], q[12];
cx q[7], q[12];
cx q[5], q[12];
cx q[4], q[12];
h q[2];
rz(1.1068287912131223*pi) q[2];
h q[2];
cx q[2], q[3];
h q[3];
rz(0.1521359717429503*pi) q[3];
h q[3];
h q[5];
cz q[3], q[5];
cz q[2], q[5];
rz(1.7701115160024496*pi) q[5];
cx q[2], q[6];
h q[6];
rz(1.6966924160998706*pi) q[6];
h q[6];
h q[7];
cz q[6], q[7];
cz q[2], q[7];
rz(0.1313506095526339*pi) q[7];
cx q[2], q[8];
h q[8];
rz(1.2506011176156084*pi) q[8];
h q[8];
h q[9];
cz q[8], q[9];
cz q[2], q[9];
rz(1.6069298659313502*pi) q[9];
h q[10];
cz q[2], q[10];
rz(1.8613001024047657*pi) q[10];
h q[10];
h q[11];
cz q[10], q[11];
cz q[2], q[11];
rz(1.0767090082839141*pi) q[11];
cx q[0], q[12];
cx q[1], q[12];
h q[12];
rz(0.40844206466529903*pi) q[12];
cx q[12], q[11];
cx q[12], q[9];
cx q[12], q[7];
cx q[12], q[5];
h q[0];
rz(1.5069751644268958*pi) q[0];
h q[1];
rz(0.996977842112578*pi) q[1];
cz q[0], q[2];
cz q[1], q[2];
cx q[4], q[2];
h q[4];
rz(0.46018292256843957*pi) q[4];
s q[9];
cx q[1], q[0];
cz q[2], q[4];
cx q[12], q[1];
cz q[2], q[12];
cx q[4], q[12];
cx q[0], q[4];
h q[4];
cx q[4], q[3];
rz(0.6739537556590313*pi) q[4];
cx q[4], q[6];
rz(1.1189610901524596*pi) q[6];
cz q[6], q[7];
cx q[4], q[8];
rz(1.1849896188383713*pi) q[8];
cx q[8], q[9];
sdg q[9];
cx q[4], q[10];
rz(0.8000703048626846*pi) q[10];
cz q[10], q[11];
cx q[10], q[11];
cx q[10], q[12];
cx q[1], q[0];
s q[3];
h q[4];
cx q[4], q[2];
cz q[3], q[4];
cx q[4], q[1];
cx q[4], q[0];
cz q[3], q[5];
cx q[4], q[5];
h q[5];
s q[5];
cz q[4], q[6];
cx q[4], q[7];
h q[7];
s q[7];
cx q[6], q[7];
sdg q[7];
cz q[4], q[8];
cz q[7], q[8];
cx q[4], q[9];
cz q[8], q[9];
cz q[4], q[10];
cx q[10], q[9];
cz q[7], q[10];
cx q[4], q[11];
cx q[4], q[12];
h q[12];
rz(0.8670843609412421*pi) q[12];
cx q[12], q[11];
cx q[12], q[9];
cz q[7], q[12];
h q[0];
rz(0.7747340109437287*pi) q[0];
h q[1];
s q[1];
cx q[0], q[1];
sdg q[1];
cz q[1], q[2];
h q[4];
cx q[4], q[3];
rz(0.3383060917834148*pi) q[4];
cz q[1], q[4];
cx q[2], q[5];
sdg q[5];
cz q[5], q[6];
cz q[1], q[6];
cz q[5], q[8];
cz q[1], q[8];
cz q[5], q[10];
cz q[1], q[10];
h q[11];
rz(0.8825550988663631*pi) q[11];
cx q[11], q[9];
cz q[7], q[11];
cz q[5], q[11];
cz q[1], q[11];
cz q[5], q[12];
cz q[1], q[12];
cz q[2], q[3];
sdg q[3];
cz q[3], q[6];
cz q[3], q[8];
cz q[8], q[9];
cx q[7], q[9];
cx q[5], q[9];
cx q[1], q[9];
h q[9];
rz(1.1707069831471004*pi) q[9];
cz q[3], q[9];
h q[9];
sdg q[9];
cz q[3], q[10];
h q[10];
sdg q[10];
cz q[3], q[11];
h q[11];
sdg q[11];
cz q[3], q[12];
h q[12];
sdg q[12];
cx q[6], q[7];
cz q[5], q[7];
cz q[1], q[7];
rz(1.0280787743474253*pi) q[7];
cz q[3], q[7];
h q[7];
sdg q[7];
h q[8];
sdg q[8];
cx q[2], q[5];
cz q[3], q[5];
cz q[1], q[5];
rz(0.5804943396597505*pi) q[5];
h q[5];
sdg q[5];
h q[6];
sdg q[6];
cx q[4], q[3];
h q[4];
sdg q[4];
cz q[1], q[3];
rz(0.7572530672972496*pi) q[3];
h q[3];
sdg q[3];
cx q[0], q[1];
rz(0.17422509112357532*pi) q[1];
h q[1];
sdg q[1];
h q[0];
sdg q[0];
cx q[2], q[4];
cx q[4], q[2];
cx q[2], q[4];