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
        self.cons_list = io.StringIO()
        self.weight_list = io.StringIO()
    
    def add_var(self):
        self.var += 1
        return self.var
    
    def add_clause(self, cons):
        self.clause += 1
        for i in range(len(cons)):
            self.cons_list.write(str(cons[i]))
            self.cons_list.write(" ")
        self.cons_list.write("0\n")
    
    def add_weight(self, var, weight):
        self.weight_list.write("c p weight ")
        self.weight_list.write(str(var))
        self.weight_list.write(" ")
        self.weight_list.write(str(weight))
        self.weight_list.write(" 0\n")