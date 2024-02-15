import copy
import io

class Variables:
    def __init__(self, cnf):
        self.cnf = cnf
        self.n = cnf.n
        self.var = 0
        self.x = [0] * cnf.n
        self.z = [0] * cnf.n
        for i in range(cnf.n):
            self.x[i] = self.add_var()
            self.z[i] = self.add_var()
        self.r = self.add_var()

    def add_var(self):
        self.var += 1
        return self.var

    def projectAllZero(self, sign=False, prepend=False):
        for i in range(self.n):
            self.cnf.add_clause([-self.x[i]], prepend)
        if sign:
            self.cnf.add_clause([-self.r], prepend)            

    def projectZXi(self, Z_or_X, idx, sign=False, prepend=False):
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

class CNF:
    def __init__(self, n):
        self.clause = 0
        self.n = n
        self.locked = False
        self.cons_list = []
        self.weight_list = io.StringIO()
        self.vars = Variables(self)                 # variables at timestep m (end of circuit)
        self.vars_init = copy.deepcopy(self.vars)   # variables at timestep 0
        self.vars_init.cnf = self
    def finalize(self):
        self.locked = True
        r = self.vars.r
        self.add_weight( r, -1)
        self.add_weight(-r,  1)

    # Left projections are initial states
    def leftProjectAllZero(self):
        self.vars_init.projectAllZero(True, True)

    # Left projections are initial states
    def leftProjectZXi(self, Z_or_X, i):
        self.vars_init.projectZXi(Z_or_X, i, True, True)

    # Right projections are measurements: we only allow measurements at the end. See self.lock
    def rightProjectAllZero(self):
        if not self.locked:
            self.finalize()
        self.vars.projectAllZero()

    # Right projections are measurements: we only allow measurements at the end. See self.lock
    def rightProjectZXi(self, Z_or_X, i):
        if not self.locked:
            self.finalize()
        self.vars.projectZXi(Z_or_X, i)

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

    def add_weight(self, var, weight):
        self.weight_list.write("c p weight ")
        self.weight_list.write(str(var))
        self.weight_list.write(" ")
        self.weight_list.write(str(weight))
        self.weight_list.write(" 0\n")

    def write_to_file(self, cnf_file):
        with open(cnf_file, 'w') as the_file:
            the_file.writelines("p cnf " + str(self.vars.var)+" "+str(self.clause)+"\n")
            the_file.write(self.weight_list.getvalue())
            the_file.write(''.join(self.cons_list))