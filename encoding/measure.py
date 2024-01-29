def M2CNF(tab, cnf, multi_or_single):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r

    cnf.add_weight( r, -1)
    cnf.add_weight(-r,  1)
    if multi_or_single == "multi":
        for i in range(n):
            cnf.add_clause([-x[i]])
            # if i == 0:
            #     cnf.add_clause([z[i]])
            # else:
            #     cnf.add_clause([-z[i]])
    else:
        for i in range(n):
            cnf.add_clause([-x[i]])
            if i == 0:
                cnf.add_clause([z[i]])
            else:
                cnf.add_clause([-z[i]])