import io

class Tableau:
    def __init__(self,n,m):
        self.n = n
        self.m = m
        self.x = [[0] * n for _ in range(m+1)]
        self.z = [[0] * n for _ in range(m+1)]
        self.r = [0] * (m+1)
        self.u = [0] * (m+1)
        self.clause = 0
        self.var = 0

class CNF:
    def __init__(self):
        self.var = 0
        self.clause = 0
        self.cons_list = io.StringIO()
        self.weight_list = io.StringIO()
    
    def add_var(self):
        self.var += 1
        return self.var
    
    def add_clause(self,cons):
        self.clause += 1
        l = len(cons)
        for i in range(l):
            self.cons_list.write(str(cons[i]))
            if(i != l - 1):
                self.cons_list.write(" ")
        self.cons_list.write("\n")
    
    def add_weight(self,var,weight):
        self.weight_list.write("c p weight " + str(var) + " " + str(weight) + " 0" + "\n")