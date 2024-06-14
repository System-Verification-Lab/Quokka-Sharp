import copy
import io
from math import pow
from sympy.logic.boolalg import *

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
        if not computational_basis:
            self.r = self.add_var()
        self.computational_basis = computational_basis

    def add_var(self):
        self.var += 1
        return self.var

    def measurement(self, basis, prepend=False):
        n = self.n
        if basis == "allzero":
            for i in range(self.n):
                self.cnf.add_clause([-self.x[i]], prepend)
            if not self.computational_basis:
                w = self.add_var()
                self.cnf.add_clause([w], True)
                self.cnf.add_weight(w, 1/pow(2,n))
        elif basis == "firstzero":
            self.cnf.add_clause([-self.x[0]], prepend)
            if not self.computational_basis:
                for i in range(1, self.n):
                    self.cnf.add_clause([-self.x[i]], prepend)
                    self.cnf.add_clause([-self.z[i]], prepend)   
                w = self.add_var()
                self.cnf.add_clause([w], True)
                self.cnf.add_weight(w, 1/2)
        else: 
            Exception("Please choose firstzero or allzero measurement")
            
    def projectAllZero(self, sign=False, prepend=False):
        for i in range(self.n):
            self.cnf.add_clause([-self.x[i]], prepend)
        if sign:
            if not self.computational_basis:
                self.cnf.add_clause([-self.r], prepend)            

    def projectZXi(self, Z_or_X, idx, sign=False, prepend=False):
        assert(not self.computational_basis)
        x = self.x; z = self.z; r = self.r
        if not Z_or_X:
            z = self.x; x = self.z
        for i in range(self.n):
            self.cnf.add_clause([-x[i]], prepend)
            if i == idx:
                self.cnf.add_clause([z[i]], prepend)
            else:
                self.cnf.add_clause([-z[i]], prepend)
        if sign:
            self.cnf.add_clause([-r], prepend)

    def projectQBi(self, idx, prepend=False):
        assert(self.computational_basis)
        for i in range(self.n):
            if i == idx:
                self.cnf.add_clause([self.x[i]], prepend)
            else:
                self.cnf.add_clause([-self.x[i]], prepend)


class CNF:
    def __init__(self, n, computational_basis=False):
        self.clause = 0
        self.n = n
        self.locked = False
        self.cons_list = []
        self.weight_list = io.StringIO()
        self.vars = Variables(self,computational_basis) # variables at timestep m (end of circuit)
        self.vars_init = copy.deepcopy(self.vars)      # variables at timestep 0
        self.vars_init.cnf = self
        self.computational_basis = computational_basis
    
    def finalize(self):
        self.locked = True
        if not self.computational_basis:
            r = self.vars.r
            self.add_weight( r, -1)
            self.add_weight(-r,  1)

    # Left projections are initial states
    def leftProjectAllZero(self):
        self.vars_init.projectAllZero(True, True)

    # Left projections are initial states
    def leftProjectZXi(self, Z_or_X, i):
        self.vars_init.projectZXi(Z_or_X, i, True, True)

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
        self.vars.projectZXi(Z_or_X, i, False, True)

    # Right projections are measurements: we only allow measurements at the end. See self.lock
    def rightProjectQBi(self, i):
        if not self.locked:
            self.finalize()
        self.vars.projectQBi(i, True)

    def check_not_identity(self):
        assert(self.vars.n == self.vars_init.n)
        for i in range(self.vars.n):
            self.add_clause([ self.vars.x[i],  self.vars_init.x[i]], True)
            self.add_clause([-self.vars.x[i], -self.vars_init.x[i]], True)
            if not self.computational_basis:
                self.add_clause([ self.vars.z[i],  self.vars_init.z[i]], True)
                self.add_clause([-self.vars.z[i], -self.vars_init.z[i]], True)
        if not self.computational_basis:
            self.add_clause([ self.vars.r,  self.vars_init.r], True)
            self.add_clause([-self.vars.r, -self.vars_init.r], True)
    
    def check_identity(self):
        assert(self.vars.n == self.vars_init.n)
        for i in range(self.vars.n):
            self.add_clause([ self.vars.x[i], -self.vars_init.x[i]], True)
            self.add_clause([-self.vars.x[i],  self.vars_init.x[i]], True)
            if not self.computational_basis:
                self.add_clause([ self.vars.z[i], -self.vars_init.z[i]], True)
                self.add_clause([-self.vars.z[i],  self.vars_init.z[i]], True)
        if not self.computational_basis:
            self.add_clause([ self.vars.r, -self.vars_init.r], True)
            self.add_clause([-self.vars.r,  self.vars_init.r], True)

    def add_measurement(self, basis):
        if not self.locked:
            self.finalize()
        self.vars.measurement(basis, False)  

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