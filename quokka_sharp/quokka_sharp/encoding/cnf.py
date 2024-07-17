import copy
import io
import math
from sympy.logic.boolalg import *

from .qasm_parser import Circuit

class Variables:
    def __init__(self, cnf: 'CNF', computational_basis=False):
        self.cnf = cnf
        self.n = cnf.n
        self.var = 0
        self.x = [0] * cnf.n
        if not computational_basis:
            self.z = [0] * cnf.n
        for i in range(cnf.n):
            self.x[i] = self.add_var()
            if not computational_basis:
                self.z[i] = self.add_var()
        self.computational_basis = computational_basis
        self.syn_gate_layer = 0
        self.syn_gate_picking_vars = {}

    def add_var(self, syn_gate_pick = False, Name ="UnNamed", bit = None):
        self.var += 1
        if syn_gate_pick:
            self.syn_gate_picking_vars[self.var] = {"Name": Name, "bit": bit, "layer": self.syn_gate_layer}
        return self.var

    def measurement(self, basis, prepend=False):
        n = self.n
        if basis == "allzero":
            for i in range(self.n):
                self.cnf.add_clause([-self.x[i]], prepend)
            if self.computational_basis:
                self.cnf.square_result = True
            else:
                w = self.add_var()
                self.cnf.add_clause([w], True)
                self.cnf.add_weight(w, 1/math.pow(2,n))
        elif basis == "firstzero":
            self.cnf.add_clause([-self.x[0]], prepend)
            if self.computational_basis:
                circuit_copy = copy.deepcopy(self.cnf.circuit)
                circuit_copy.dagger()
                self.cnf.encode_circuit(circuit_copy)
                self.cnf.add_identity_clauses()
            else:
                for i in range(1, self.n):
                    self.cnf.add_clause([-self.x[i]], prepend)
                    self.cnf.add_clause([-self.z[i]], prepend)   
                w = self.add_var()
                self.cnf.add_clause([w], True)
                self.cnf.add_weight(w, 1/2)
        else: 
            Exception("Please choose firstzero or allzero measurement")
            
    def projectAllZero(self, prepend=False):
        for i in range(self.n):
            self.cnf.add_clause([-self.x[i]], prepend)   

    def projectZXi(self, Z_or_X, idx, prepend=False):
        assert(not self.computational_basis)
        x = self.x; z = self.z
        if not Z_or_X:
            z = self.x; x = self.z
        for i in range(self.n):
            self.cnf.add_clause([-x[i]], prepend)
            if i == idx:
                self.cnf.add_clause([z[i]], prepend)
            else:
                self.cnf.add_clause([-z[i]], prepend)

    def projectQBi(self, idx, prepend=False):
        assert(self.computational_basis)
        for i in range(self.n):
            if i == idx:
                self.cnf.add_clause([self.x[i]], prepend)
            else:
                self.cnf.add_clause([-self.x[i]], prepend)


class CNF:
    def __init__(self, circuit:Circuit, computational_basis=False):
        self.clause = 0
        self.n = circuit.n
        self.circuit = circuit
        self.locked = False
        self.cons_list = []
        self.weight_list = io.StringIO()
        self.vars = Variables(self, computational_basis) # variables at timestep m (end of circuit)
        self.vars_init = copy.deepcopy(self.vars)      # variables at timestep 0
        self.vars_init.cnf = self
        self.computational_basis = computational_basis
        self.square_result = False
    
    def finalize(self):
        self.locked = True

    # Left projections are initial states
    def leftProjectAllZero(self):
        self.vars_init.projectAllZero(prepend=True)

    # Left projections are initial states
    def leftProjectZXi(self, Z_or_X, i):
        self.vars_init.projectZXi(Z_or_X, i, prepend=True)

    # Left projections are initial states
    def leftProjectQBi(self, i):
        self.vars_init.projectQBi(i, True)

    # Right projections are measurements: we only allow measurements at the end. See self.lock
    def rightProjectAllZero(self):
        if not self.locked:
            self.finalize()
        self.vars.projectAllZero()

    # Right projections are measurements: we only allow measurements at the end. See self.lock
    def rightProjectZXi(self, Z_or_X, i):
        if not self.locked:
            self.finalize()
        self.vars.projectZXi(Z_or_X, i, prepend=True)

    # Right projections are measurements: we only allow measurements at the end. See self.lock
    def rightProjectQBi(self, i):
        if not self.locked:
            self.finalize()
        self.vars.projectQBi(i, True)

    def add_identity_clauses(self):
        assert(self.vars.n == self.vars_init.n)
        for i in range(self.vars.n):
            self.add_clause([ self.vars.x[i], -self.vars_init.x[i]])
            self.add_clause([-self.vars.x[i],  self.vars_init.x[i]])
            if not self.computational_basis:
                self.add_clause([ self.vars.z[i], -self.vars_init.z[i]])
                self.add_clause([-self.vars.z[i],  self.vars_init.z[i]])
        if not self.locked:
            self.finalize() 

    def add_measurement(self, basis):
        self.vars.measurement(basis, False) 
        if not self.locked:
            self.finalize() 
            
    def add_var(self):
        assert(not self.locked)
        return self.vars.add_var()

    def add_clause(self, cons, prepend=False):
        self.clause += 1
        constr = ''
        for i in range(len(cons)):
            constr += str(cons[i]) + " "
        constr = constr + "0\n"
        if prepend:
            self.cons_list.insert(0, constr)
        else:
            self.cons_list.append(constr)

    def add_weight(self, var, weight, complex_weight=None):
        self.weight_list.write("c p weight ")
        self.weight_list.write(str(var))
        self.weight_list.write(" ")
        self.weight_list.write(str(weight))
        if (complex_weight != None):
            self.weight_list.write(" ")
            self.weight_list.write(str(complex_weight))
        self.weight_list.write(" 0\n")

    def write_to_file(self, cnf_file):
        with open(cnf_file, 'w') as the_file:
            the_file.writelines("p cnf " + str(self.vars.var)+" "+str(self.clause)+"\n")
            the_file.write(self.weight_list.getvalue())
            the_file.write(''.join(self.cons_list))      

    def encode_circuit(self, circuit : Circuit):

        if self.computational_basis:
            from .comput2cnf import comput2cnf as to_CNF 
        else:
            from .cliffordt2cnf import cliffordt2cnf as to_CNF

        for element in circuit.circ:
            gate = element[0]
            if gate == 'h':
                k = int(element[1]) - 1
                to_CNF.H2CNF(self,k)
            elif gate == 'x':
                k = int(element[1]) - 1
                to_CNF.X2CNF(self,k)
            elif gate == 'y':
                k = int(element[1]) - 1
                to_CNF.Y2CNF(self,k)
            elif gate == 'z':
                k = int(element[1]) - 1
                to_CNF.Z2CNF(self,k)
            elif gate == 'cx':
                j = int(element[1]) - 1
                k = int(element[2]) - 1
                to_CNF.CNOT2CNF(self,j,k)
            elif gate == 'cz':
                j = int(element[1]) - 1
                k = int(element[2]) - 1
                to_CNF.CZ2CNF(self,j,k)            
            elif gate == 's':
                k = int(element[1]) - 1
                to_CNF.S2CNF(self,k)
            elif gate == 'tdg':
                k = int(element[1]) - 1
                to_CNF.Tdg2CNF(self,k)
            elif gate == 'sdg':
                k = int(element[1]) - 1
                to_CNF.Sdg2CNF(self,k)
            elif gate == 't':
                k = int(element[1]) - 1
                to_CNF.T2CNF(self, k)
            elif gate[0] == 'r':
                angle = element[1]
                k = int(element[2]) - 1
                if gate == 'rx':
                    to_CNF.RX2CNF(self,k, angle)
                elif gate == 'rz':
                    to_CNF.RZ2CNF(self,k, angle)
                elif gate == 'rxdg':
                    to_CNF.RX2CNF(self,k, -angle)
                elif gate == 'rzdg':
                    to_CNF.RZ2CNF(self,k, -angle)
            elif gate == "ccx":
                qubitc1 = int(element[1]) - 1
                qubitc2 = int(element[2]) - 1
                qubitr  = int(element[3]) - 1
                to_CNF.H2CNF(self,qubitr)
                to_CNF.CNOT2CNF(self,qubitc2,qubitr)
                to_CNF.Tdg2CNF(self,qubitr)
                to_CNF.CNOT2CNF(self,qubitc1,qubitr)
                to_CNF.T2CNF(self,qubitr)
                to_CNF.CNOT2CNF(self,qubitc2,qubitr)
                to_CNF.Tdg2CNF(self,qubitr)
                to_CNF.CNOT2CNF(self,qubitc1,qubitr)
                to_CNF.T2CNF(self,qubitc2)
                to_CNF.T2CNF(self,qubitr)
                to_CNF.CNOT2CNF(self,qubitc1,qubitc2)
                to_CNF.H2CNF(self,qubitr)
                to_CNF.T2CNF(self,qubitc1)
                to_CNF.Tdg2CNF(self,qubitc2)
                to_CNF.CNOT2CNF(self,qubitc1,qubitc2)
            # elif gate == 'm':
            #     self.rightProjectZXi(True, 0)
            # elif gate == 'mm':
            #     self.rightProjectAllZero()
            else:
                raise Exception(str(gate) + " undefined."+ str(element))
            
    def add_syn_layer(self, n=1):

        if self.computational_basis:
            from .comput2cnf import comput2cnf as to_CNF 
        else:
            from .cliffordt2cnf import cliffordt2cnf as to_CNF
        
        for _ in range(n):
            self.vars.syn_gate_layer += 1
            to_CNF.SynGate2CNF(self)

    def get_syn_cuirct(self, assignment):
        for v in assignment:
            if v > 0:
                print(self.vars.syn_gate_picking_vars[v])

def QASM2CNF(circuit: Circuit, computational_basis = False) -> CNF:
    cnf = CNF(circuit, computational_basis)
    cnf.encode_circuit(circuit)
    return cnf