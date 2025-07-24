import copy
import io
from itertools import product
import numpy as np

from .qasm_parser import Circuit

class Variables:
    """
    Class to manage the variables of the CNF encoding.
    """
    def __init__(self, cnf: 'CNF', computational_basis=False, unitary_encoding = False, Unitary = None):
        """
        Args:
            cnf (CNF): The CNF object to which the variables belong.
            computational_basis (bool): If True, the variables are in the computational basis, otherwise in the Pauli basis.
            unitary_encoding (bool): If True, the variables are in the unitary encoding.
            Unitary (np.ndarray): The unitary matrix to be encoded.
        """
        self.cnf = cnf
        self.n = cnf.n + cnf.ancillas
        self.Udim = 2 ** self.n
        self.var = 0
        self.XVar = []
        self.ZVar = []
        self.RVar = []
        self.UVar = []
        self.IVar = []
        self.DVar = []
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
                        if Unitary[i][j].imag == 0:
                            self.cnf.add_weight(self.Unitaryvar[i][j], Unitary[i][j].real)
                        else:
                            self.cnf.add_weight(self.Unitaryvar[i][j], Unitary[i][j].real, Unitary[i][j].imag)
                        self.cnf.add_weight(-self.Unitaryvar[i][j], 1)
    def copy(self):
        """
        Create a deep copy of the Variables object.
        Returns:
            Variables: A deep copy of the Variables object.
        """
        cnf = self.cnf
        self.cnf = None
        self_copy = copy.deepcopy(self)
        self.cnf = cnf
        self_copy.cnf = cnf
        return self_copy

    def add_var(self):
        """
        Add a new variable to the CNF encoding.
        Returns:
            int: The new variable index.
        """
        self.var += 1
        return self.var

    def measurement(self, basis, prepend=False):
        """
        Add a measurement clause to the CNF encoding.
        Args:
            basis (str or dict): The measurement basis. Can be "allzero", "firstzero", or a dictionary specifying the measurement. 
            - "allzero": All qubits are measured in the |0> state.
            - "firstzero": The first qubit is measured in the |0> state, and the rest are measured in the I state.
            - dict: A dictionary specifying the measurement for each qubit e.g. {0: 1, 1: 0} means qubit 0 is measured in the |1> state and qubit 1 in the |0> state.
            prepend (bool): If True, the clause is added at the beginning of the CNF encoding, otherwise at the end.
        """
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
        """
        Add a clause to project all qubits to the |0> state.
        Args:
            prepend (bool): If True, the clause is added at the beginning of the CNF encoding, otherwise at the end.
        """
        for i in range(self.n):
            self.cnf.add_clause([-self.x[i]], prepend)

    def projectZXi(self, Z_or_X, idx, prepend=False):
        """
        Add a clause to project a specific qubit to the X or Z state and the rest to I state.
        Args:
            Z_or_X (bool): If True, project to Z basis, otherwise to X.
            idx (int): The index of the qubit to project.
            prepend (bool): If True, the clause is added at the beginning of the CNF encoding, otherwise at the end.
        """
        assert(not self.computational_basis)
        if Z_or_X:
            off_var = self.x; on_var = self.z
        else:
            on_var = self.x; off_var = self.z
        for i in range(self.n):
            self.cnf.add_clause([-off_var[i]], prepend)
            if i == idx:
                self.cnf.add_clause([on_var[i]], prepend)
            else:
                self.cnf.add_clause([-on_var[i]], prepend)

    def projector(self, spec, prepend):
        """
        Add a projector clause to the CNF encoding.
        Args:
            spec (dict): A dictionary specifying the projector. The keys are qubit indices and the values are 0 or 1.
            prepend (bool): If True, the clause is added at the beginning of the CNF encoding, otherwise at the end.
        """
        x = self.x
        qubitset = list(spec.keys())
        if self.computational_basis:
            # precondition
            for i in qubitset: 
                if spec[i] == 0: 
                    self.cnf.add_clause([-x[i]], prepend)
                else:
                    self.cnf.add_clause([x[i]], prepend)
            if not prepend:
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
        """
        Encode a unitary matrix into the CNF encoding.
        Args:
            U (np.ndarray): The unitary matrix to be encoded.
        """
        assert self.cnf.unitary_encoding
        assert U.shape[0] == U.shape[1]
        assert U.shape[0] == 2 ** self.n
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
    """
    Class to manage the CNF encoding of a quantum circuit.
    """
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
        """
        Create a deep copy of the CNF object.
        Returns:
            CNF: A deep copy of the CNF object.
        """
        assert self.vars.cnf == self
        assert self.vars_init.cnf == self
        self.vars.cnf = None
        self.vars_init.cnf = None
        new = copy.deepcopy(self)
        self.vars.cnf = self
        self.vars_init.cnf = self
        new.vars.cnf = new
        new.vars_init.cnf = new

    def finalize(self):
        """
        Finalize the CNF encoding by adding the final clauses and locking the object.
        """
        self.locked = True

    def leftProjectAllZero(self):
        """
        Add a clause to project the initial state of all qubits to |0>.
        """
        self.vars_init.projectAllZero(prepend=True)

    def leftProjectZXi(self, Z_or_X, i):
        """
        Add a clause to project the initial state of a specific qubit to X or Z and the rest to I.
        Args:
            Z_or_X (bool): If True, project to Z basis, otherwise to X.
            i (int): The index of the qubit to project.
        """
        assert(not self.computational_basis)
        self.vars_init.projectZXi(Z_or_X, i, prepend=True)

    def rightProjectAllZero(self):
        """
        Add a clause to project the final state (measurement) of all qubits to |0>, and finalize the CNF encoding.
        """
        if not self.locked:
            self.finalize()
        self.vars.projectAllZero()

    def rightProjectZXi(self, Z_or_X, i):
        """
        Add a clause to project the final state of a specific qubit to X or Z and the rest to I, and finalize the CNF encoding.
        Args:
            Z_or_X (bool): If True, project to Z basis, otherwise to X.
            i (int): The index of the qubit to project.
        """
        assert(not self.computational_basis)
        if not self.locked:
            self.finalize()
        self.vars.projectZXi(Z_or_X, i, prepend=True)

    def precondition(self, spec):
        """
        Add a projector clause to the CNF encoding for the initial state.
        Args:
            spec (dict): A dictionary specifying the projector. The keys are qubit indices and the values are 0 or 1.
        """
        self.vars_init.projector(spec, prepend=True)
        # normalization
        if self.computational_basis:
            self.power_two_normalisation += self.n - len(spec)
        else:
            self.power_two_normalisation += len(spec)
    
    def postcondition(self, spec):
        """
        Add a projector clause to the CNF encoding for the final state.
        Args:
            spec (dict): A dictionary specifying the projector. The keys are qubit indices and the values are 0 or 1.
        """
        if not self.locked:
            self.finalize()
        self.vars.projector(spec, prepend=False)

    def add_identity_clauses(self, constrain_2n = False, constrain_no_Y = False):
        """
        Add clauses dictating that the initial state matches the final state.
        Args:
            constrain_2n (bool): If True, limit the initial states to the 2*n states of single X or single Z.
            constrain_no_Y (bool): If True, limit the initial state to I, X or Z (no Y). 
            # no sense using both
        """
        assert(self.vars.n == self.vars_init.n)
        assert not (constrain_2n and constrain_no_Y)
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
        """
        Add a measurement clause to the CNF encoding (for the final state).
        Args:
            basis (str or dict): The measurement basis. Can be "allzero", "firstzero", or a dictionary specifying the measurement. 
            - "allzero": All qubits are measured in the |0> state.
            - "firstzero": The first qubit is measured in the |0> state, and the rest are measured in the I state.
            - dict: A dictionary specifying the measurement for each qubit e.g. {0: 1, 1: 0} means qubit 0 is measured in the |1> state and qubit 1 in the |0> state.
        """
        self.vars.measurement(basis, False) 
        if not self.locked:
            self.finalize() 
            
    def add_var(self, syn_gate_pick = False, Name ="UnNamed", bits = None, projection_var = False):
        """
        Add a new variable to the CNF encoding.
        Args:
            syn_gate_pick (bool): If True, the variable is used for gate-selcting in synthesis.
            Name (str): The name of the gate.
            bits (list): The qubit indices for the gate.
            projection_var (bool): If True, the variable is projected out of the CNF.
        Returns:
            int: The new variable index.
        """
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
        """
        Get the variable for a specific gate and qubit index in the past layer.
        Args:
            Name (str): The name of the gate.
            bit (int or list): The qubit index for the gate.
            past (int): The number of layers to look back.
        Returns:
            int: The variable index for the gate and qubit index in the past layer.
                if the variable does not exist, return 0.5, and assume it is false.
        """
        try:
            if type(bit) is int:
                return self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer-past][Name][bit]
            if type(bit) is list:
                return self.syn_gate_picking_vars_by_layer_and_gate[self.syn_gate_layer-past][Name][bit[0]][bit[1]]
        except KeyError:
            return 0.5


    def add_clause(self, cons: list, prepend=False, comment=None):   
        """
        Add a clause to the CNF encoding.
        Args:
            cons (list): The clause to be added. Each element is an integer representing a variable.
            prepend (bool): If True, the clause is added at the beginning of the CNF encoding, otherwise at the end.
            comment (str): A comment to be added to the clause for debugging purposes (currently disabled since it causes problems for cnf solvers).
        # 0.5 is assumed to be false
        """
        if -0.5 in cons:
            # -0.5 is true, so the clause is satisfied and does not need to be added
            return
        if 0.5 in cons:
            # 0.5 is false, so the clause is a contrediction!
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
        """
        Add a weight to a variable in the CNF encoding.
        Args:
            var (int): The variable index.
            weight (float): The weight to be added.
            complex_weight (float): The complex weight to be added (optional).
            comment (str): A comment to be added to the weight for debugging purposes (currently disabled since it causes problems for cnf solvers).
        """
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
        """
        Convert a list of lists of variables to a string representation for projection.
        Args:
            VarList (list of lists of ints): The variables to be converted.
        Returns:
            str: The string representation of the variables for projection.
        """
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

    def encode_circuit(self, circuit : Circuit):
        """
        Encode a quantum circuit into the CNF encoding.
        Args:
            circuit (Circuit): The quantum circuit to be encoded.
        """
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
                elif gate == 'ry':
                    to_CNF.S2CNF(self,k)
                    to_CNF.RX2CNF(self,k, angle)
                    to_CNF.Sdg2CNF(self,k)
                elif gate == 'rxdg':
                    to_CNF.RX2CNF(self,k, -angle)
                elif gate == 'rzdg':
                    to_CNF.RZ2CNF(self,k, -angle)
                elif gate == 'rydg':
                    to_CNF.Sdg2CNF(self,k)
                    to_CNF.RX2CNF(self,k, -angle)
                    to_CNF.S2CNF(self,k)
                else:
                    raise Exception(str(gate) + " undefined."+ str(element))
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
        """
        Encode a PauliStrings composition into the CNF encoding.
        Args:
            composition_dictionary (dict): The PauliStrings composition to be encoded.
        """
        from .pauli2cnf import pauli2cnf as to_CNF
        to_CNF.Composition2CNF(self, composition_dictionary)

    def add_syn_layer(self, n=1, limit_gates=False, h_layer=False):
        """
        Add a layer of gates to the CNF encoding for synthesis.
        Args:
            n (int): The number of gates to be added.
            limit_gates (bool): If True, limit the number of gates in the layer.
            h_layer (bool): Relevent only if limit_gates. If True, only allow Hadamard layer, else allow any gate but Hadamard.
        """
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

    def get_syn_circuit(self, assignment, translate_ccx=True) -> Circuit:
        """
        Convert an assignment for the syn variable to a corresponding Circuit object.
        Args:
            assignment (list): The assignment of variables.
            translate_ccx (bool): If True, translate CCX gates to CNOT and T gates.
        Returns:
            Circuit: The corresponding Circuit object.
        """
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

    def get_syn_qasm(self, assignment) -> str:
        """
        Convert an assignment for the syn variable to a corresponding QASM string.
        Args:
            assignment (list): The assignment of variables.
        Returns:
            str: The corresponding QASM string.
        """
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
    """
    Generate all signed combinations of a list of numbers.
    Args:
        lst (list): The list of numbers to generate signed combinations for.
    Returns:
        dict: A dictionary mapping each combination to its signed version.
    """
    n = len(lst)
    result = {}
    
    for signs in product([0, 1], repeat=n):
        signed_list = [num if sign else -num for num, sign in zip(lst, signs)]
        signs = signs[::-1]
        binary_code = ''.join(map(str,signs))
        result[int(binary_code,2)] = signed_list
    return result

def check_unitary_and_qubits(U, tol=1e-12):
    """
    Check if a matrix is unitary and determine the number of qubits.
    Args:
        U (np.ndarray): The matrix to be checked.
        tol (float): The tolerance for numerical comparison.
    Returns:
        tuple: A tuple containing a boolean indicating if the matrix is unitary and the number of qubits.
    """
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


def QASM2CNF(circuit: Circuit, computational_basis = False, weighted = True, ancillas = 0, ganak = False) -> CNF:
    """
    Construct a CNF object for a given quantum circuit.
    Args:
        circuit (Circuit): The quantum circuit to be encoded.
        computational_basis (bool): If True, the variables are in the computational basis, otherwise in the Pauli basis.
        weighted (bool): If True, the CNF encoding is weighted, otherwise it is reduced to unweigted useing multiple solver calls.
        ancillas (int): The number of ancilla qubits.
        ganak (bool): If True, use Ganak encoding.
    Returns:
        CNF: The CNF object representing the quantum circuit.
    """
    cnf = CNF(circuit.n, ancillas = circuit.ancillas + ancillas, computational_basis = computational_basis, weighted = weighted, ganak = ganak)
    cnf.encode_circuit(circuit)
    return cnf 


def Composition2CNF(composition_dictionary, ancillas = 0) -> CNF:
    """
    Construct a CNF object for a given PauliStrings composition.
    Args:
        composition_dictionary (dict): The PauliStrings composition to be encoded.
        ancillas (int): The number of ancilla qubits.
    Returns:
        CNF: The CNF object representing the PauliStrings composition.
    """
    cnf = CNF(composition_dictionary["qubits"], computational_basis = False, weighted = True, ancillas=ancillas)
    cnf.encode_composition(composition_dictionary)
    return cnf