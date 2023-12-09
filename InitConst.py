# def init(tab,cnf):
#     n = tab.n; x = tab.x; z = tab.z; r = tab.r
#     x[0][0] = cnf.add_var()
#     z[0][0] = cnf.add_var()
#     r[0] = cnf.add_var()    
#     cnf.add_clause([(-1) * x[0][0], z[0][0],0])
#     cnf.add_clause([x[0][0], (-1) * z[0][0],0])
#     cnf.add_clause([(-1) * r[0],0])

def init(tab, cnf):
    x = tab.x; z = tab.z
    for i in range(tab.n):
        x[i] = cnf.add_var()
        z[i] = cnf.add_var()       
        cnf.add_clause([-x[i],0])
    tab.r = cnf.add_var()
    cnf.add_clause([-tab.r,0])
    cnf.add_weight( tab.r, -1)
    cnf.add_weight(-tab.r, 1)

# def init(tab,cnf):
#     n = tab.n; x = tab.x; z = tab.z; d = tab.d; r = tab.r
#     constraint1 = []
#     for i in range(n):
#         cnf.add_clause([(-1)*x[0][i],0])
#         cnf.add_clause([(-1)*z[0][i],d[0][i],0])
#         cnf.add_clause([z[0][i],(-1)*d[0][i],0])
#         constraint1.append(z[0][i])
#     constraint1.append(0)
#     for i in range(n):
#         for j in range(i+1,n):
#             cnf.add_clause([(-1)*z[0][i],(-1)*z[0][j],0])
#     cnf.add_clause([(-1)*r[0],0])
#     cnf.add_clause(constraint1)