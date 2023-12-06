def Xor(l, tab, cnf, istart, iend, jstart,jend,flag):
    cons = []
    n = tab.n; m = tab.m; c = tab.c
    if flag == 4:
        L  = [[0] * 1 for _ in range(n)]
        B  = [[0] * 1 for _ in range(n)]
        F1 = [[0] * 1 for _ in range(n-1)]
        F2 = [[0] * 1 for _ in range(n-1)]
        C1 = [[0] * 1 for _ in range(n-1)]
        C2 = [[0] * 1 for _ in range(n-1)]
        C3 = [[0] * 1 for _ in range(n-1)]
        C4 = [0]
        C5 = [0]
    else: 
        L  = [[0] * n for _ in range(n)]
        B  = [[0] * n for _ in range(n)]
        F1 = [[0] * n for _ in range(n-1)]
        F2 = [[0] * n for _ in range(n-1)]
        C1 = [[0] * n for _ in range(n-1)]
        C2 = [[0] * n for _ in range(n-1)]
        C3 = [[0] * n for _ in range(n-1)]
        C4 = [0] * n        
        C5 = [0] * n 
    for i in range(istart,iend):
        for j in range(jstart,jend):
            L[i][j] = cnf.add_var()
            cons.append([(-1) * L[i][j], (-1) * l[m-1][i][j],(-1) * c[i],0])
            cons.append([L[i][j], l[m-1][i][j],0])
            cons.append([L[i][j], c[i],0])    
    for j in range(jstart,jend):
        for i in range(istart, iend):
            B[i][j] = cnf.add_var()
    for j in range(jstart,jend):
        for i in range(istart, iend-1):
            F1[i][j] = cnf.add_var()
            F2[i][j] = cnf.add_var()
            C1[i][j] = cnf.add_var()
            C2[i][j] = cnf.add_var()
            C3[i][j] = cnf.add_var()
        C4[j] = cnf.add_var()
        C5[j] = cnf.add_var()

    if istart < iend:
        for j in range(jstart,jend):
            cons.append([(-1)*C4[j],(-1) * B[istart][j],L[istart][j],0])
            cons.append([C4[j],B[i][j],0])
            cons.append([C4[j],(-1) *L[i][j],0])
        
            cons.append([(-1)*C5[j],B[istart][j],(-1) * L[istart][j],0])
            cons.append([C5[j],(-1) * B[i][j],0])
            cons.append([C5[j], L[i][j],0])
    for j in range(jstart,jend):
        for i in range(istart, iend-1):
            cons.append([(-1)*F1[i][j], (-1)*B[i][j], (-1) * L[i+1][j],0])
            cons.append([F1[i][j], L[i+1][j],0])
            cons.append([F1[i][j], B[i][j],0])
            
            cons.append([(-1)*F2[i][j], B[i][j], L[i+1][j],0])
            cons.append([F2[i][j], (-1)*L[i+1][j],0])
            cons.append([F2[i][j], (-1)*B[i][j],0])

    for j in range(jstart,jend):
        for i in range(istart, iend-1):
            cons.append([(-1)*C1[i][j],(-1)*B[i+1][j],F1[i][j],0])
            cons.append([C1[i][j],B[i+1][j],0])
            cons.append([C1[i][j],(-1) * F1[i][j],0])
            
            cons.append([(-1)*C2[i][j],(-1)*B[i+1][j],F2[i][j],0])
            cons.append([C2[i][j],B[i+1][j],0])
            cons.append([C2[i][j],(-1) * F2[i][j],0])
            
            cons.append([(-1)*C3[i][j], B[i+1][j], (-1)*F1[i][j],(-1)*F2[i][j],0])
            cons.append([C3[i][j],(-1)*B[i+1][j],0])
            cons.append([C3[i][j],F1[i][j],0])
            cons.append([C3[i][j],F2[i][j],0])

    Clist = []
    for item in C1 + C2 + C3:
        for var in item:
            if var != 0:
                Clist.append(var)
    for var in C4 + C5:
        if var != 0:    
            Clist.append(var)
    for var in Clist:
        cons.append([var,0])
    if(flag ==1):
        if istart < iend:
            for j in range(jstart,jend):
                cons.append([B[iend-1][j],0])
    if(flag == 2):
        if n >= 2:
            L[n-1][0] = cnf.add_var()
            cons.append([(-1) * L[n-1][0], (-1) * l[m-1][n-1][0],(-1) * c[n-1],0])
            cons.append([L[n-1][0], l[m-1][n-1][0],0])
            cons.append([L[n-1][0], c[n-1],0])
                
            cons.append([(-1) * L[n-1][0], B[n-2][0],0])
            cons.append([L[n-1][0],(-1) * B[n-2][0],0])
        else:
            L[0][0] = cnf.add_var()
            cons.append([(-1) * L[0][0], (-1) * l[m-1][0][0],(-1) * c[0],0])
            cons.append([L[0][0], l[m-1][0][0],0])
            cons.append([L[0][0], c[0],0])
            
    if(flag == 3):
        if istart < iend:
            for j in range(jstart,jend):
                cons.append([B[iend-1][j],0])

    if(flag == 4):
        s = cnf.add_var()
        if istart < iend:
            for j in range(jstart,jend):
                # s \/ Y4
                cons.append([s,B[iend-1][j],0])
                # not s \/ not Y4
                cons.append([(-1)*s,(-1)*B[iend-1][j],0])
        cnf.add_weight(s,0)
        cnf.add_weight((-1)*s,1)
        
    return(cons)

def M2CNF(tab,cnf):
    constraint = []
    n = tab.n; c = tab.c
    for i in range(n):
        c[i] = cnf.add_var()
        # c_i should not be 0 at the same time
        constraint.append(c[i])
    constraint.append(0)
    cnf.add_clause(constraint)
    
    P1 = Xor(tab.x,tab,cnf,0,n,0,n,1)
    P2 = Xor(tab.z,tab,cnf,0,n-1,0,1,2)
    P3 = Xor(tab.z,tab,cnf,0,n,1,n,3)
    r = []
    for item in tab.r:
        rr = []
        for ele in item:
            rr.append([ele])
        r.append(rr)
    P4 = Xor(r,tab,cnf,0,n,0,1,4)
    
    for item in P1+P2+P3+P4:
        cnf.add_clause(item)