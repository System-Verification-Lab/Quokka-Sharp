OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
h q[28];
cz q[26], q[28];
cz q[27], q[28];
z q[28];
t q[28];
cx q[28], q[29];
sdg q[29];
h q[29];
sdg q[29];
cx q[28], q[30];
cx q[30], q[29];
t q[30];
cx q[28], q[31];
cz q[26], q[31];
cz q[27], q[31];
t q[31];
h q[26];
rz(1.5625*pi) q[26];
cx q[28], q[27];
sdg q[29];
cx q[26], q[29];
rz(1.875*pi) q[29];
cz q[29], q[31];
cx q[31], q[27];
h q[27];
rz(1.625*pi) q[27];
cx q[31], q[26];
s q[26];
cx q[28], q[26];
cx q[26], q[29];
rz(0.4999999950988388*pi) q[29];
cx q[28], q[26];
cx q[30], q[26];
cx q[28], q[30];
sdg q[30];
rz(0.0625*pi) q[26];
cx q[31], q[28];
h q[31];
cz q[27], q[31];
rz(1.0000000049011613*pi) q[31];
cx q[30], q[31];
cx q[26], q[31];
t q[31];
cz q[25], q[28];
cz q[24], q[28];
s q[28];
cx q[26], q[30];
rz(0.5625*pi) q[30];
cx q[30], q[31];
cx q[26], q[25];
cx q[27], q[26];
cx q[27], q[25];
cx q[28], q[26];
cx q[29], q[25];
cx q[27], q[29];
s q[29];
cx q[28], q[29];
z q[29];
t q[29];
cx q[30], q[26];
cx q[28], q[30];
h q[25];
rz(0.28125*pi) q[25];
cx q[26], q[25];
rz(0.125*pi) q[26];
cx q[28], q[27];
cx q[28], q[25];
cx q[26], q[30];
cx q[27], q[25];
cx q[27], q[26];
rz(0.125*pi) q[27];
cx q[27], q[29];
cx q[25], q[24];
rz(0.03125*pi) q[25];
cz q[20], q[26];
cx q[26], q[25];
cz q[19], q[26];
cx q[30], q[27];
cx q[19], q[20];
h q[24];
rz(0.640625*pi) q[24];
cx q[25], q[20];
rz(0.28125*pi) q[25];
h q[27];
rz(1.5000000149011612*pi) q[27];
cx q[25], q[29];
rz(1.4375*pi) q[29];
cx q[24], q[30];
h q[30];
cz q[27], q[30];
z q[30];
tdg q[30];
cx q[25], q[30];
cx q[25], q[24];
cx q[28], q[24];
cx q[31], q[25];
cx q[25], q[24];
cx q[25], q[20];
rz(0.125*pi) q[25];
cx q[29], q[25];
cx q[22], q[29];
cx q[28], q[29];
rz(0.0625*pi) q[24];
cx q[25], q[22];
cx q[25], q[24];
cx q[25], q[19];
cx q[31], q[25];
rz(1.96875*pi) q[24];
cz q[23], q[25];
cx q[24], q[27];
cx q[25], q[27];
cx q[27], q[20];
t q[27];
cx q[25], q[24];
cx q[26], q[23];
h q[23];
rz(1.984375*pi) q[23];
cx q[24], q[23];
cx q[24], q[20];
rz(0.640625*pi) q[24];
cx q[25], q[23];
cx q[24], q[26];
cx q[26], q[19];
cx q[26], q[20];
rz(0.015625*pi) q[26];
cx q[26], q[27];
cx q[24], q[30];
cx q[30], q[23];
cx q[30], q[29];
rz(1.375*pi) q[30];
h q[20];
rz(1.0009765625*pi) q[20];
cx q[20], q[22];
h q[22];
rz(1.125*pi) q[22];
rz(1.4375*pi) q[23];
cx q[26], q[24];
cx q[20], q[29];
cx q[30], q[26];
cx q[19], q[30];
cx q[20], q[19];
cx q[23], q[19];
cx q[20], q[23];
sdg q[23];
cz q[21], q[24];
cx q[26], q[23];
cx q[24], q[26];
cx q[26], q[22];
cz q[16], q[26];
cz q[12], q[26];
rz(0.9999999950988389*pi) q[26];
h q[21];
rz(1.501953125*pi) q[21];
cz q[21], q[25];
cx q[27], q[20];
cx q[20], q[19];
rz(1.015625*pi) q[20];
cx q[20], q[29];
h q[19];
rz(0.4375*pi) q[19];
cx q[21], q[19];
cx q[23], q[20];
cx q[24], q[23];
cx q[31], q[23];
sdg q[19];
rz(0.125*pi) q[20];
cx q[24], q[19];
cx q[20], q[29];
h q[29];
cx q[29], q[22];
rz(1.5000000298023224*pi) q[29];
cx q[31], q[19];
rz(1.96875*pi) q[22];
cx q[26], q[22];
cx q[27], q[20];
cx q[21], q[27];
rz(1.03125*pi) q[27];
cx q[28], q[22];
cx q[27], q[30];
h q[30];
rz(1.96875*pi) q[30];
rz(0.0078125*pi) q[20];
rz(0.41015625*pi) q[22];
cx q[20], q[23];
cx q[23], q[19];
rz(0.00390625*pi) q[23];
cx q[24], q[21];
cx q[22], q[25];
cx q[26], q[23];
cx q[29], q[21];
cx q[24], q[29];
cx q[20], q[29];
z q[29];
t q[29];
cx q[29], q[27];
cx q[31], q[23];
rz(1.875*pi) q[19];
cx q[21], q[19];
rz(1.0625*pi) q[21];
cx q[22], q[19];
rz(1.9921875*pi) q[23];
cx q[20], q[24];
rz(0.8203125*pi) q[24];
cx q[24], q[19];
cx q[24], q[25];
cx q[26], q[23];
cx q[21], q[27];
cx q[24], q[27];
cz q[18], q[27];
cx q[28], q[19];
cx q[29], q[19];
cx q[24], q[30];
cx q[24], q[31];
cz q[29], q[31];
rz(1.53125*pi) q[31];
tdg q[19];
cx q[22], q[20];
cx q[24], q[21];
cx q[26], q[21];
cx q[26], q[18];
cx q[29], q[21];
cx q[24], q[29];
cz q[13], q[29];
cx q[19], q[30];
cx q[31], q[22];
cx q[24], q[31];
rz(1.984375*pi) q[21];
cx q[26], q[21];
cx q[26], q[13];
cx q[28], q[24];
cx q[28], q[21];
rz(0.205078125*pi) q[21];
rz(1.8203125*pi) q[24];
cx q[24], q[20];
cx q[24], q[25];
cx q[25], q[23];
rz(0.4921875*pi) q[25];
cx q[28], q[21];
cx q[24], q[30];
cx q[31], q[21];
cx q[20], q[19];
rz(0.00390625*pi) q[20];
rz(0.0078125*pi) q[21];
cx q[22], q[24];
rz(1.015625*pi) q[24];
cz q[20], q[24];
cx q[31], q[24];
cx q[31], q[21];
rz(1.205078125*pi) q[21];
h q[22];
rz(1.1920928955078125e-07*pi) q[22];
cx q[21], q[22];
t q[22];
cx q[24], q[20];
cx q[24], q[23];
rz(0.41015625*pi) q[24];
cx q[24], q[25];
cx q[24], q[30];
rz(0.55126953125*pi) q[30];
cx q[28], q[30];
cx q[22], q[30];
cx q[21], q[30];
rz(0.0625*pi) q[30];
cx q[29], q[30];
cz q[7], q[20];
cz q[10], q[20];
rz(1.5000000049011613*pi) q[20];
cx q[21], q[22];
cz q[14], q[22];
cz q[6], q[22];
rz(0.998046875*pi) q[23];
cx q[21], q[23];
cx q[27], q[24];
cx q[28], q[23];
cx q[29], q[28];
cx q[22], q[30];
rz(0.015625*pi) q[30];
cx q[29], q[30];
cx q[27], q[30];
rz(0.0078125*pi) q[30];
cx q[26], q[30];
cx q[27], q[30];
rz(1.99609375*pi) q[30];
cx q[26], q[30];
cx q[20], q[31];
cx q[6], q[14];
cx q[19], q[7];
cx q[20], q[19];
rz(0.0625*pi) q[24];
cx q[21], q[24];
cx q[26], q[14];
cx q[29], q[24];
h q[24];
t q[24];
cx q[25], q[21];
rz(0.49609375*pi) q[21];
cx q[23], q[21];
cx q[26], q[23];
cx q[31], q[23];
cx q[20], q[31];
cx q[31], q[30];
cx q[31], q[14];
rz(0.1025390625*pi) q[21];
h q[23];
z q[23];
tdg q[23];
cx q[25], q[23];
cx q[28], q[21];
cx q[29], q[28];
rz(1.001953125*pi) q[30];
cx q[25], q[30];
cx q[31], q[30];
rz(0.03125*pi) q[21];
cx q[28], q[18];
cx q[28], q[14];
cx q[28], q[13];
cz q[8], q[28];
cz q[0], q[28];
cz q[4], q[28];
s q[28];
cx q[29], q[21];
cz q[24], q[30];
rz(1.9990234375*pi) q[30];
cx q[25], q[30];
cx q[20], q[30];
rz(0.00048828125*pi) q[30];
h q[0];
rz(1.1428051972761748*pi) q[0];
cx q[21], q[18];
rz(1.1025390625*pi) q[21];
cx q[20], q[24];
sdg q[24];
cx q[21], q[24];
cx q[30], q[24];
cx q[20], q[30];
cx q[30], q[23];
rz(0.05126953125*pi) q[30];
cx q[22], q[21];
cx q[24], q[18];
rz(0.875*pi) q[24];
cx q[30], q[24];
h q[18];
rz(0.00390625*pi) q[18];
rz(0.125*pi) q[21];
cz q[17], q[24];
cx q[26], q[21];
cx q[30], q[21];
cx q[22], q[30];
cx q[25], q[30];
cx q[20], q[30];
h q[17];
rz(0.96875*pi) q[17];
cz q[17], q[18];
h q[21];
z q[21];
t q[21];
cx q[22], q[18];
cx q[27], q[18];
cz q[17], q[27];
cz q[17], q[30];
h q[30];
cz q[21], q[30];
cx q[30], q[7];
tdg q[30];
rz(1.03125*pi) q[18];
cx q[19], q[18];
cx q[22], q[18];
cx q[22], q[17];
cx q[24], q[17];
cx q[28], q[24];
rz(0.015625*pi) q[17];
rz(1.984375*pi) q[18];
cx q[19], q[18];
cx q[19], q[17];
cx q[22], q[17];
cx q[29], q[18];
rz(1.9921875*pi) q[17];
rz(0.0078125*pi) q[18];
cx q[19], q[17];
cx q[29], q[18];
cx q[29], q[17];
cx q[31], q[18];
rz(0.00390625*pi) q[17];
rz(0.0009765625*pi) q[18];
cx q[26], q[18];
cx q[27], q[17];
cx q[29], q[17];
cx q[22], q[29];
cx q[31], q[18];
cx q[27], q[31];
rz(0.001953125*pi) q[17];
rz(1.998046875*pi) q[18];
cx q[25], q[18];
cx q[26], q[18];
cx q[31], q[17];
cx q[27], q[31];
rz(0.00048828125*pi) q[17];
rz(1.99951171875*pi) q[18];
cx q[18], q[23];
rz(0.875*pi) q[23];
cx q[26], q[17];
cx q[28], q[23];
cx q[31], q[17];
rz(1.9990234375*pi) q[17];
cx q[20], q[18];
cx q[20], q[17];
cx q[25], q[18];
cx q[26], q[17];
rz(0.0001220703125*pi) q[17];
rz(0.000244140625*pi) q[18];
cx q[20], q[18];
cx q[20], q[17];
cx q[28], q[18];
cx q[28], q[17];
rz(1.7628173828125*pi) q[17];
rz(0.025634765625*pi) q[18];
cx q[17], q[23];
cx q[18], q[24];
rz(1.9375*pi) q[24];
cx q[28], q[18];
cx q[28], q[17];
cx q[17], q[7];
cx q[17], q[13];
cx q[17], q[14];
rz(1.7628173828125*pi) q[17];
cx q[18], q[14];
rz(1.525634765625*pi) q[18];
cx q[18], q[21];
cx q[21], q[12];
cz q[9], q[21];
cz q[2], q[21];
rz(1.0000009536743164*pi) q[21];
cx q[18], q[23];
rz(0.9375*pi) q[23];
cx q[18], q[24];
cz q[15], q[24];
rz(1.999999761581421*pi) q[24];
cx q[17], q[25];
cz q[23], q[25];
rz(1.999755859375*pi) q[25];
cz q[23], q[30];
cz q[25], q[30];
cx q[20], q[15];
cx q[17], q[23];
cx q[23], q[16];
cx q[21], q[23];
cx q[17], q[25];
cx q[26], q[18];
cx q[29], q[15];
cx q[30], q[18];
cx q[17], q[30];
h q[15];
rz(1.9921875*pi) q[15];
h q[16];
rz(0.99951171875*pi) q[16];
cx q[21], q[17];
cx q[22], q[15];
cx q[22], q[16];
cx q[24], q[15];
cx q[26], q[16];
cx q[28], q[24];
rz(0.00390625*pi) q[15];
rz(0.0078125*pi) q[16];
cx q[17], q[14];
cx q[17], q[13];
rz(1.625*pi) q[17];
cx q[6], q[17];
cx q[20], q[17];
cx q[28], q[17];
cx q[29], q[15];
cx q[22], q[29];
cx q[29], q[12];
z q[29];
cx q[30], q[17];
h q[12];
rz(0.999969482421875*pi) q[12];
cx q[12], q[13];
rz(0.0009765625*pi) q[15];
cx q[19], q[6];
cx q[19], q[22];
cx q[22], q[16];
cx q[29], q[15];
cx q[30], q[15];
cx q[30], q[6];
rz(1.9375*pi) q[15];
rz(1.99609375*pi) q[16];
cx q[19], q[16];
cx q[26], q[12];
cx q[27], q[15];
cx q[29], q[16];
cx q[30], q[15];
cx q[31], q[12];
rz(1.0000152587890625*pi) q[12];
rz(1.00048828125*pi) q[15];
rz(0.001953125*pi) q[16];
cx q[25], q[12];
cx q[26], q[15];
cx q[27], q[15];
cx q[27], q[16];
cx q[29], q[16];
cx q[15], q[14];
rz(1.999755859375*pi) q[15];
rz(0.0009765625*pi) q[16];
cx q[21], q[15];
cx q[26], q[15];
h q[14];
rz(1.001953125*pi) q[14];
cx q[15], q[13];
rz(1.03125*pi) q[15];
cx q[21], q[15];
cx q[22], q[14];
cx q[31], q[15];
h q[13];
rz(1.000244140625*pi) q[13];
rz(1.9990234375*pi) q[14];
rz(0.0001220703125*pi) q[15];
cx q[19], q[14];
cx q[21], q[14];
cx q[25], q[15];
cx q[29], q[13];
rz(0.015625*pi) q[14];
cx q[21], q[14];
cx q[31], q[14];
cx q[27], q[31];
cx q[31], q[16];
cx q[27], q[31];
cx q[20], q[31];
rz(1.50006103515625*pi) q[14];
rz(0.000244140625*pi) q[16];
cx q[31], q[16];
cx q[20], q[31];
cx q[31], q[12];
cx q[31], q[13];
cx q[31], q[15];
rz(1.9999923706054688*pi) q[12];
rz(3.0517578125e-05*pi) q[13];
rz(1.99993896484375*pi) q[15];
rz(6.103515625e-05*pi) q[16];
cx q[16], q[17];
cx q[25], q[12];
cx q[25], q[13];
cx q[29], q[12];
cx q[31], q[13];
cx q[27], q[31];
cx q[31], q[14];
cx q[27], q[31];
rz(0.0001220703125*pi) q[12];
rz(1.9999847412109375*pi) q[13];
rz(0.000244140625*pi) q[14];
cx q[20], q[12];
cx q[20], q[13];
cx q[20], q[16];
cx q[25], q[13];
cx q[25], q[16];
cx q[26], q[14];
cx q[27], q[14];
cx q[29], q[12];
cx q[30], q[25];
rz(3.814697265625e-06*pi) q[12];
rz(7.62939453125e-06*pi) q[13];
rz(1.9998779296875*pi) q[14];
rz(1.9998779296875*pi) q[16];
cx q[20], q[13];
cx q[20], q[12];
cx q[26], q[14];
cx q[26], q[13];
cx q[30], q[14];
cx q[30], q[12];
cx q[21], q[30];
rz(1.9921875*pi) q[12];
rz(1.99993896484375*pi) q[13];
rz(1.96875*pi) q[14];
cx q[13], q[18];
h q[18];
rz(1.0625*pi) q[18];
cx q[15], q[18];
cx q[25], q[14];
cx q[23], q[25];
cx q[30], q[25];
cx q[30], q[12];
cx q[21], q[30];
cz q[11], q[30];
sdg q[30];
rz(0.00390625*pi) q[12];
rz(1.999969482421875*pi) q[14];
cx q[12], q[17];
h q[17];
rz(0.125*pi) q[17];
cx q[21], q[13];
cx q[25], q[14];
cx q[25], q[18];
cx q[25], q[16];
cx q[25], q[15];
cx q[26], q[13];
rz(0.0078125*pi) q[13];
rz(1.9921875*pi) q[14];
rz(1.984375*pi) q[15];
rz(0.46875*pi) q[16];
cx q[15], q[17];
cx q[14], q[17];
t q[17];
cx q[14], q[18];
rz(0.125*pi) q[18];
cx q[15], q[18];
cx q[19], q[16];
cx q[19], q[13];
cx q[21], q[13];
cx q[23], q[12];
cx q[21], q[23];
cx q[23], q[16];
cx q[23], q[25];
rz(1.998046875*pi) q[12];
rz(1.99951171875*pi) q[13];
cx q[12], q[18];
rz(0.015625*pi) q[18];
cx q[19], q[13];
cx q[19], q[18];
cx q[20], q[14];
cx q[23], q[14];
cx q[23], q[15];
cx q[30], q[18];
cx q[30], q[13];
rz(1.984375*pi) q[13];
rz(1.52587890625e-05*pi) q[14];
cx q[15], q[17];
cx q[17], q[7];
rz(7.62939453125e-06*pi) q[17];
cx q[19], q[17];
cx q[20], q[14];
cx q[23], q[12];
cx q[27], q[23];
cx q[28], q[12];
cx q[28], q[14];
cx q[28], q[13];
cx q[30], q[13];
rz(1.4300880432128906*pi) q[12];
rz(1.8601760864257812*pi) q[13];
rz(1.7203521728515625*pi) q[14];
cx q[20], q[15];
cx q[12], q[24];
cx q[24], q[7];
cx q[24], q[16];
rz(1.9990234375*pi) q[24];
cx q[19], q[24];
cx q[27], q[13];
cx q[28], q[14];
cx q[28], q[13];
rz(1.0001220703125*pi) q[13];
rz(0.500030517578125*pi) q[15];
cx q[19], q[12];
cx q[20], q[15];
cx q[13], q[23];
rz(0.99609375*pi) q[23];
cx q[27], q[19];
cx q[28], q[12];
cx q[28], q[15];
cx q[12], q[7];
rz(1.999755859375*pi) q[12];
rz(1.440704345703125*pi) q[15];
cx q[12], q[16];
rz(1.984375*pi) q[16];
cx q[12], q[17];
rz(0.03125*pi) q[17];
cx q[12], q[18];
cx q[12], q[22];
rz(1.00048828125*pi) q[22];
cx q[13], q[22];
cx q[12], q[24];
cx q[24], q[16];
cx q[24], q[14];
cx q[28], q[16];
cx q[28], q[15];
h q[7];
rz(0.5000001192092896*pi) q[7];
rz(1.99609375*pi) q[14];
rz(0.88140869140625*pi) q[16];
cx q[19], q[12];
cx q[27], q[19];
cx q[28], q[16];
cx q[28], q[7];
cx q[30], q[16];
s q[7];
rz(1.875*pi) q[16];
cx q[16], q[18];
t q[18];
cx q[13], q[18];
cx q[19], q[15];
cx q[20], q[7];
cx q[12], q[22];
rz(0.5009765625*pi) q[22];
cx q[27], q[18];
rz(0.27906525135040283*pi) q[7];
cx q[13], q[12];
rz(1.998046875*pi) q[15];
cx q[19], q[15];
cx q[22], q[7];
cx q[28], q[7];
cx q[30], q[16];
rz(1.440704345703125*pi) q[15];
cx q[16], q[8];
rz(0.88140869140625*pi) q[16];
cx q[12], q[17];
cx q[17], q[9];
cx q[17], q[8];
rz(1.0625*pi) q[17];
cx q[16], q[18];
rz(1.03125*pi) q[18];
cz q[18], q[22];
cx q[15], q[24];
cx q[21], q[16];
cx q[27], q[12];
cx q[16], q[8];
rz(1.0625*pi) q[16];
cx q[15], q[16];
h q[16];
t q[16];
cx q[13], q[16];
cx q[27], q[16];
cx q[14], q[15];
cx q[24], q[15];
cx q[14], q[24];
h q[24];
t q[24];
cx q[27], q[24];
cx q[29], q[15];
cx q[13], q[14];
rz(0.00048828125*pi) q[15];
cx q[27], q[14];
cx q[29], q[15];
cx q[15], q[14];
rz(0.7203521728515625*pi) q[15];
cx q[15], q[16];
rz(0.125*pi) q[16];
cx q[27], q[13];
cx q[13], q[12];
cx q[13], q[7];
cx q[13], q[9];
rz(0.8601760864257812*pi) q[13];
rz(0.998046875*pi) q[14];
h q[15];
cz q[13], q[15];
t q[15];
cx q[13], q[16];
rz(1.52587890625e-05*pi) q[16];
cx q[13], q[17];
cx q[13], q[18];
cz q[15], q[21];
cx q[13], q[22];
cx q[22], q[11];
cx q[23], q[14];
cx q[13], q[23];
cx q[23], q[10];
rz(0.9999995231628418*pi) q[23];
cx q[13], q[24];
cx q[27], q[16];
rz(1.52587890625e-05*pi) q[7];
h q[9];
rz(1.00048828125*pi) q[9];
rz(1.00006103515625*pi) q[12];
cz q[9], q[15];
cx q[12], q[16];
rz(1.0625*pi) q[16];
cx q[19], q[13];
cx q[21], q[13];
cx q[22], q[7];
cx q[12], q[24];
cx q[24], q[8];
rz(1.125*pi) q[24];
cz q[9], q[28];
cx q[29], q[7];
rz(3.814697265625e-06*pi) q[7];
cx q[24], q[7];
cx q[16], q[24];
cx q[27], q[12];
cx q[29], q[7];
cx q[12], q[7];
cx q[12], q[6];
cz q[9], q[12];
rz(1.9300880432128906*pi) q[12];
cx q[12], q[13];
cx q[12], q[15];
cx q[12], q[16];
rz(0.00390625*pi) q[7];
h q[12];
rz(0.984375*pi) q[12];
cz q[12], q[17];
cx q[24], q[7];
cx q[16], q[24];
rz(0.001953125*pi) q[7];
cx q[16], q[7];
cx q[19], q[7];
cx q[7], q[6];
rz(1.9999923706054688*pi) q[7];
cx q[17], q[7];
cx q[19], q[7];
h q[6];
rz(1.00048828125*pi) q[6];
rz(1.0009765625*pi) q[7];
cx q[7], q[8];
cz q[7], q[9];
cx q[7], q[10];
h q[10];
rz(1.5000009536743164*pi) q[10];
cz q[6], q[12];
cx q[21], q[9];
cx q[24], q[9];
cz q[6], q[28];
cx q[28], q[10];
cx q[30], q[12];
cx q[9], q[8];
rz(1.015625*pi) q[9];
s q[10];
s q[12];
cx q[7], q[12];
cx q[17], q[12];
cx q[18], q[17];
cx q[18], q[9];
cx q[20], q[10];
cx q[24], q[9];
rz(0.001953125*pi) q[9];
rz(0.23252201080322266*pi) q[10];
cx q[10], q[11];
cx q[17], q[6];
cx q[17], q[7];
cx q[18], q[17];
cx q[22], q[17];
cx q[28], q[9];
rz(0.000244140625*pi) q[6];
rz(1.00048828125*pi) q[7];
cx q[17], q[2];
cx q[18], q[6];
cx q[23], q[18];
cx q[28], q[6];
cx q[30], q[7];
rz(1.1395326256752014*pi) q[6];
cx q[18], q[11];
cx q[21], q[6];
cx q[28], q[6];
rz(6.103515625e-05*pi) q[6];
cx q[21], q[6];
cx q[23], q[6];
rz(1.999969482421875*pi) q[6];
cx q[14], q[6];
cx q[23], q[14];
rz(1.9999847412109375*pi) q[6];
cx q[14], q[6];
cx q[19], q[6];
rz(1.9999961853027344*pi) q[6];
cx q[16], q[6];
cx q[19], q[6];
rz(0.0009765625*pi) q[6];
cx q[16], q[6];
cx q[30], q[6];
rz(1.9998779296875*pi) q[6];
cx q[6], q[8];
h q[8];
rz(1.0581305027008057*pi) q[8];
cz q[8], q[10];
cx q[6], q[12];
cx q[12], q[11];
rz(0.96875*pi) q[12];
cx q[24], q[10];
cx q[24], q[12];
cx q[28], q[10];
cx q[30], q[12];
rz(0.03125*pi) q[10];
h q[11];
rz(0.99609375*pi) q[11];
cx q[21], q[11];
cx q[24], q[6];
cx q[16], q[24];
cx q[24], q[10];
cx q[28], q[8];
cx q[30], q[11];
cx q[30], q[6];
rz(0.001953125*pi) q[6];
s q[8];
rz(0.015625*pi) q[10];
rz(1.001953125*pi) q[11];
cx q[16], q[10];
cx q[21], q[11];
cx q[21], q[10];
cx q[23], q[8];
cx q[23], q[11];
cx q[29], q[6];
rz(1.9998779296875*pi) q[8];
rz(0.0009765625*pi) q[10];
rz(1.9990234375*pi) q[11];
cx q[18], q[8];
cx q[20], q[11];
cx q[21], q[10];
cx q[23], q[18];
cx q[23], q[11];
cx q[22], q[23];
rz(0.0009765625*pi) q[8];
rz(1.9073486328125e-06*pi) q[11];
cx q[18], q[8];
cx q[18], q[9];
cx q[18], q[7];
cx q[21], q[8];
cx q[25], q[18];
cx q[7], q[2];
rz(0.999755859375*pi) q[7];
rz(0.000244140625*pi) q[8];
rz(1.1162610054016113*pi) q[9];
cx q[7], q[12];
cx q[14], q[8];
cx q[16], q[9];
cx q[21], q[8];
cx q[22], q[14];
cx q[28], q[9];
rz(1.99993896484375*pi) q[8];
rz(0.0078125*pi) q[9];
cx q[14], q[8];
cx q[16], q[9];
cx q[22], q[14];
rz(3.0517578125e-05*pi) q[8];
cx q[14], q[9];
cx q[14], q[10];
cx q[22], q[8];
cx q[30], q[8];
rz(1.49951171875*pi) q[8];
rz(1.9998779296875*pi) q[9];
rz(0.999755859375*pi) q[10];
cx q[14], q[10];
cx q[14], q[9];
cx q[17], q[14];
cx q[19], q[9];
cx q[19], q[8];
cx q[20], q[19];
cx q[22], q[14];
cx q[30], q[8];
cx q[22], q[30];
rz(1.9999847412109375*pi) q[8];
rz(1.999969482421875*pi) q[9];
cx q[8], q[13];
h q[13];
rz(1.03125*pi) q[13];
cx q[10], q[13];
cx q[16], q[13];
cx q[19], q[11];
cx q[20], q[19];
rz(1.9998779296875*pi) q[11];
cx q[19], q[8];
cx q[27], q[19];
cx q[29], q[8];
cx q[31], q[10];
rz(7.62939453125e-06*pi) q[8];
rz(3.814697265625e-06*pi) q[10];
cx q[19], q[11];
cx q[19], q[9];
cx q[27], q[8];
cx q[27], q[19];
cx q[29], q[8];
rz(3.814697265625e-06*pi) q[8];
rz(7.62939453125e-06*pi) q[9];
rz(1.000030517578125*pi) q[11];
cx q[15], q[11];
cx q[16], q[8];
rz(1.4999999403953552*pi) q[19];
cx q[27], q[8];
cx q[27], q[11];
cx q[27], q[9];
cx q[29], q[9];
rz(0.00390625*pi) q[8];
rz(1.52587890625e-05*pi) q[9];
rz(0.125*pi) q[11];
cx q[8], q[13];
cx q[13], q[2];
rz(1.125*pi) q[13];
cx q[7], q[13];
cx q[15], q[11];
cx q[17], q[13];
cx q[22], q[17];
cx q[22], q[15];
cx q[28], q[11];
cx q[29], q[9];
rz(1.9650440216064453*pi) q[11];
cx q[17], q[9];
cx q[21], q[7];
cx q[22], q[7];
cx q[24], q[8];
cx q[16], q[24];
cx q[24], q[6];
cx q[24], q[11];
rz(0.500030517578125*pi) q[24];
cx q[28], q[11];
rz(1.9073486328125e-06*pi) q[6];
rz(0.0078125*pi) q[8];
rz(0.00390625*pi) q[9];
rz(1.0625*pi) q[11];
cx q[8], q[12];
rz(1.9375*pi) q[12];
cx q[17], q[9];
cx q[22], q[16];
cx q[24], q[11];
cx q[25], q[11];
cx q[27], q[6];
cx q[29], q[6];
cx q[31], q[9];
rz(9.5367431640625e-07*pi) q[6];
rz(1.9073486328125e-06*pi) q[9];
rz(0.9999961853027344*pi) q[11];
cx q[16], q[2];
cx q[17], q[11];
cx q[25], q[9];
cx q[25], q[11];
cx q[26], q[6];
cx q[8], q[26];
cx q[24], q[26];
cx q[26], q[12];
cx q[26], q[15];
rz(0.9999980926513672*pi) q[26];
cx q[27], q[6];
cx q[31], q[9];
rz(1.9999995231628418*pi) q[6];
rz(1.9999990463256836*pi) q[9];
rz(0.015625*pi) q[11];
cx q[14], q[11];
cx q[17], q[14];
cx q[22], q[9];
cx q[22], q[8];
cx q[24], q[8];
cx q[25], q[9];
cx q[26], q[8];
cx q[9], q[7];
cx q[9], q[8];
rz(1.00006103515625*pi) q[9];
rz(1.99951171875*pi) q[11];
cx q[9], q[13];
cx q[14], q[11];
z q[14];
cx q[9], q[15];
cx q[29], q[11];
cx q[9], q[30];
cx q[30], q[13];
cx q[30], q[7];
rz(0.9990234375*pi) q[30];
cx q[22], q[30];
cx q[20], q[30];
rz(0.0001220703125*pi) q[7];
cx q[8], q[6];
rz(0.9999961853027344*pi) q[8];
rz(6.103515625e-05*pi) q[11];
cx q[8], q[12];
rz(1.875*pi) q[12];
cx q[8], q[15];
rz(0.015625*pi) q[15];
cx q[20], q[12];
cx q[21], q[7];
cx q[22], q[9];
cx q[22], q[12];
cx q[25], q[15];
cx q[29], q[11];
cx q[31], q[9];
cx q[19], q[31];
cx q[31], q[10];
cx q[19], q[31];
cx q[20], q[31];
cx q[9], q[6];
cx q[8], q[9];
rz(1.99993896484375*pi) q[10];
cx q[19], q[10];
cx q[9], q[26];
cx q[26], q[15];
rz(1.0000009536743164*pi) q[26];
cx q[25], q[26];
cx q[29], q[10];
rz(2.384185791015625e-07*pi) q[6];
rz(1.000030517578125*pi) q[10];
cx q[17], q[10];
cx q[25], q[6];
cx q[29], q[10];
cx q[31], q[9];
cx q[20], q[31];
cx q[31], q[11];
cx q[31], q[6];
cx q[31], q[7];
cx q[31], q[15];
cx q[31], q[26];
rz(1.9999998807907104*pi) q[6];
rz(4.76837158203125e-07*pi) q[7];
cx q[9], q[8];
cx q[10], q[2];
rz(0.5078125*pi) q[10];
rz(1.0000076293945312*pi) q[11];
cx q[10], q[13];
rz(0.015625*pi) q[13];
cx q[11], q[13];
cx q[20], q[9];
cx q[20], q[6];
cx q[22], q[9];
cx q[25], q[6];
cx q[25], q[7];
cx q[25], q[13];
rz(1.9999995231628418*pi) q[26];
cx q[31], q[7];
cx q[31], q[13];
h q[2];
rz(1.0000038146972656*pi) q[2];
rz(5.960464477539063e-08*pi) q[6];
rz(1.999999761581421*pi) q[7];
rz(4.76837158203125e-07*pi) q[8];
cx q[8], q[12];
cx q[7], q[13];
t q[13];
cx q[8], q[13];
cx q[17], q[10];
cx q[20], q[6];
cx q[20], q[13];
cx q[21], q[2];
cx q[22], q[11];
cx q[22], q[2];
cx q[22], q[6];
cx q[27], q[10];
cx q[8], q[30];
cx q[31], q[11];
rz(1.0000076293945312*pi) q[6];
rz(1.52587890625e-05*pi) q[10];
cx q[25], q[10];
cx q[25], q[7];
cx q[27], q[10];
cx q[27], q[7];
rz(1.9073486328125e-06*pi) q[7];
rz(0.9999980926513672*pi) q[10];
cx q[10], q[15];
rz(0.0625*pi) q[15];
cx q[8], q[15];
cx q[10], q[18];
cx q[18], q[2];
rz(1.00390625*pi) q[18];
cx q[20], q[15];
cx q[27], q[7];
cx q[20], q[8];
cx q[22], q[10];
cx q[25], q[10];
cx q[10], q[2];
cx q[10], q[9];
rz(1.0001220703125*pi) q[10];
cx q[10], q[11];
rz(1.52587890625e-05*pi) q[2];
rz(0.9999923706054688*pi) q[9];
cx q[9], q[10];
cx q[9], q[11];
cx q[11], q[10];
rz(0.9999847412109375*pi) q[11];
cx q[9], q[12];
cx q[11], q[12];
cx q[9], q[18];
cx q[11], q[18];
cx q[18], q[2];
rz(1.0078125*pi) q[18];
cx q[9], q[23];
cx q[11], q[23];
cx q[9], q[30];
cx q[11], q[30];
cx q[10], q[6];
rz(1.000244140625*pi) q[10];
cx q[11], q[9];
cx q[10], q[12];
tdg q[12];
cx q[14], q[11];
cx q[10], q[16];
rz(1.03125*pi) q[16];
cz q[10], q[18];
cx q[16], q[18];
cx q[10], q[22];
cx q[22], q[2];
cx q[22], q[6];
cx q[22], q[9];
cx q[22], q[13];
cx q[22], q[11];
rz(1.4650440216064453*pi) q[22];
cx q[10], q[23];
cz q[22], q[23];
rz(0.99951171875*pi) q[23];
cx q[23], q[8];
cx q[10], q[30];
cz q[23], q[30];
rz(1.998046875*pi) q[30];
rz(1.2325220108032227*pi) q[9];
cx q[9], q[8];
cx q[9], q[12];
rz(1.0625*pi) q[13];
cx q[9], q[15];
rz(1.53125*pi) q[15];
cx q[16], q[10];
cx q[22], q[16];
cx q[9], q[22];
h q[22];
rz(0.0625*pi) q[22];
cx q[15], q[22];
cx q[9], q[23];
cx q[9], q[30];
cz q[0], q[30];
cz q[1], q[30];
rz(0.9999980926513672*pi) q[30];
cx q[8], q[2];
cx q[8], q[7];
rz(1.999755859375*pi) q[8];
cx q[13], q[9];
cx q[16], q[10];
cx q[16], q[18];
rz(1.5000038146972656*pi) q[18];
cx q[19], q[1];
cx q[8], q[23];
cx q[23], q[2];
cx q[23], q[7];
rz(0.11626100540161133*pi) q[23];
cx q[28], q[1];
rz(1.9999980926513672*pi) q[2];
rz(1.99993896484375*pi) q[7];
h q[9];
t q[9];
cx q[25], q[9];
cx q[26], q[9];
cx q[20], q[26];
cx q[25], q[26];
rz(2.384185791015625e-07*pi) q[26];
cx q[28], q[2];
rz(1.5009765625*pi) q[9];
cx q[6], q[9];
rz(1.0625*pi) q[9];
cx q[6], q[9];
cz q[5], q[9];
cx q[13], q[6];
cx q[15], q[13];
cx q[8], q[15];
cx q[15], q[7];
cx q[23], q[6];
rz(0.0078125*pi) q[6];
rz(0.0078125*pi) q[7];
cx q[13], q[6];
cx q[7], q[22];
t q[22];
cx q[23], q[8];
cx q[20], q[23];
cx q[26], q[23];
cx q[20], q[26];
cx q[26], q[17];
rz(0.5581305027008057*pi) q[26];
rz(0.00390625*pi) q[6];
cz q[3], q[8];
cz q[0], q[8];
cx q[8], q[2];
cx q[14], q[7];
cx q[8], q[15];
cx q[15], q[7];
cx q[15], q[13];
rz(6.103515625e-05*pi) q[15];
rz(1.001953125*pi) q[17];
cx q[23], q[22];
h q[23];
t q[23];
cx q[6], q[23];
cx q[15], q[23];
cx q[26], q[17];
rz(1.5712207891047*pi) q[2];
h q[3];
cz q[0], q[3];
rz(1.9999961853027344*pi) q[3];
cz q[2], q[4];
rz(1.499969482421875*pi) q[7];
cx q[7], q[11];
rz(0.9999990463256836*pi) q[11];
cx q[9], q[11];
cx q[13], q[5];
rz(0.5001220703125*pi) q[13];
rz(0.125*pi) q[22];
cx q[6], q[22];
cx q[15], q[22];
cx q[26], q[22];
cz q[3], q[28];
cz q[3], q[30];
cz q[3], q[31];
cx q[8], q[3];
cx q[14], q[7];
cx q[14], q[2];
cx q[15], q[6];
cx q[18], q[0];
rz(0.03125*pi) q[22];
cx q[28], q[0];
cx q[28], q[2];
rz(1.0000038146972656*pi) q[0];
rz(0.4999990463256836*pi) q[2];
rz(1.1395326256752014*pi) q[6];
rz(1.2790652513504028*pi) q[7];
cx q[18], q[0];
cx q[7], q[23];
rz(1.125*pi) q[23];
cx q[23], q[22];
cx q[7], q[26];
h q[26];
tdg q[26];
cx q[23], q[26];
cx q[30], q[0];
rz(1.9999980926513672*pi) q[0];
cx q[9], q[7];
cx q[21], q[0];
cx q[30], q[0];
rz(9.5367431640625e-07*pi) q[0];
rz(1.125*pi) q[7];
cx q[8], q[0];
cx q[7], q[11];
cx q[21], q[0];
rz(1.9999995231628418*pi) q[0];
cx q[4], q[7];
h q[7];
rz(1.53125*pi) q[7];
cx q[8], q[0];
cz q[7], q[14];
cz q[7], q[16];
cx q[29], q[0];
cz q[7], q[30];
rz(2.9802322387695312e-08*pi) q[0];
cx q[2], q[4];
cx q[9], q[0];
cx q[23], q[4];
cx q[6], q[23];
cx q[26], q[23];
cx q[29], q[0];
rz(0.0009765625*pi) q[0];
cx q[7], q[2];
cx q[9], q[0];
cx q[9], q[6];
cx q[14], q[0];
sdg q[23];
rz(1.999999761581421*pi) q[0];
sdg q[2];
h q[6];
z q[6];
t q[6];
cx q[7], q[6];
cx q[14], q[0];
cx q[14], q[2];
cx q[17], q[0];
cx q[22], q[7];
cx q[23], q[7];
cx q[26], q[7];
cx q[27], q[7];
rz(7.62939453125e-06*pi) q[0];
cx q[10], q[0];
cx q[17], q[0];
rz(1.1920928955078125e-07*pi) q[0];
cx q[10], q[0];
cx q[19], q[0];
rz(0.9999999403953552*pi) q[0];
cx q[0], q[1];
cx q[2], q[0];
cx q[3], q[2];
cx q[19], q[0];
rz(0.0078125*pi) q[0];
cx q[2], q[1];
rz(0.0625*pi) q[2];
cx q[0], q[2];
cx q[3], q[2];
cx q[0], q[7];
cx q[25], q[3];
cx q[27], q[2];
h q[1];
rz(0.9999961853027344*pi) q[1];
rz(1.4901161193847656e-08*pi) q[2];
rz(0.9999999850988388*pi) q[3];
cx q[1], q[4];
h q[4];
rz(1.625*pi) q[4];
cx q[4], q[6];
cx q[6], q[5];
rz(1.0625*pi) q[6];
cx q[2], q[7];
rz(1.001953125*pi) q[7];
cz q[4], q[9];
cx q[10], q[7];
cz q[4], q[14];
cz q[4], q[16];
cx q[22], q[6];
cx q[25], q[3];
cz q[4], q[26];
cx q[28], q[3];
cz q[4], q[30];
rz(1.1424415782094002*pi) q[3];
h q[5];
rz(0.03125*pi) q[5];
cx q[9], q[5];
cx q[21], q[1];
cx q[23], q[3];
cx q[23], q[4];
cx q[28], q[3];
cx q[30], q[1];
rz(1.9073486328125e-06*pi) q[1];
rz(1.96875*pi) q[3];
sdg q[4];
cx q[0], q[4];
cx q[2], q[4];
cx q[21], q[1];
cx q[26], q[3];
cx q[27], q[4];
cx q[28], q[1];
rz(0.7856103945523503*pi) q[1];
rz(0.015625*pi) q[3];
rz(1.9375*pi) q[4];
cx q[10], q[1];
cx q[14], q[3];
cx q[27], q[2];
cx q[28], q[1];
cx q[30], q[4];
rz(2.384185791015625e-07*pi) q[1];
cx q[10], q[1];
cx q[14], q[1];
rz(1.9999995231628418*pi) q[1];
cx q[14], q[1];
cx q[29], q[1];
rz(5.960464477539063e-08*pi) q[1];
cx q[19], q[1];
cx q[29], q[1];
rz(1.9999998807907104*pi) q[1];
cx q[19], q[1];
cx q[23], q[1];
rz(1.9921875*pi) q[1];
cx q[11], q[1];
cx q[23], q[1];
cx q[26], q[23];
rz(1.9999999850988388*pi) q[1];
cx q[11], q[1];
cx q[15], q[1];
cx q[23], q[4];
cx q[23], q[3];
cx q[23], q[2];
rz(0.0001220703125*pi) q[1];
cx q[2], q[0];
rz(0.001953125*pi) q[2];
rz(1.9999980926513672*pi) q[3];
cx q[9], q[3];
cx q[14], q[3];
cx q[15], q[1];
cx q[23], q[2];
cx q[24], q[2];
cx q[31], q[1];
rz(1e-08*pi) q[1];
rz(3.0517578125e-05*pi) q[2];
rz(0.0078125*pi) q[3];
cx q[9], q[3];
cx q[23], q[1];
cx q[24], q[2];
cx q[31], q[1];
cx q[1], q[0];
rz(0.00390625*pi) q[1];
cx q[22], q[1];
cx q[23], q[22];
rz(0.015625*pi) q[0];
cx q[1], q[0];
rz(0.0009765625*pi) q[1];
cx q[1], q[6];
cx q[11], q[0];
cx q[22], q[7];
cx q[22], q[5];
cx q[22], q[3];
cx q[22], q[0];
rz(0.00390625*pi) q[3];
rz(0.015625*pi) q[5];
rz(4.76837158203125e-07*pi) q[7];
cx q[10], q[7];
cx q[10], q[3];
cx q[22], q[5];
cx q[22], q[3];
cx q[22], q[1];
cx q[27], q[5];
cx q[29], q[7];
rz(9.5367431640625e-07*pi) q[3];
rz(4.76837158203125e-07*pi) q[5];
rz(1.1920928955078125e-07*pi) q[7];
cx q[10], q[3];
cx q[15], q[5];
cx q[19], q[3];
cx q[27], q[7];
cx q[27], q[5];
cx q[29], q[7];
rz(1.9999995231628418*pi) q[3];
rz(0.001953125*pi) q[5];
rz(5.960464477539063e-08*pi) q[7];
cx q[9], q[7];
cx q[15], q[5];
cx q[19], q[3];
cx q[27], q[7];
cx q[28], q[5];
cx q[29], q[3];
rz(2.384185791015625e-07*pi) q[3];
rz(0.5697663128376007*pi) q[5];
rz(0.00390625*pi) q[7];
cx q[9], q[7];
cx q[24], q[5];
cx q[25], q[7];
cx q[27], q[3];
cx q[28], q[5];
cx q[29], q[3];
rz(1.1920928955078125e-07*pi) q[3];
rz(0.0009765625*pi) q[5];
rz(1.99999999*pi) q[7];
cx q[13], q[3];
cx q[13], q[5];
cx q[19], q[7];
cx q[24], q[5];
cx q[25], q[7];
cx q[27], q[3];
rz(0.0009765625*pi) q[3];
rz(0.50390625*pi) q[5];
rz(1.999999761581421*pi) q[7];
cx q[13], q[3];
cx q[13], q[5];
cx q[16], q[5];
cx q[19], q[7];
cx q[21], q[3];
cx q[23], q[7];
rz(7.62939453125e-06*pi) q[3];
rz(0.00048828125*pi) q[5];
cx q[7], q[4];
cx q[7], q[6];
rz(1.0078125*pi) q[7];
cx q[15], q[3];
cx q[16], q[5];
cx q[17], q[5];
cx q[21], q[3];
cx q[7], q[26];
cx q[26], q[4];
rz(0.984375*pi) q[26];
cx q[11], q[26];
rz(0.00048828125*pi) q[3];
rz(1.999969482421875*pi) q[4];
rz(0.000244140625*pi) q[5];
rz(0.03125*pi) q[6];
cx q[1], q[6];
rz(1.515625*pi) q[6];
cx q[15], q[3];
cx q[17], q[3];
cx q[17], q[5];
cx q[22], q[4];
cx q[23], q[7];
cx q[30], q[4];
cx q[30], q[5];
rz(6.103515625e-05*pi) q[3];
rz(0.0078125*pi) q[4];
rz(1.99993896484375*pi) q[5];
cx q[12], q[3];
cx q[17], q[3];
cx q[21], q[5];
cx q[22], q[4];
cx q[11], q[22];
cx q[7], q[26];
cx q[28], q[4];
cx q[30], q[5];
rz(1.998046875*pi) q[3];
rz(0.28488315641880035*pi) q[4];
rz(3.0517578125e-05*pi) q[5];
cx q[8], q[5];
cx q[12], q[4];
cx q[15], q[7];
cx q[21], q[5];
cx q[24], q[3];
cx q[28], q[4];
rz(1.99609375*pi) q[4];
rz(1.9999847412109375*pi) q[5];
rz(0.000244140625*pi) q[7];
cx q[8], q[5];
cx q[12], q[4];
cx q[11], q[12];
cx q[13], q[4];
cx q[15], q[7];
cx q[29], q[5];
rz(0.001953125*pi) q[4];
rz(9.5367431640625e-07*pi) q[5];
cx q[13], q[4];
cx q[14], q[5];
cx q[24], q[4];
cx q[29], q[5];
rz(0.00048828125*pi) q[4];
rz(1.9999923706054688*pi) q[5];
cx q[9], q[4];
cx q[10], q[5];
cx q[14], q[5];
cx q[24], q[4];
rz(0.015625*pi) q[4];
rz(3.814697265625e-06*pi) q[5];
cx q[9], q[4];
cx q[10], q[5];
cx q[14], q[4];
cx q[19], q[5];
rz(1.9999961853027344*pi) q[4];
rz(1.9999980926513672*pi) q[5];
cx q[14], q[4];
cx q[17], q[4];
cx q[18], q[5];
cx q[19], q[5];
rz(0.0001220703125*pi) q[4];
rz(0.0001220703125*pi) q[5];
cx q[17], q[4];
cx q[18], q[5];
cx q[18], q[4];
cx q[31], q[5];
rz(6.103515625e-05*pi) q[4];
rz(1.1920928955078125e-07*pi) q[5];
cx q[18], q[4];
cx q[19], q[4];
cx q[25], q[5];
cx q[31], q[5];
rz(1.9999990463256836*pi) q[4];
rz(1.9999999403953552*pi) q[5];
cx q[10], q[4];
cx q[19], q[4];
cx q[23], q[5];
cx q[25], q[5];
rz(1.9073486328125e-06*pi) q[4];
rz(0.0625*pi) q[5];
cx q[10], q[4];
cx q[11], q[4];
cx q[20], q[5];
cx q[23], q[5];
cx q[21], q[23];
rz(1.9999998807907104*pi) q[4];
rz(2.9802322387695312e-08*pi) q[5];
cx q[11], q[5];
cx q[11], q[4];
cx q[20], q[5];
cx q[31], q[4];
rz(5.960464477539063e-08*pi) q[4];
cx q[5], q[0];
rz(1.999999761581421*pi) q[5];
cx q[5], q[12];
cx q[12], q[1];
cx q[12], q[3];
rz(1.9921875*pi) q[12];
cx q[25], q[4];
cx q[5], q[26];
rz(1.875*pi) q[26];
cx q[26], q[12];
cx q[31], q[4];
t q[0];
rz(1.9999999701976776*pi) q[4];
cx q[11], q[5];
cx q[16], q[4];
cx q[25], q[4];
rz(0.500244140625*pi) q[4];
cx q[5], q[1];
cx q[5], q[3];
cx q[5], q[0];
rz(0.5697663128376007*pi) q[5];
cx q[16], q[4];
cx q[20], q[4];
cx q[5], q[26];
cx q[26], q[2];
cx q[26], q[6];
rz(0.49609375*pi) q[26];
rz(1.5078125*pi) q[0];
rz(1.99951171875*pi) q[1];
rz(1.99609375*pi) q[2];
rz(0.000244140625*pi) q[3];
rz(1.4901161193847656e-08*pi) q[4];
cx q[2], q[6];
rz(0.015625*pi) q[6];
cx q[11], q[6];
cx q[18], q[1];
cx q[20], q[4];
cx q[20], q[3];
cx q[24], q[3];
cx q[29], q[4];
rz(1e-08*pi) q[3];
rz(4.76837158203125e-07*pi) q[4];
cx q[12], q[2];
cx q[15], q[4];
cx q[18], q[3];
cx q[20], q[3];
cx q[26], q[12];
cx q[29], q[4];
rz(1.999755859375*pi) q[2];
rz(3.0517578125e-05*pi) q[3];
rz(0.0009765625*pi) q[4];
cx q[2], q[6];
cx q[12], q[7];
cx q[12], q[6];
cx q[12], q[1];
rz(1.999755859375*pi) q[12];
cx q[15], q[4];
cx q[18], q[3];
cx q[27], q[4];
cx q[30], q[3];
rz(7.62939453125e-06*pi) q[1];
rz(1.9999847412109375*pi) q[3];
rz(2.384185791015625e-07*pi) q[4];
rz(1.9990234375*pi) q[7];
cx q[8], q[4];
cx q[12], q[7];
cx q[12], q[2];
cx q[13], q[7];
cx q[15], q[2];
cx q[18], q[1];
cx q[24], q[1];
cx q[27], q[4];
rz(6.103515625e-05*pi) q[1];
rz(6.103515625e-05*pi) q[2];
rz(1.9999923706054688*pi) q[4];
rz(1.50048828125*pi) q[7];
cx q[8], q[4];
cx q[9], q[1];
cx q[13], q[7];
cx q[17], q[8];
cx q[24], q[1];
cx q[31], q[7];
rz(0.001953125*pi) q[1];
cx q[4], q[5];
h q[5];
rz(0.125*pi) q[5];
cx q[3], q[5];
rz(1.4901161193847656e-08*pi) q[7];
cx q[9], q[1];
cx q[13], q[1];
cx q[24], q[7];
cx q[24], q[5];
cx q[30], q[5];
cx q[31], q[7];
rz(0.000244140625*pi) q[1];
cx q[7], q[5];
rz(0.0001220703125*pi) q[7];
cx q[16], q[3];
cx q[21], q[4];
cx q[24], q[7];
cx q[30], q[3];
cx q[30], q[7];
rz(0.0001220703125*pi) q[3];
rz(1.0000152587890625*pi) q[4];
t q[5];
cx q[1], q[5];
rz(1.9999923706054688*pi) q[7];
cx q[13], q[5];
cx q[16], q[3];
cx q[17], q[7];
cx q[4], q[23];
rz(1.03125*pi) q[23];
cx q[30], q[7];
cx q[31], q[3];
rz(0.5000000298023224*pi) q[3];
rz(3.0517578125e-05*pi) q[7];
cx q[11], q[3];
cx q[11], q[7];
cx q[17], q[7];
cx q[21], q[4];
cx q[31], q[3];
rz(1.9999999403953552*pi) q[3];
rz(0.28488315641880035*pi) q[4];
cx q[3], q[6];
rz(0.125*pi) q[6];
rz(1.9999999701976776*pi) q[7];
cx q[4], q[23];
rz(0.501953125*pi) q[23];
cx q[1], q[4];
cx q[11], q[3];
cx q[13], q[4];
rz(0.14244157820940026*pi) q[3];
cx q[3], q[4];
h q[4];
rz(1.625*pi) q[4];
cx q[3], q[5];
rz(0.0625*pi) q[5];
cx q[3], q[6];
cx q[11], q[5];
cx q[13], q[1];
cx q[16], q[1];
cx q[17], q[5];
rz(1.000030517578125*pi) q[1];
cx q[1], q[4];
cx q[7], q[3];
cx q[11], q[7];
cx q[11], q[3];
h q[3];
rz(0.125*pi) q[3];
cx q[2], q[3];
cx q[7], q[1];
rz(1.5712207891047*pi) q[7];
cx q[15], q[3];
cx q[7], q[16];
cx q[16], q[1];
cx q[16], q[4];
rz(6.103515625e-05*pi) q[16];
cx q[17], q[1];
rz(1.0000152587890625*pi) q[1];
rz(1.625*pi) q[3];
cx q[1], q[3];
t q[4];
cx q[1], q[5];
cx q[7], q[2];
cx q[7], q[4];
cx q[1], q[8];
rz(1.9999990463256836*pi) q[8];
cx q[11], q[4];
cx q[15], q[2];
cx q[16], q[2];
cx q[7], q[16];
cx q[17], q[3];
rz(1.52587890625e-05*pi) q[2];
t q[3];
cx q[1], q[7];
cx q[11], q[2];
cx q[16], q[2];
cx q[17], q[7];
rz(0.99999999*pi) q[2];
cx q[2], q[4];
rz(0.0625*pi) q[4];
cx q[2], q[5];
rz(0.03125*pi) q[5];
h q[7];
t q[7];
cx q[13], q[7];
cx q[13], q[4];
cx q[13], q[5];
cx q[17], q[1];
cx q[2], q[22];
rz(1.00048828125*pi) q[22];
cx q[13], q[22];
rz(0.7856103945523503*pi) q[1];
cx q[1], q[3];
cx q[1], q[8];
cx q[11], q[2];
cx q[13], q[2];
cx q[1], q[27];
rz(2.9802322387695312e-08*pi) q[27];
cx q[1], q[27];
rz(0.0001220703125*pi) q[2];
cx q[2], q[4];
rz(0.0625*pi) q[4];
cx q[2], q[5];
rz(1.53125*pi) q[5];
cx q[2], q[7];
tdg q[7];
cx q[2], q[22];
rz(1.50048828125*pi) q[22];
cx q[13], q[2];
cx q[2], q[1];
rz(1.6428051972761748*pi) q[2];
h q[2];
h q[1];
x q[28];
x q[19];
x q[25];
x q[14];
x q[30];
x q[8];
x q[11];
x q[26];
x q[12];
cx q[0], q[20];
cx q[20], q[0];
cx q[0], q[20];
cx q[1], q[25];
cx q[25], q[1];
cx q[1], q[25];
cx q[2], q[31];
cx q[31], q[2];
cx q[2], q[31];
cx q[3], q[11];
cx q[11], q[3];
cx q[3], q[11];
cx q[4], q[27];
cx q[27], q[4];
cx q[4], q[27];
cx q[5], q[29];
cx q[29], q[5];
cx q[5], q[29];
cx q[6], q[19];
cx q[19], q[6];
cx q[6], q[19];
cx q[7], q[10];
cx q[10], q[7];
cx q[7], q[10];
cx q[8], q[14];
cx q[14], q[8];
cx q[8], q[14];
cx q[9], q[14];
cx q[14], q[9];
cx q[9], q[14];
cx q[10], q[21];
cx q[21], q[10];
cx q[10], q[21];
cx q[11], q[30];
cx q[30], q[11];
cx q[11], q[30];
cx q[12], q[18];
cx q[18], q[12];
cx q[12], q[18];
cx q[13], q[17];
cx q[17], q[13];
cx q[13], q[17];
cx q[14], q[16];
cx q[16], q[14];
cx q[14], q[16];
cx q[15], q[24];
cx q[24], q[15];
cx q[15], q[24];
cx q[16], q[24];
cx q[24], q[16];
cx q[16], q[24];
cx q[19], q[22];
cx q[22], q[19];
cx q[19], q[22];
cx q[20], q[24];
cx q[24], q[20];
cx q[20], q[24];
cx q[21], q[23];
cx q[23], q[21];
cx q[21], q[23];
cx q[22], q[26];
cx q[26], q[22];
cx q[22], q[26];
cx q[23], q[24];
cx q[24], q[23];
cx q[23], q[24];
cx q[24], q[26];
cx q[26], q[24];
cx q[24], q[26];
cx q[25], q[29];
cx q[29], q[25];
cx q[25], q[29];
cx q[26], q[27];
cx q[27], q[26];
cx q[26], q[27];
cx q[27], q[30];
cx q[30], q[27];
cx q[27], q[30];
cx q[28], q[30];
cx q[30], q[28];
cx q[28], q[30];
cx q[30], q[31];
cx q[31], q[30];
cx q[30], q[31];