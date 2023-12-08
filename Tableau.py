class Tableau:
    def __init__(self,n,m):
        self.n = n
        self.m = m
        self.x = [0] * n
        self.z = [0] * n
        self.r = 0
        self.u = 0
        self.clause = 0
        self.var = 0

class CNF:
    def __init__(self):
        self.var = 0
        self.clause = 0
        self.cons_list = []
        self.weight_list = []
    
    def add_var(self):
        self.var += 1
        return self.var
    
    def ToString(self,s):
        str1 = ""
        l = len(s)
        for i in range(l):
            str1 += str(s[i])
            if(i != l - 1):
                str1 += " "
        str1 += "\n" 
        return str1
    
    def add_clause(self,cons):
        self.clause += 1
        constr = self.ToString(cons)       
        self.cons_list.append(constr)
    
    def add_weight(self,var,weight):
        weightstr = "c p weight " + str(var) + " " + str(weight) + " 0" + "\n"
        self.weight_list.append(weightstr)