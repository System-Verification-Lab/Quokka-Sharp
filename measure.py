def M2CNF(tab,cnf):
    n = tab.n; m = tab.m - 1; x = tab.x; z = tab.z; r = tab.r
    # cnf.add_clause([r[m], 0])
    cnf.add_weight(r[m],-1)
    cnf.add_weight((-1) * r[m],1)
    for i in range(n):
        cnf.add_clause([(-1) * x[m][i], 0])
        if i == 0:
            cnf.add_clause([z[m][i], 0])
        else:
            cnf.add_clause([(-1) * z[m][i], 0])