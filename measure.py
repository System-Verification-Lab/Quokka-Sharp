def M2CNF(tab, cnf, k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r

    cnf.add_weight( r, -1)
    cnf.add_weight(-r,  1)
    for i in range(n):
        cnf.add_clause([-x[i]])
        if i == k:
            cnf.add_clause([z[i]])
        else:
            cnf.add_clause([-z[i]])