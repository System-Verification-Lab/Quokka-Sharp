import io

class Tableau:
    def __init__(self,n):
        self.n = n
        self.x = [0] * n
        self.z = [0] * n
        self.r = 0
        # self.clause = 0
        # self.var = 0

class CNF:
    def __init__(self):
        self.var = 0
        self.clause = 0
        # self.cons_list = io.StringIO()
        self.cons_list = []
        self.weight_list = io.StringIO()

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