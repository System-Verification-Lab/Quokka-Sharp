def H2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r
    r[t+1] = cnf.add_var()
    # for l in range(n):
    #     x[t+1][l] = cnf.add_var()
    #     z[t+1][l] = cnf.add_var()
    for j in range(n):
        if(j == k):        
            cnf.add_clause([(-1)*r[t], (-1)*r[t+1], (-1)*x[t][j], (-1)*z[t][j],0])
            cnf.add_clause([(-1)*r[t], r[t+1], x[t][j],0])
            cnf.add_clause([(-1)*r[t], r[t+1], z[t][j],0])
            cnf.add_clause([r[t], (-1)*r[t+1], x[t][j],0])
            cnf.add_clause([r[t], (-1)*r[t+1], z[t][j],0])
            cnf.add_clause([r[t], r[t+1], (-1) * x[t][j], (-1)*z[t][j], 0])
            
            # cnf.add_weight(r[t+1], -1)
            # cnf.add_weight((-1) * r[t+1], 1)
            
            z[t+1][j] = x[t][j]
            x[t+1][j] = z[t][j]
            # cnf.add_clause([(-1)*x[t][j], z[t+1][j],0])
            # cnf.add_clause([x[t][j], (-1)*z[t+1][j],0])
            # cnf.add_clause([(-1)*x[t+1][j], z[t][j],0])
            # cnf.add_clause([x[t+1][j], (-1)*z[t][j],0])
        else:
            x[t+1][j] = x[t][j]
            z[t+1][j] = z[t][j]
            # cnf.add_clause([(-1)*x[t+1][j], x[t][j],0])
            # cnf.add_clause([x[t+1][j], (-1)*x[t][j],0])
            
            # cnf.add_clause([(-1)*z[t+1][j], z[t][j],0])
            # cnf.add_clause([z[t+1][j], (-1)*z[t][j],0])

def S2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r
    r[t+1] = cnf.add_var()
    cnf.add_clause([(-1)*r[t], (-1)*r[t+1], (-1)*x[t][k], (-1)*z[t][k],0])
    cnf.add_clause([(-1)*r[t], r[t+1], x[t][k],0])
    cnf.add_clause([(-1)*r[t], r[t+1], z[t][k],0])
    cnf.add_clause([r[t], (-1)*r[t+1], x[t][k],0])
    cnf.add_clause([r[t], (-1)*r[t+1], z[t][k],0])
    cnf.add_clause([r[t], r[t+1], (-1) * x[t][k], (-1)*z[t][k], 0])

    # cnf.add_weight(r[t+1], -1)
    # cnf.add_weight((-1) * r[t+1], 1)

    for j in range(n):
        if(j == k):
            z[t+1][j] = cnf.add_var() 
            cnf.add_clause([(-1)*x[t][j], (-1)*z[t][j], (-1)*z[t+1][j],0])
            cnf.add_clause([x[t][j], z[t][j], (-1)*z[t+1][j],0])
            cnf.add_clause([(-1)*x[t][j], z[t][j], z[t+1][j],0])
            cnf.add_clause([x[t][j], (-1)*z[t][j], z[t+1][j],0])
        
        else:
            z[t+1][j] = z[t][j]
            # cnf.add_clause([(-1)*z[t+1][j], z[t][j],0])
            # cnf.add_clause([z[t+1][j], (-1)*z[t][j],0])
        
        x[t+1][j] = x[t][j]
        # cnf.add_clause([(-1)*x[t+1][j], x[t][j],0])
        # cnf.add_clause([x[t+1][j], (-1)*x[t][j],0])

def T2CNF(tab,cnf,t,j):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r; u = tab.u
    
    r[t+1] = cnf.add_var()
    z[t+1][j] = cnf.add_var()
    cnf.add_clause([(-1)*r[t], (-1)*r[t+1], (-1)*x[t][j], (-1)*z[t][j], z[t+1][j],0])
    cnf.add_clause([(-1)*r[t], r[t+1], x[t][j],0])
    cnf.add_clause([(-1)*r[t], r[t+1], z[t][j],0])
    cnf.add_clause([(-1)*r[t], r[t+1], (-1)*z[t+1][j],0])
    cnf.add_clause([r[t], (-1)*r[t+1], x[t][j],0])
    cnf.add_clause([r[t], (-1)*r[t+1], z[t][j],0])
    cnf.add_clause([r[t], (-1)*r[t+1], (-1)*z[t+1][j],0])
    cnf.add_clause([r[t], r[t+1], (-1)*x[t][j], (-1)*z[t][j], z[t+1][j], 0])

    # cnf.add_weight(r[t+1], -1)
    # cnf.add_weight((-1) * r[t+1], 1)

    for l in range(n):
        if(l == j):
            cnf.add_clause([x[t][l],(-1)*z[t+1][l],z[t][l],0])
            cnf.add_clause([x[t][l],z[t+1][l],(-1)*z[t][l],0])
            u[t] = x[t][l]
            u[t] = cnf.add_var()
            cnf.add_clause([(-1)*u[t], x[t][l],0])
            cnf.add_clause([u[t], (-1)*x[t][l],0])
            cnf.add_weight(u[t], 0.707106781186548)
            # 0.7071067
            cnf.add_weight((-1) * u[t], 1)
        else:
            z[t+1][l] = z[t][l]
            # cnf.add_clause([(-1)*z[t+1][l], z[t][l],0])
            # cnf.add_clause([z[t+1][l], (-1)*z[t][l],0])
        x[t+1][l] = x[t][l]
        # cnf.add_clause([(-1)*x[t+1][l], x[t][l],0])
        # cnf.add_clause([x[t+1][l], (-1)*x[t][l],0])

def CNOT2CNF(tab,cnf,t,j,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r
    r[t+1] = cnf.add_var()
    
    cnf.add_clause([(-1)*r[t] , (-1)*r[t+1], (-1)*x[t][j], (-1)*x[t][k], z[t][j], (-1) * z[t][k],0])
    cnf.add_clause([(-1)*r[t], (-1)*r[t+1], (-1)*x[t][j], x[t][k], (-1) * z[t][j], (-1) * z[t][k],0])
    cnf.add_clause([(-1)*r[t], r[t+1], x[t][j],0])
    cnf.add_clause([(-1)*r[t], r[t+1], (-1) * x[t][k], (-1) * z[t][j], 0])
    cnf.add_clause([(-1)*r[t], r[t+1], x[t][k], z[t][j], 0])
    cnf.add_clause([(-1)*r[t], r[t+1], z[t][k], 0])
    cnf.add_clause([r[t], (-1)*r[t+1], x[t][j], 0])
    cnf.add_clause([r[t], (-1)*r[t+1], (-1) * x[t][k], (-1) * z[t][j], 0])
    cnf.add_clause([r[t], (-1)*r[t+1], x[t][k], z[t][j], 0])
    cnf.add_clause([r[t], (-1)*r[t+1], z[t][k], 0])
    cnf.add_clause([r[t], r[t+1], (-1)*x[t][j], (-1)*x[t][k], z[t][j], (-1) * z[t][k],0])
    cnf.add_clause([r[t], r[t+1], (-1)*x[t][j], x[t][k], (-1) * z[t][j], (-1) * z[t][k],0])

    # cnf.add_weight(r[t+1], -1)
    # cnf.add_weight((-1) * r[t+1], 1)
       
    x[t+1][k] = cnf.add_var()
    z[t+1][j] = cnf.add_var()
    
    cnf.add_clause([(-1) * x[t][j], (-1) * x[t][k], (-1) * x[t+1][k], 0])
    cnf.add_clause([(-1) * x[t][j], x[t][k], x[t+1][k], 0])
    cnf.add_clause([x[t][j], (-1) * x[t][k], x[t+1][k], 0])
    cnf.add_clause([x[t][j], x[t][k], (-1) * x[t+1][k], 0])
    
    cnf.add_clause([(-1) * z[t][j], (-1) * z[t][k], (-1) * z[t+1][j], 0])
    cnf.add_clause([(-1) * z[t][j], z[t][k], z[t+1][j], 0])
    cnf.add_clause([z[t][j], (-1) * z[t][k], z[t+1][j], 0])
    cnf.add_clause([z[t][j], z[t][k], (-1) * z[t+1][j], 0])

    for l in range(n):
        if (l != k):
            x[t+1][l] = x[t][l]
            # cnf.add_clause([(-1)*x[t][l], x[t+1][l],0])
            # cnf.add_clause([x[t][l], (-1)*x[t+1][l],0])
        if (l != j):
            z[t+1][l] = z[t][l]
            # cnf.add_clause([(-1)*z[t][l], z[t+1][l],0])
            # cnf.add_clause([z[t][l], (-1)*z[t+1][l],0])
