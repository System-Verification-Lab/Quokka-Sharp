def M2CNF(tab,cnf):
    n = tab.n; m = tab.m - 1; x = tab.x; z = tab.z; r = tab.r
    # cnf.add_clause([r[m], 0])
    cnf.add_weight(r,-1)
    cnf.add_weight(-r,1)
    for i in range(n):
        cnf.add_clause([-x[i], 0])
        if i == 0:
            cnf.add_clause([z[i], 0])
        else:
            cnf.add_clause([-z[i], 0])