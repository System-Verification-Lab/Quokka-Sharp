def H2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r
    for i in range(n):
        r[t+1][i] = cnf.add_var()
        for j in range(n):
            x[t+1][i][j] = cnf.add_var()
            z[t+1][i][j] = cnf.add_var()            
            if(j == k):
                cnf.add_clause([(-1)*r[t][i], (-1)*r[t+1][i], (-1)*x[t][i][j], (-1)*z[t][i][j],0])
                cnf.add_clause([(-1)*r[t][i], r[t+1][i], x[t][i][j],0])
                cnf.add_clause([(-1)*r[t][i], r[t+1][i], z[t][i][j],0])
                
                cnf.add_clause([r[t][i], (-1)*r[t+1][i], x[t][i][j],0])
                cnf.add_clause([r[t][i], (-1)*r[t+1][i], z[t][i][j],0])
                cnf.add_clause([r[t][i], r[t+1][i], (-1) * x[t][i][j], (-1)*z[t][i][j], 0])
                
                cnf.add_clause([(-1)*x[t][i][j], z[t+1][i][j],0])
                cnf.add_clause([x[t][i][j], (-1)*z[t+1][i][j],0])
                cnf.add_clause([(-1)*x[t+1][i][j], z[t][i][j],0])
                cnf.add_clause([x[t+1][i][j], (-1)*z[t][i][j],0])
            else:
                cnf.add_clause([(-1)*x[t+1][i][j], x[t][i][j],0])
                cnf.add_clause([x[t+1][i][j], (-1)*x[t][i][j],0]) 
                cnf.add_clause([(-1)*z[t+1][i][j], z[t][i][j],0])
                cnf.add_clause([z[t+1][i][j], (-1)*z[t][i][j],0])
        

def S2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r
    for i in range(n):
        r[t+1][i] = cnf.add_var()
        cnf.add_clause([(-1)*r[t][i], (-1)*r[t+1][i], (-1)*x[t][i][k], (-1)*z[t][i][k],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], x[t][i][k],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], z[t][i][k],0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], x[t][i][k],0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], z[t][i][k],0])
        cnf.add_clause([r[t][i], r[t+1][i], (-1) * x[t][i][k], (-1)*z[t][i][k], 0])

    for i in range(n):
        for j in range(n):
            x[t+1][i][j] = cnf.add_var()
            z[t+1][i][j] = cnf.add_var()
            cnf.add_clause([(-1)*x[t+1][i][j], x[t][i][j],0])
            cnf.add_clause([x[t+1][i][j], (-1)*x[t][i][j],0])   
            if(j == k): 
                cnf.add_clause([(-1)*x[t][i][j], (-1)*z[t][i][j], (-1)*z[t+1][i][j],0])
                cnf.add_clause([x[t][i][j], z[t][i][j], (-1)*z[t+1][i][j],0])
                cnf.add_clause([(-1)*x[t][i][j], z[t][i][j], z[t+1][i][j],0])
                cnf.add_clause([x[t][i][j], (-1)*z[t][i][j], z[t+1][i][j],0])
            else:
                cnf.add_clause([(-1)*z[t+1][i][j], z[t][i][j],0])
                cnf.add_clause([z[t+1][i][j], (-1)*z[t][i][j],0])

def T2CNF(tab,cnf,t,j):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r; u = tab.u
    
    for i in range(n):
        r[t+1][i] = cnf.add_var()
        for l in range(n):
            x[t+1][i][l] = cnf.add_var()
            z[t+1][i][l] = cnf.add_var()
    
    for i in range(n):
        cnf.add_clause([(-1)*r[t][i], (-1)*r[t+1][i], (-1)*x[t][i][j], (-1)*z[t][i][j], z[t+1][i][j],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], x[t][i][j],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], z[t][i][j],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], (-1)*z[t+1][i][j],0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], x[t][i][j],0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], z[t][i][j],0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], (-1)*z[t][i][j],0])
        cnf.add_clause([r[t][i], r[t+1][i], (-1)*x[t][i][j], (-1)*z[t][i][j], z[t+1][i][j], 0])

    for i in range(n):
        for l in range(n):
            if(l == j):
                cnf.add_clause([x[t][i][l],(-1)*z[t+1][i][l],z[t][i][l],0])
                cnf.add_clause([x[t][i][l],z[t+1][i][l],(-1)*z[t][i][l],0])
                u[t][i] = cnf.add_var()
                cnf.add_clause([(-1)*u[t][i], x[t][i][l],0])
                cnf.add_clause([u[t][i], (-1)*x[t][i][l],0])
            else:
                cnf.add_clause([(-1)*z[t+1][i][l], z[t][i][l],0])
                cnf.add_clause([z[t+1][i][l], (-1)*z[t][i][l],0])
            cnf.add_clause([(-1)*x[t+1][i][l], x[t][i][l],0])
            cnf.add_clause([x[t+1][i][l], (-1)*x[t][i][l],0])
    for ele in u:
        for item in ele:
            if item != 0:
                cnf.add_weight(item,0.71)
                cnf.add_weight((-1)*item,1)

def CNOT2CNF(tab,cnf,t,j,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r
    for i in range(n):
        r[t+1][i] = cnf.add_var()
        
        cnf.add_clause([(-1)*r[t][i], (-1)*r[t+1][i], (-1)*x[t][i][j], (-1)*x[t][i][k], z[t][i][j], (-1) * z[t][i][k],0])
        cnf.add_clause([(-1)*r[t][i], (-1)*r[t+1][i], (-1)*x[t][i][j], x[t][i][k], (-1) * z[t][i][j], (-1) * z[t][i][k],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], x[t][i][j],0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], (-1) * x[t][i][k], (-1) * z[t][i][j], 0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], x[t][i][k], z[t][i][j], 0])
        cnf.add_clause([(-1)*r[t][i], r[t+1][i], z[t][i][k], 0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], x[t][i][j], 0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], (-1) * x[t][i][k], (-1) * z[t][i][j], 0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], x[t][i][k], z[t][i][j], 0])
        cnf.add_clause([r[t][i], (-1)*r[t+1][i], z[t][i][k], 0])
        cnf.add_clause([r[t][i], r[t+1][i], (-1)*x[t][i][j], (-1)*x[t][i][k], z[t][i][j], (-1) * z[t][i][k],0])
        cnf.add_clause([r[t][i], r[t+1][i], (-1)*x[t][i][j], x[t][i][k], (-1) * z[t][i][j], (-1) * z[t][i][k],0])
        
        x[t+1][i][k] = cnf.add_var()
        z[t+1][i][j] = cnf.add_var()
        
        cnf.add_clause([(-1) * x[t][i][j], (-1) * x[t][i][k], (-1) * x[t+1][i][k], 0])
        cnf.add_clause([(-1) * x[t][i][j], x[t][i][k], x[t+1][i][k], 0])
        cnf.add_clause([x[t][i][j], (-1) * x[t][i][k], x[t+1][i][k], 0])
        cnf.add_clause([x[t][i][j], x[t][i][k], (-1) * x[t+1][i][k], 0])
        
        cnf.add_clause([(-1) * z[t][i][j], (-1) * z[t][i][k], (-1) * z[t+1][i][j], 0])
        cnf.add_clause([(-1) * z[t][i][j], z[t][i][k], z[t+1][i][j], 0])
        cnf.add_clause([z[t][i][j], (-1) * z[t][i][k], z[t+1][i][j], 0])
        cnf.add_clause([z[t][i][j], z[t][i][k], (-1) * z[t+1][i][j], 0])
        for l in range(n):
            if (j != k):
                x[t+1][i][l] = cnf.add_var()
                cnf.add_clause([(-1)*x[t][i][l], x[t+1][i][l],0])
                cnf.add_clause([x[t][i][l], (-1)*x[t+1][i][l],0])
            if (l != j):
                z[t+1][i][l] = cnf.add_var()
                cnf.add_clause([(-1)*z[t][i][l], z[t+1][i][l],0])
                cnf.add_clause([z[t][i][l], (-1)*z[t+1][i][l],0])