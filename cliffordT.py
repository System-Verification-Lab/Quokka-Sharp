def H2CNF(tab,cnf,t,k):
    x = tab.x; z = tab.z

    rp = cnf.add_var()
    cnf.add_clause([-tab.r, -rp, -x[k], -z[k],0])
    cnf.add_clause([-tab.r, rp, x[k],0])
    cnf.add_clause([-tab.r, rp, z[k],0])
    cnf.add_clause([tab.r, -rp, x[k],0])
    cnf.add_clause([tab.r, -rp, z[k],0])
    cnf.add_clause([tab.r, rp, -x[k], -z[k], 0])
    tab.r = rp
    x[k], z[k] = z[k], x[k] # swap
            

def S2CNF(tab,cnf,t,k):
    x = tab.x; z = tab.z

    rp = cnf.add_var()
    cnf.add_clause([-tab.r, -rp, -x[k], -z[k],0])
    cnf.add_clause([-tab.r, rp, x[k],0])
    cnf.add_clause([-tab.r, rp, z[k],0])
    cnf.add_clause([tab.r, -rp, x[k],0])
    cnf.add_clause([tab.r, -rp, z[k],0])
    cnf.add_clause([tab.r, rp, -x[k], -z[k], 0])
    tab.r = rp
    # cnf.add_weight(rp, -1)
    # cnf.add_weight(-rp, 1)

    zp = cnf.add_var() 
    cnf.add_clause([-x[k], -z[k], -zp,0])
    cnf.add_clause([x[k], z[k], -zp,0])
    cnf.add_clause([-x[k], z[k], zp,0])
    cnf.add_clause([x[k], -z[k], zp,0])
    z[k] = zp


def T2CNF(tab,cnf,t,k):
    x = tab.x; z = tab.z
    
    zp = cnf.add_var()

    rp = cnf.add_var()
    cnf.add_clause([-tab.r, -rp, -x[k], -z[k], zp,0])
    cnf.add_clause([-tab.r, rp, x[k],0])
    cnf.add_clause([-tab.r, rp, z[k],0])
    cnf.add_clause([-tab.r, rp, -zp,0])
    cnf.add_clause([tab.r, -rp, x[k],0])
    cnf.add_clause([tab.r, -rp, z[k],0])
    cnf.add_clause([tab.r, -rp, -zp,0])
    cnf.add_clause([tab.r, rp, -x[k], -z[k], zp, 0])
    tab.r = rp

    cnf.add_clause([x[k],-zp,z[k],0])
    cnf.add_clause([x[k],zp,-z[k],0])
    # u = x[k]                               # this was a useless assignment?
    u = cnf.add_var()
    cnf.add_clause([-u, x[k],0])            # TODO: note that we can actually eliminate u and assign a weight to x[k] instead...
    cnf.add_clause([u, -x[k],0])
    cnf.add_weight(u, 0.707106781186548)    # TODO: is this enough significance?
                                            # TODO: Perhaps sanity check robustness of WMC by varying significance..
    # 0.7071067
    cnf.add_weight(-u, 1)

    z[k] = zp


def CNOT2CNF(tab,cnf,t,j,k):
    x = tab.x; z = tab.z

    rp = cnf.add_var()
    cnf.add_clause([-tab.r , -rp, -x[j], -x[k], z[j], -z[k],0])
    cnf.add_clause([-tab.r, -rp, -x[j], x[k], -z[j], -z[k],0])
    cnf.add_clause([-tab.r, rp, x[j],0])
    cnf.add_clause([-tab.r, rp, -x[k], -z[j], 0])
    cnf.add_clause([-tab.r, rp, x[k], z[j], 0])
    cnf.add_clause([-tab.r, rp, z[k], 0])
    cnf.add_clause([tab.r, -rp, x[j], 0])
    cnf.add_clause([tab.r, -rp, -x[k], -z[j], 0])
    cnf.add_clause([tab.r, -rp, x[k], z[j], 0])
    cnf.add_clause([tab.r, -rp, z[k], 0])
    cnf.add_clause([tab.r, rp, -x[j], -x[k], z[j], -z[k],0])
    cnf.add_clause([tab.r, rp, -x[j], x[k], -z[j], -z[k],0])
    # cnf.add_weight(rp, -1)
    # cnf.add_weight(-rp, 1)
    tab.r = rp

    xp = cnf.add_var()
    zp = cnf.add_var()   
    cnf.add_clause([-x[j], -x[k], -xp, 0])
    cnf.add_clause([-x[j], x[k], xp, 0])
    cnf.add_clause([x[j], -x[k], xp, 0])
    cnf.add_clause([x[j], x[k], -xp, 0])
    
    cnf.add_clause([-z[j], -z[k], -zp, 0])
    cnf.add_clause([-z[j], z[k], zp, 0])
    cnf.add_clause([z[j], -z[k], zp, 0])
    cnf.add_clause([z[j], z[k], -zp, 0])
    x[k] = xp
    z[j] = zp
