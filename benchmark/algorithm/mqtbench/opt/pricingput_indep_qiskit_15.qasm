OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
s q[0];
s q[1];
s q[2];
s q[3];
s q[4];
h q[4];
cz q[2], q[4];
cz q[3], q[4];
rz(0.970919069260991*pi) q[4];
s q[5];
h q[5];
cz q[2], q[5];
cz q[3], q[5];
rz(1.4759281869386116*pi) q[5];
s q[6];
h q[6];
cz q[5], q[6];
rz(1.5182823360067745*pi) q[6];
cx q[2], q[6];
cx q[3], q[6];
h q[6];
cz q[4], q[6];
rz(1.726730897110334*pi) q[6];
cx q[5], q[6];
sdg q[6];
s q[7];
h q[7];
rz(0.875*pi) q[7];
h q[7];
rz(0.875*pi) q[7];
h q[7];
rz(1.125*pi) q[7];
h q[7];
rz(1.9373163701316287*pi) q[7];
h q[7];
cx q[2], q[5];
cx q[4], q[5];
cx q[3], q[5];
h q[5];
rz(0.9165303003066887*pi) q[5];
cx q[6], q[5];
cx q[4], q[6];
rz(0.3301353550963485*pi) q[6];
cx q[4], q[2];
cx q[4], q[3];
cx q[5], q[4];
cx q[5], q[3];
rz(1.962465378237459*pi) q[5];
cx q[6], q[2];
cx q[6], q[5];
cx q[6], q[3];
h q[6];
rz(1.9868274657315668*pi) q[6];
h q[2];
rz(1.984607593298821*pi) q[2];
cz q[2], q[6];
cx q[5], q[6];
cx q[6], q[3];
rz(1.997193524346289*pi) q[6];
h q[3];
cx q[3], q[2];
rz(1.9732558682906178*pi) q[3];
cx q[4], q[2];
cx q[5], q[4];
cx q[4], q[3];
cx q[4], q[6];
rz(0.9935805037945246*pi) q[6];
cx q[2], q[6];
rz(0.9920805212925368*pi) q[6];
rz(1.9481781269088856*pi) q[3];
cx q[5], q[4];
cx q[3], q[5];
rz(1.9764114160411355*pi) q[5];
cx q[3], q[6];
cx q[4], q[2];
cx q[4], q[3];
cz q[1], q[4];
cz q[0], q[4];
s q[4];
cx q[4], q[6];
rz(1.4027685347242949*pi) q[3];
cx q[2], q[5];
rz(0.9859911010431361*pi) q[5];
cx q[6], q[5];
cx q[3], q[6];
cx q[4], q[6];
cx q[4], q[2];
cx q[5], q[2];
rz(1.9739997016216437*pi) q[5];
cx q[3], q[5];
cx q[4], q[5];
rz(1.9973621749772015*pi) q[2];
h q[3];
rz(0.499330907545514*pi) q[3];
cx q[4], q[3];
rz(1.499638903761413*pi) q[3];
cx q[3], q[6];
cx q[6], q[2];
cx q[5], q[6];
rz(1.9997812270316653*pi) q[2];
cx q[5], q[3];
cx q[5], q[2];
rz(1.996015817803831*pi) q[2];
rz(1.992717673143666*pi) q[3];
cx q[6], q[3];
cx q[2], q[6];
cx q[5], q[6];
cz q[1], q[6];
rz(1.4487010316535995*pi) q[6];
rz(1.9955813579431179*pi) q[3];
cx q[4], q[2];
cx q[5], q[3];
cx q[6], q[3];
cx q[4], q[6];
rz(1.9717715199602859*pi) q[6];
cz q[1], q[2];
rz(0.9977810135197627*pi) q[2];
cx q[2], q[3];
rz(0.9986781091654736*pi) q[3];
cx q[2], q[5];
rz(1.998869132467681*pi) q[5];
cx q[3], q[1];
cx q[5], q[1];
cx q[5], q[3];
cx q[6], q[2];
cx q[5], q[6];
cz q[0], q[2];
s q[3];
cx q[2], q[5];
cx q[5], q[1];
rz(1.9855215427273774*pi) q[5];
cx q[4], q[5];
h q[5];
rz(0.4999885865766063*pi) q[5];
cx q[3], q[5];
rz(1.4998372442769212*pi) q[5];
cx q[6], q[5];
h q[1];
rz(1.9962243880141548*pi) q[1];
cx q[2], q[1];
cx q[2], q[3];
cx q[4], q[1];
cx q[3], q[5];
rz(1.999895373917792*pi) q[5];
cx q[2], q[5];
cx q[4], q[5];
rz(1.9993862093990495*pi) q[5];
cx q[4], q[5];
cx q[3], q[5];
rz(1.9999851454974795*pi) q[5];
cx q[4], q[5];
cx q[6], q[5];
cx q[2], q[6];
rz(1.9919743531500005*pi) q[1];
cx q[3], q[1];
cx q[2], q[3];
cx q[4], q[1];
rz(1.9996100997342539*pi) q[5];
cx q[4], q[5];
cx q[6], q[5];
cx q[2], q[6];
rz(1.9998234583964443*pi) q[1];
cx q[3], q[1];
cx q[4], q[1];
rz(1.9998758417794869*pi) q[5];
cx q[4], q[5];
cx q[6], q[5];
cx q[2], q[6];
rz(1.9992230949203877*pi) q[1];
cx q[2], q[1];
cx q[4], q[1];
rz(1.999954943599611*pi) q[5];
cx q[3], q[5];
cx q[6], q[5];
rz(1.9926388553203738*pi) q[1];
cx q[3], q[1];
cx q[4], q[1];
cz q[0], q[5];
rz(1.9999369872563184*pi) q[5];
cx q[6], q[1];
cx q[6], q[5];
cx q[2], q[6];
rz(1.9855178831176439*pi) q[1];
cx q[2], q[1];
rz(1.4999666263499*pi) q[5];
rz(1.9987761905828996*pi) q[1];
cx q[2], q[1];
cx q[4], q[1];
rz(1.473932995498724*pi) q[1];
cx q[3], q[1];
cx q[2], q[3];
cz q[0], q[1];
rz(1.9975819965934398*pi) q[1];
cx q[3], q[1];
cx q[2], q[3];
h q[0];
rz(0.4999507105844184*pi) q[0];
rz(1.9978828800079396*pi) q[1];
cx q[3], q[1];
cx q[5], q[0];
cx q[2], q[5];
sdg q[0];
rz(1.9997526155352896*pi) q[1];
cx q[3], q[0];
cx q[4], q[1];
cx q[6], q[3];
cx q[4], q[6];
rz(1.99958910800917*pi) q[1];
cx q[3], q[1];
cx q[3], q[5];
rz(1.9999759899964902*pi) q[5];
cx q[3], q[5];
rz(0.9996784559596977*pi) q[5];
cx q[1], q[0];
rz(1.992515292750891*pi) q[1];
cx q[2], q[1];
cx q[3], q[1];
cx q[4], q[2];
rz(1.9980936898431296*pi) q[0];
rz(1.9958136032795115*pi) q[1];
cx q[2], q[0];
cx q[3], q[0];
rz(1.9993721713395074*pi) q[0];
cx q[1], q[0];
cx q[3], q[1];
cx q[3], q[0];
cx q[5], q[0];
cx q[4], q[5];
rz(0.999911361832263*pi) q[5];
cx q[6], q[0];
cx q[5], q[6];
rz(1.999992702747716*pi) q[0];
rz(1.9993588987292747*pi) q[1];
cx q[1], q[2];
cx q[2], q[0];
rz(1.9984689487826268*pi) q[2];
cx q[4], q[0];
cx q[5], q[0];
cx q[2], q[5];
cx q[3], q[5];
cx q[2], q[6];
cx q[1], q[6];
rz(1.498938383662164*pi) q[6];
rz(1.999668668594104*pi) q[0];
cx q[1], q[0];
cx q[1], q[2];
cx q[3], q[2];
cx q[3], q[0];
cx q[4], q[2];
cx q[4], q[0];
cx q[6], q[0];
cx q[5], q[1];
cx q[2], q[6];
cx q[6], q[0];
rz(1.9981079503699621*pi) q[6];
rz(1.4997937922431053*pi) q[1];
cx q[1], q[0];
cx q[6], q[1];
cx q[3], q[6];
h q[6];
rz(1.9999860624595711*pi) q[6];
cx q[2], q[6];
cx q[5], q[6];
cx q[4], q[6];
rz(1.9999828550584824*pi) q[6];
cx q[2], q[6];
cx q[3], q[6];
cx q[4], q[6];
rz(1.9997299110199236*pi) q[6];
cx q[3], q[6];
rz(1.9999577336073926*pi) q[6];
cx q[4], q[6];
rz(1.9999909707963748*pi) q[0];
cx q[3], q[0];
cx q[4], q[0];
cx q[1], q[6];
rz(1.9999954768231019*pi) q[6];
cx q[2], q[6];
cx q[5], q[6];
cx q[3], q[6];
rz(1.9999996835478246*pi) q[6];
cx q[1], q[6];
cx q[4], q[6];
rz(1.999998208293791*pi) q[6];
cx q[2], q[6];
rz(1.9999976136253614*pi) q[6];
cx q[3], q[6];
cx q[4], q[6];
cx q[2], q[1];
cx q[5], q[1];
cx q[1], q[6];
rz(1.999996343668177*pi) q[6];
cx q[4], q[6];
cx q[5], q[1];
cx q[1], q[0];
cx q[2], q[1];
rz(1.9990444621406014*pi) q[0];
cx q[4], q[0];
cx q[1], q[6];
rz(1.9999722643347095*pi) q[6];
cx q[3], q[6];
cx q[4], q[6];
cx q[2], q[1];
cx q[5], q[1];
cx q[1], q[0];
cx q[1], q[6];
rz(1.9999996327576672*pi) q[6];
cx q[3], q[6];
rz(1.999866669256765*pi) q[0];
cx q[1], q[0];
cx q[3], q[0];
cx q[4], q[0];
rz(1.9999445985336324*pi) q[0];
cx q[2], q[0];
rz(1.9999155520560292*pi) q[0];
cx q[1], q[0];
cx q[2], q[1];
cx q[3], q[0];
cx q[4], q[0];
rz(1.9999020524545035*pi) q[0];
cx q[4], q[0];
cx q[1], q[6];
rz(1.9999873443559633*pi) q[6];
cx q[2], q[6];
cx q[5], q[6];
cx q[4], q[6];
rz(1.9999787821349218*pi) q[6];
cx q[4], q[6];
cx q[5], q[1];
cx q[1], q[6];
rz(1.9999977213080735*pi) q[6];
cx q[3], q[6];
cx q[2], q[1];
cx q[1], q[6];
rz(1.9999990478443004*pi) q[6];
cx q[3], q[6];
cx q[4], q[6];
cx q[2], q[1];
cx q[5], q[1];
cx q[1], q[6];
rz(1.9999930695109953*pi) q[6];
cx q[2], q[6];
cx q[3], q[6];
cx q[4], q[6];
rz(1.9999664376777946*pi) q[6];
cx q[2], q[6];
cx q[5], q[6];
cx q[4], q[6];
rz(1.9999994657660949*pi) q[6];
cx q[3], q[6];
cx q[4], q[6];
cx q[5], q[1];
cx q[1], q[0];
rz(1.99892412491973*pi) q[0];
cx q[2], q[0];
cx q[4], q[0];
rz(1.9995954144444466*pi) q[0];
cx q[3], q[0];
cx q[4], q[0];
rz(1.9869107377560975*pi) q[0];
cx q[1], q[0];
cx q[2], q[1];
cx q[3], q[0];
rz(1.9997836873237191*pi) q[0];
cx q[2], q[0];
cx q[4], q[0];
cx q[5], q[0];
cx q[1], q[6];
rz(1.9999936306212005*pi) q[6];
cx q[5], q[6];
cx q[3], q[6];
cx q[4], q[6];
rz(0.999521930526329*pi) q[6];
rz(1.9999329682632396*pi) q[0];
cx q[1], q[0];
cx q[2], q[1];
cx q[4], q[0];
cx q[5], q[1];
rz(1.9994602738945775*pi) q[0];
cx q[2], q[0];
cx q[3], q[0];
cx q[4], q[0];
cx q[5], q[0];
cx q[1], q[6];
rz(1.999999348532869*pi) q[6];
cx q[3], q[6];
rz(1.9999965109250988*pi) q[6];
cx q[2], q[6];
rz(1.9999953355841202*pi) q[6];
cx q[1], q[6];
cx q[3], q[6];
cx q[4], q[6];
rz(1.9998423093122095*pi) q[6];
cx q[4], q[6];
rz(0.495942605780118*pi) q[0];
cx q[2], q[0];
cx q[5], q[0];
rz(1.999974730375626*pi) q[0];
cx q[2], q[0];
cx q[3], q[0];
rz(1.999796757101505*pi) q[0];
cx q[1], q[0];
cx q[2], q[1];
cx q[3], q[0];
cx q[5], q[1];
rz(1.9987622661080484*pi) q[0];
cx q[2], q[0];
cx q[4], q[0];
cx q[1], q[6];
rz(1.9999455877862475*pi) q[6];
cx q[5], q[6];
cx q[4], q[6];
rz(1.9962242052545407*pi) q[0];
cx q[4], q[0];
rz(1.999205302184696*pi) q[0];
cx q[3], q[0];
cx q[4], q[0];
cx q[5], q[0];
rz(1.9998336841383513*pi) q[0];
cx q[2], q[0];
cx q[3], q[0];
cx q[5], q[0];
rz(1.9978757358281751*pi) q[0];
cx q[5], q[0];
rz(1.9999814791486512*pi) q[0];
cx q[1], q[0];
cx q[3], q[0];
cx q[2], q[3];
cx q[4], q[0];
cx q[5], q[1];
cx q[3], q[6];
rz(1.9999981564664464*pi) q[6];
cx q[2], q[6];
cx q[5], q[6];
cx q[4], q[6];
rz(1.9999907258662144*pi) q[6];
cx q[4], q[6];
rz(1.99968491474632*pi) q[0];
cx q[3], q[0];
cx q[4], q[0];
cx q[5], q[0];
cx q[1], q[6];
rz(1.9999913794555537*pi) q[6];
cx q[1], q[6];
cx q[3], q[6];
rz(1.9999753152295776*pi) q[6];
cx q[4], q[6];
rz(1.9999167598175924*pi) q[6];
rz(1.4997147797617447*pi) q[0];
cx q[5], q[0];
cx q[5], q[1];
cx q[6], q[5];
cx q[0], q[4];
rz(1.9999657583064248*pi) q[4];
cx q[4], q[6];
cx q[1], q[0];
rz(1.4999861629146563*pi) q[0];
cx q[0], q[3];
rz(0.9998913106127226*pi) q[3];
cx q[0], q[3];
cx q[0], q[5];
cx q[5], q[4];
cx q[2], q[5];
rz(1.4999988268168767*pi) q[4];
cx q[6], q[0];
cx q[1], q[6];
cx q[4], q[6];
sdg q[6];
rz(1.4998982582587204*pi) q[0];
h q[1];
rz(0.055094975764614834*pi) q[1];
h q[1];
sdg q[1];
cx q[0], q[4];
cx q[2], q[4];
cx q[3], q[4];
h q[4];
rz(0.013773743941153901*pi) q[4];
h q[4];
sdg q[4];
cx q[0], q[5];
rz(1.4927095242221684*pi) q[5];
cx q[2], q[0];
h q[2];
rz(0.22037990305845934*pi) q[2];
h q[2];
sdg q[2];
h q[3];
rz(0.027547487882307528*pi) q[3];
h q[3];
sdg q[3];
cx q[5], q[0];
cx q[6], q[5];
h q[6];
sdg q[6];
h q[0];
rz(0.0068868719705769505*pi) q[0];
h q[0];
sdg q[0];
h q[5];
rz(0.11018995152922967*pi) q[5];
h q[5];
sdg q[5];
cx q[0], q[6];
cx q[6], q[0];
cx q[0], q[6];
cx q[1], q[6];
cx q[6], q[1];
cx q[1], q[6];
cx q[2], q[4];
cx q[4], q[2];
cx q[2], q[4];
cx q[4], q[6];
cx q[6], q[4];
cx q[4], q[6];