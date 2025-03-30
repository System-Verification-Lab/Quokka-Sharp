import copy
import io
from itertools import product
import math
import sys
import traceback
import numpy as np


from .qasm_parser import Circuit

class Variables:
    def __init__(self, cnf: 'CNF', computational_basis=False, unitary_encoding = False, Unitary = None):
        self.cnf = cnf
        self.n = cnf.n + cnf.ancillas
        self.Udim = 2 ** self.n
        self.var = 0
        self.XVar = []
        self.ZVar = []
        self.RVar = []
        self.UVar = []
        self.computational_basis = computational_basis
        self.x = []
        if not self.computational_basis:
            self.z = []
        for i in range(self.n):
            xnew = self.add_var()
            self.x.append(xnew)
            self.XVar.append(xnew)
            if not self.computational_basis:
                znew = self.add_var()
                self.z.append(znew)
                self.ZVar.append(znew)
            if i >= cnf.n: # ancilla init I
                cnf.add_clause([-self.x[-1]])
                if not self.computational_basis:
                    cnf.add_clause([-self.z[-1]])
        if not cnf.weighted:
            if computational_basis:
                self.i = self.add_var()
                cnf.add_clause([-self.i])
            self.r = self.add_var()
            cnf.add_clause([-self.r])
            self.u = self.add_var()
            cnf.add_clause([-self.u])
        if unitary_encoding:
            self.Unitaryvar = [[0 for _ in range(self.Udim)] for _ in range(self.Udim)]
            Udim = self.Udim
            for i in range(Udim):
                for j in range(Udim):
                    self.Unitaryvar[i][j] = self.add_var()
                    if Unitary[i][j] == 0:
                        self.cnf.add_clause([-self.Unitaryvar[i][j]])
                    else:
                        self.cnf.add_weight(self.Unitaryvar[i][j], Unitary[i][j])
                        self.cnf.add_weight(-self.Unitaryvar[i][j], 1)
    def copy(self):
        cnf = self.cnf
        self.cnf = None
        self_copy = copy.deepcopy(self)
        self.cnf = cnf
        self_copy.cnf = cnf
        return self_copy

    def add_var(self):
        self.var += 1
        return self.var

    def measurement(self, basis, prepend=False):
        n = self.n
        if basis == "allzero":
            for i in range(self.n):
                self.cnf.add_clause([-self.x[i]], prepend)
            if self.computational_basis:
                self.cnf.square_result = True
            else:
                self.cnf.power_two_normalisation += n
        elif basis == "firstzero":
            self.cnf.add_clause([-self.x[0]], prepend, comment="firstzero mesurment")
            if self.computational_basis:
                circuit_copy = copy.deepcopy(self.cnf.circuit)
                circuit_copy.dagger()
                self.cnf.encode_circuit(circuit_copy)
                self.cnf.add_identity_clauses()
            else:
                for i in range(1, self.n):
                    self.cnf.add_clause([-self.x[i]], prepend)
                    self.cnf.add_clause([-self.z[i]], prepend)
                self.cnf.power_two_normalisation += 1
        elif type(basis) == dict:
            self.projector(basis, prepend=False)
            if self.computational_basis == False:
                self.cnf.power_two_normalisation += len(basis)
        else:
            Exception("Please choose firstzero, allzero or a list of qubits measurement")
            
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

# currently only on Pauli basis

# specifications are in the form of {1:0, 1:1}
# add weight to z variables in Pauli basis to encode |1>

    def projector(self, spec, prepend):
        x = self.x
        qubitset = list(spec.keys())
        if self.computational_basis:
            # precondition
            if prepend:
                for i in qubitset: 
                    if spec[i] == 0: 
                        self.cnf.add_clause([-x[i]], prepend)
                    else:
                        self.cnf.add_clause([x[i]], prepend)
            else:
                for i in qubitset:
                    if spec[i] == 0: 
                        self.cnf.add_clause([-x[i]], prepend)
                    else:
                        self.cnf.add_clause([x[i]], prepend)
                circuit_copy = copy.deepcopy(self.cnf.circuit)
                circuit_copy.dagger()
                self.cnf.encode_circuit(circuit_copy)
                self.cnf.add_identity_clauses()
        else:
            z = self.z
            for i in range(self.n):
                self.cnf.add_clause([-x[i]], prepend)
                if i in qubitset:
                    if spec[i] == 1:
                        self.cnf.add_weight(z[i], -1)
                        self.cnf.add_weight(-z[i], 1)                          
                else:
                    self.cnf.add_clause([-z[i]], prepend)            
    
    def encode_unitary_static(self, U):
        # is_unitary, num_qubits = check_unitary_and_qubits(U)           
        Udim = 2 ** self.n
        Uvar = [[0 for _ in range(Udim)] for _ in range(Udim)]
        for i in range(Udim):
            for j in range(Udim):
                Uvar[i][j] = self.add_var()
                if U[i][j] == 0:
                    self.cnf.add_clause([-Uvar[i][j]])
                else:
                    self.cnf.add_weight(Uvar[i][j], U[i][j])
                    self.cnf.add_weight(-Uvar[i][j], 1)
                # add weight Uvar[i][j] --- U[i][j] and not Uvar[i][j] --- 1        
                
class CNF:
    def __init__(self, n = 0, ancillas=0, computational_basis=False, weighted = True, ganak = False, unitary_encoding = False, Unitary = None):
        self.clause = 0
        self.n = n
        self.ancillas = ancillas
        self.circuit = None
        self.locked = False
        self.cons_list = []
        self.weighted = weighted
        self.weight_list = io.StringIO()
        self.power_two_normalisation = 0
        # self.vars = Variables(self, computational_basis, unitary_encoding, Unitary) # variables at timestep m (end of circuit)
        # self.vars_init = self.vars.copy()     # variables at timestep 0
        self.computational_basis = computational_basis
        self.square_result = False
        self.syn_gate_layer = 0
        self.syn_gate_picking_vars_by_layer_and_gate = {}
        self.syn_gate_picking_vars = {}
        self.syn_projection_vars = set()
        self.ganak = ganak
        self.unitary_encoding = unitary_encoding
        self.Unitary = Unitary
        if unitary_encoding:
            try: 
                is_unitary, num_qubits = check_unitary_and_qubits(Unitary)
            except:
                assert "Please give the matrix in np arrays"
            if not is_unitary:
                assert "The matrix is not unitary matrix!"
            else:
                self.n = num_qubits
                dim   = 2 ** num_qubits   
                
                self.vars = Variables(self, computational_basis, unitary_encoding, Unitary) # variables at timestep m (end of circuit)
                self.vars_init = self.vars.copy()     # variables at timestep 0             
                
                xbinary = generate_signed_combinations(self.vars.x)
                X = []
                for i in range(self.n):
                    Xnew = self.add_var()
                    X.append(Xnew)
                Xbinary = generate_signed_combinations(X)
            #   update the variables
                self.vars.x = X
                Ucons = []
                for i in range(dim):
                    for j in range(dim):
                        for var in xbinary[i]:
                            self.add_clause([var, - self.vars.Unitaryvar[i][j]])
                        for var in Xbinary[j]:
                            self.add_clause([var, - self.vars.Unitaryvar[i][j]])
                        Ucons.append(self.vars.Unitaryvar[i][j])
                self.add_clause(Ucons)  
        else:
            self.vars = Variables(self, computational_basis, unitary_encoding, Unitary) # variables at timestep m (end of circuit)
            self.vars_init = self.vars.copy()     # variables at timestep 0
        
    def copy(self):
        self.vars.cnf = None
        self.vars_init.cnf = None
        new = copy.deepcopy(self)
        self.vars.cnf = self
        self.vars_init.cnf = self
        new.vars.cnf = new
        new.vars_init.cnf = new

    def finalize(self):
        self.locked = True

    # Left projections are initial states
    def leftProjectAllZero(self):
        self.vars_init.projectAllZero(prepend=True)

    # Left projections are initial states
    def leftProjectZXi(self, Z_or_X, i):
        self.vars_init.projectZXi(Z_or_X, i, prepend=True)

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

    def precondition(self, spec):
        self.vars_init.projector(spec, prepend=True)
        # normalization
        if self.computational_basis:
            self.power_two_normalisation += self.n - len(spec)
        else:
            self.power_two_normalisation += len(spec)
    
    def postcondition(self, spec):
        self.vars.projector(spec, prepend=False)

    # Add clauses dictating that the initial state matches the finel state
    # constrain_2n = limit the initial states to the 2*n states of single X or single Z (the rest are I)
    # constrain_no_Y = limit the initial state to I, X or Z (no Y, 3**n posible states instead of 4**n)
    def add_identity_clauses(self, constrain_2n = False, constrain_no_Y = False):
        assert(self.vars.n == self.vars_init.n)
        assert not (constrain_2n and constrain_no_Y) # no sense using both
        for i in range(self.vars.n):
            self.add_clause([ self.vars.x[i], -self.vars_init.x[i]])
            self.add_clause([-self.vars.x[i],  self.vars_init.x[i]])
            if not self.computational_basis:
                self.add_clause([ self.vars.z[i], -self.vars_init.z[i]])
                self.add_clause([-self.vars.z[i],  self.vars_init.z[i]])
        if constrain_2n:
            if not self.computational_basis:
                from .pauli2cnf import pauli2cnf as to_CNF
                to_CNF.AMO(self, self.vars_init.x+self.vars_init.z)
            else: 
                assert False, f"ERROR: identity with constrain_2n for computational_basis not suported"
        if constrain_no_Y:
            if not self.computational_basis:
                for i in range(self.vars.n):
                    self.add_clause([-self.vars_init.x[i], -self.vars_init.z[i]])
            else: 
                assert False, f"ERROR: identity with constrain_no_Y for computational_basis not suported"
        if not self.locked:
            self.finalize() 

    def add_measurement(self, basis):
        self.vars.measurement(basis, False) 
        if not self.locked:
            self.finalize() 
            
    def add_var(self, syn_gate_pick = False, Name ="UnNamed", bits = None, projection_var = False):
        assert not self.locked
        assert not (syn_gate_pick and projection_var)
        var = self.vars.add_var()
        if projection_var:
            self.syn_projection_vars.add(var)
        if syn_gate_pick:
            self.syn_gate_picking_vars[var] = {"Name": Name, "bits": bits, "layer": self.syn_gate_layer}
            if Name not in self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer]:
                self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer][Name] = {}
            if len(bits) == 1:
                self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer][Name][bits[0]] = var
            else:
                if bits[0] not in self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer][Name]:
                    self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer][Name][bits[0]] = {}
                self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer][Name][bits[0]][bits[1]] = var
        return var
    
    def get_syn_var_past_layer(self, Name ="UnNamed", bit = None, past=1):
        try:
            if type(bit) is int:
                return self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer-past][Name][bit]
            if type(bit) is list:
                return self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer-past][Name][bit[0]][bit[1]]
        except KeyError:
            return 0.5


    def add_clause(self, cons, prepend=False, comment=None):   
        # print(f"adding clause: {cons}")
        # traceback.print_stack(limit=3, file=sys.stdout)
        if -0.5 in cons:
            # raise KeyError("used an invalid past variable, and added its false literal to a clause")
            return
        if 0.5 in cons:
            raise KeyError("used an invalid past variable, and added its true literal to a clause")
        self.clause += 1
        constr = ''
        for i in range(len(cons)):
            assert type(cons[i]) is int
            constr += str(cons[i]) + " "
        constr = constr + "0"
        # if comment:  disabled since it causes problems with cnf solvers
        #     constr = constr + "\t\t// " +comment
        constr = constr + "\n"
        if prepend:
            self.cons_list.insert(0, constr)
        else:
            self.cons_list.append(constr)

    def add_weight(self, var, weight, complex_weight=None, comment=None):
        assert self.weighted
        if (complex_weight != None):
            self.weight_list.write("c p complex ")
        else:
            self.weight_list.write("c p weight ")
        self.weight_list.write(str(var))
        self.weight_list.write(" ")
        self.weight_list.write(str(weight))
        if (complex_weight != None):
            self.weight_list.write(" ")
            # support ganak complex format
            if not self.ganak:
                self.weight_list.write(str(complex_weight))
            else: 
                self.weight_list.write(" + ")
                self.weight_list.write(str(complex_weight))
                self.weight_list.write("i")
        self.weight_list.write(" 0")
        # if comment: disabled since it causes problems with cnf solvers
        #     self.weight_list.write("\t\t// " + comment)
        self.weight_list.write("\n")

    def ProjectionSet(self, VarList):
        return ' '.join([str(v) for vars in VarList for v in vars])

    def write_to_file(self, cnf_file, syntesis_fomat = False, projectionset = []):
        with open(cnf_file, 'w') as the_file:
            the_file.writelines("p cnf " + str(self.vars.var)+" "+str(self.clause)+"\n")
            if len(projectionset) > 0:
                the_file.writelines("c p show " + self.ProjectionSet(projectionset) + " 0\n")
            if syntesis_fomat:
                the_file.write("c max " +' '.join([str(v) for v in self.syn_gate_picking_vars.keys()]) + " 0\n")
                the_file.write("c ind " +' '.join([str(v) for v in (range(1,self.vars.var+1) - self.syn_gate_picking_vars.keys() - self.syn_projection_vars)]) + " 0\n") 
            weights_str = self.weight_list.getvalue()
            if not syntesis_fomat:
                weights_str = weights_str.replace("complex", "weight")
            the_file.write(weights_str)
            the_file.write(''.join(self.cons_list))

    # add to the cnf the gates as decribed in the circuit
    def encode_circuit(self, circuit : Circuit):

        if not self.circuit:
            self.circuit = copy.deepcopy(circuit)
        else:
            self.circuit.append(copy.deepcopy(circuit))

        if self.computational_basis:
            from .comput2cnf import comput2cnf as to_CNF 
        else:
            from .pauli2cnf import pauli2cnf as to_CNF

        for element in circuit.circ:
            gate = element[0]
            if gate == 'id':
                pass
            elif gate == 'h':
                k = int(element[1])
                to_CNF.H2CNF(self,k)
            elif gate == 'x':
                k = int(element[1])
                to_CNF.X2CNF(self,k)
            elif gate == 'y':
                k = int(element[1])
                to_CNF.Y2CNF(self,k)
            elif gate == 'z':
                k = int(element[1])
                to_CNF.Z2CNF(self,k)           
            elif gate == 's':
                k = int(element[1])
                to_CNF.S2CNF(self,k)
            elif gate == 'sdg':
                k = int(element[1])
                to_CNF.Sdg2CNF(self,k)
            elif gate == 't':
                k = int(element[1])
                to_CNF.T2CNF(self, k)
            elif gate == 'tdg':
                k = int(element[1])
                to_CNF.Tdg2CNF(self,k)
            elif gate == 'cx':
                j = int(element[1])
                k = int(element[2])
                to_CNF.CNOT2CNF(self,j,k)
            elif gate == 'cz':
                j = int(element[1])
                k = int(element[2])
                to_CNF.CZ2CNF(self,j,k)  
            # elif gate == 'cs':
            #     j = int(element[1])
            #     k = int(element[2])
            #     to_CNF.CS2CNF(self,j,k)  
            # elif gate == 'csdg':
            #     j = int(element[1])
            #     k = int(element[2])
            #     to_CNF.CSdg2CNF(self,j,k) 
            elif gate[0] == 'r':
                angle = element[1]
                k = int(element[2])
                if gate == 'rx':
                    to_CNF.RX2CNF(self,k, angle)
                elif gate == 'rz':
                    to_CNF.RZ2CNF(self,k, angle)
                elif gate == 'rxdg':
                    to_CNF.RX2CNF(self,k, -angle)
                elif gate == 'rzdg':
                    to_CNF.RZ2CNF(self,k, -angle)
            elif gate == "ccx":
                qubitc1 = int(element[1])
                qubitc2 = int(element[2])
                qubitr  = int(element[3])
                to_CNF.CCX2CNF(self, qubitc1, qubitc2, qubitr)
            # elif gate == 'm':
            #     self.rightProjectZXi(True, 0)
            # elif gate == 'mm':
            #     self.rightProjectAllZero()
            else:
                raise Exception(str(gate) + " undefined."+ str(element))
            
    def encode_composition(self, composition_dictionary):
        from .pauli2cnf import pauli2cnf as to_CNF
        to_CNF.Composition2CNF(self, composition_dictionary)

    def add_syn_layer(self, n=1, limit_gates=False, h_layer=False):
        if self.computational_basis:
            from .comput2cnf import comput2cnf as to_CNF 
        else:
            from .pauli2cnf import pauli2cnf as to_CNF
        
        for _ in range(n):
            self.syn_gate_layer += 1
            self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer] = {}
            if self.computational_basis:
                to_CNF.SynLayer2CNF(self)
            else:
                to_CNF.SynLayer2CNF(self, limit_gates=limit_gates, h_layer=h_layer)

    # convert an assignment for the syn variable to a coresponding Circuit object
    def get_syn_circuit(self, assignment, translate_ccx=True):
        circuit = Circuit(translate_ccx)
        circuit.n = self.n
        for v in assignment:
            if int(v) > 0:
                gate = self.syn_gate_picking_vars[int(v)]
                if gate['Name'] == "id":
                    continue
                if len(gate['bits'])==1:
                    circuit.add_single(gate['Name'], gate['bits'][0])
                elif len(gate['bits'])==2:
                    circuit.add_double(gate['Name'], gate['bits'][0], gate['bits'][1])
                else:
                    assert False
        return circuit

    # convert an assignment for the syn variable to a coresponding qasm formt
    def get_syn_qasm(self, assignment) -> str:
        s = "OPENQASM 2.0;\n"
        s += "include \"qelib1.inc\";\n"
        s += f"qreg q[{self.n + + self.ancillas}];\n"
        for v in assignment:
            if int(v) > 0:
                gate = self.syn_gate_picking_vars[int(v)]
                if gate['Name'] == "id":
                    continue
                s += f"{gate['Name']}"
                for b in gate['bits']:
                    s += f" q[{b}]"
                s += f" ;\n"
        return s         
        


def generate_signed_combinations(lst):
    n = len(lst)
    result = {}
    
    for signs in product([0, 1], repeat=n):
        signed_list = [num if sign else -num for num, sign in zip(lst, signs)]
        signs = signs[::-1]
        binary_code = ''.join(map(str,signs))
        result[int(binary_code,2)] = signed_list
    return result

def check_unitary_and_qubits(U, tol=1e-12):
    # Check if U is square
    if U.shape[0] != U.shape[1]:
        return False, None
    
    # Check if U is unitary
    U_dagger = np.conjugate(U).T
    identity = np.eye(U.shape[0])
    
    is_unitary = np.allclose(U_dagger @ U, identity, atol=tol) and np.allclose(U @ U_dagger, identity, atol=tol)
    
    # Determine the number of qubits
    size = U.shape[0]
    num_qubits = None
    if (size & (size - 1)) == 0:  # Check if size is a power of 2
        num_qubits = int(np.log2(size))
    
    return is_unitary, num_qubits


# construct a CNF object for a given Circuit, in the pauly or computational basis
def QASM2CNF(circuit: Circuit, computational_basis = False, weighted = True, ancillas = 0, ganak = False) -> CNF:
    cnf = CNF(circuit.n, ancillas = circuit.ancillas + ancillas, computational_basis = computational_basis, weighted = weighted, ganak = ganak)
    cnf.encode_circuit(circuit)
    return cnf 

# construct a CNF object for a given PauliStrings Composition, in the pauly basis with weights
def Composition2CNF(composition_dictionary, ancillas = 0) -> CNF:
    cnf = CNF(composition_dictionary["qubits"], computational_basis = False, weighted = True, ancillas=ancillas)
    cnf.encode_composition(composition_dictionary)
    return cnf