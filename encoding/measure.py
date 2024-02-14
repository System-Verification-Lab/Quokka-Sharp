def M2CNF(cnf, multi_or_single):
    n = cnf.n; x = cnf.tab.x; z = cnf.tab.z; r = cnf.tab.r

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