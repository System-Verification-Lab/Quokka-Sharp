import copy
import io

class Variables:
    def __init__(self,n):
        self.n = n
        self.x = [0] * n
        self.z = [0] * n
        self.r = 0
        # self.clause = 0
        # self.var = 0

    def init(self, cnf):
        x = self.x; z = self.z
        for i in range(self.n):
            x[i] = cnf.add_var()
            z[i] = cnf.add_var()
        self.r = cnf.add_var()
        self.cnf = cnf

    def projectAllZero(self, prepend=False):
        for i in range(self.n):
            self.cnf.add_clause([-self.x[i]], prepend)
        self.cnf.add_clause([-self.r], prepend)

    def projectZXi(self, Z_or_X, idx, prepend=False):
        x = self.x; z = self.z
        if not Z_or_X:
            z = self.x; x = self.z
        for i in range(self.n):
            self.cnf.add_clause([-x[i]], prepend)
            if i == idx:
                self.cnf.add_clause([z[i]], prepend)
            else:
                self.cnf.add_clause([-z[i]], prepend)

class CNF:
    def __init__(self, n):
        self.var = 0
        self.clause = 0
        self.n = n
        # self.cons_list = io.StringIO()
        self.cons_list = []
        self.weight_list = io.StringIO()
        self.vars = Variables(n)                    # variables at timestep m (end of circuit)
        self.vars.init(self)
        self.vars_init = copy.deepcopy(self.vars)   # variables at timestep 0

    def finalize(self):
        r = self.vars.r
        self.add_weight( r, -1)
        self.add_weight(-r,  1)

    def leftProjectAllZero(self):
        self.vars_init.projectAllZero(True)

    def leftProjectZXi(self, Z_or_X, i):
        self.vars_init.projectZXi(Z_or_X, i, True)

    def rightProjectAllZero(self):
        self.vars.projectAllZero()

    def rightProjectZXi(self, Z_or_X, i):
        self.vars.projectZXi(Z_or_X, i)

    def add_var(self):
        self.var += 1
        return self.var

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
            the_file.writelines("p cnf " + str(self.var)+" "+str(self.clause)+"\n")
            the_file.write(self.weight_list.getvalue())
            the_file.write("0\n".join(self.cons_list))