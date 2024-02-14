import copy
import io

class Tableau:
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

class CNF:
    def __init__(self, n):
        self.var = 0
        self.clause = 0
        self.n = n
        # self.cons_list = io.StringIO()
        self.cons_list = []
        self.weight_list = io.StringIO()
        self.tab = Tableau(n)                       # variables at timnestep m (end of circuit)
        self.tab.init(self)
        self.tab_init = copy.deepcopy(self.tab)     # variables at timnestep 0

    def leftProjectAllZero(self):
        x = self.tab_init.x; z = self.tab_init.z
        for i in range(self.tab_init.n):
            self.add_clause([-x[i]])
        self.add_clause([-self.tab_init.r])

    def rightProjectAllZero(self):
        x = self.tab.x; z = self.tab.z
        for i in range(self.tab.n):
            self.add_clause([-x[i]])
        self.add_clause([-self.tab.r])

    def add_var(self):
        self.var += 1
        return self.var

    def add_clause(self, cons):
        self.clause += 1
        constr = ''
        for i in range(len(cons)):
            constr += str(cons[i]) + " "
            # self.cons_list.write(str(cons[i]))
            # self.cons_list.write(" ")       
        # self.cons_list.write("0\n")
        constr = constr + "0\n"
        self.cons_list.append(constr)

    def insert_clause(self, cons):
        self.clause += 1
        constr = ''
        for i in range(len(cons)):
            constr += str(cons[i]) + " "
        constr = constr + "0\n"
        self.cons_list.insert(0, constr)       

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