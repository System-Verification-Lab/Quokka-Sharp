def H2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r

    rp = cnf.add_var()
    cnf.add_clause([-r, -rp, -x[k], -z[k],0])
    cnf.add_clause([-r, rp, x[k],0])
    cnf.add_clause([-r, rp, z[k],0])
    cnf.add_clause([r, -rp, x[k],0])
    cnf.add_clause([r, -rp, z[k],0])
    cnf.add_clause([r, rp, (-1) * x[k], -z[k], 0])
    r = rp
    x[k], z[k] = z[k], x[k] # swap
            

def S2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r

    rp = cnf.add_var()
    cnf.add_clause([-r, -rp, -x[k], -z[k],0])
    cnf.add_clause([-r, rp, x[k],0])
    cnf.add_clause([-r, rp, z[k],0])
    cnf.add_clause([r, -rp, x[k],0])
    cnf.add_clause([r, -rp, z[k],0])
    cnf.add_clause([r, rp, (-1) * x[k], -z[k], 0])
    r = rp
    # cnf.add_weight(rp, -1)
    # cnf.add_weight((-1) * rp, 1)

    zp = cnf.add_var() 
    cnf.add_clause([-x[k], -z[k], -zp,0])
    cnf.add_clause([x[k], z[k], -zp,0])
    cnf.add_clause([-x[k], z[k], zp,0])
    cnf.add_clause([x[k], -z[k], zp,0])
    z[k] = zp


def T2CNF(tab,cnf,t,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r; u = tab.u
    
    zp = cnf.add_var()

    rp = cnf.add_var()
    cnf.add_clause([-r, -rp, -x[k], -z[k], zp,0])
    cnf.add_clause([-r, rp, x[k],0])
    cnf.add_clause([-r, rp, z[k],0])
    cnf.add_clause([-r, rp, -zp,0])
    cnf.add_clause([r, -rp, x[k],0])
    cnf.add_clause([r, -rp, z[k],0])
    cnf.add_clause([r, -rp, -zp,0])
    cnf.add_clause([r, rp, -x[k], -z[k], zp, 0])
    r = rp

    cnf.add_clause([x[k],-zp,z[k],0])
    cnf.add_clause([x[k],zp,-z[k],0])
    # u = x[k]                               # this was a useless assignment?
    u = cnf.add_var()
    cnf.add_clause([-u, x[k],0])            # TODO: note that we can actually eliminate u and assign a weight to x[k] instead...
    cnf.add_clause([u, -x[k],0])
    cnf.add_weight(u, 0.707106781186548)    # TODO: is this enough significance?
                                            # TODO: Perhaps sanity check robustness of WMC by varying significance..
    # 0.7071067
    cnf.add_weight((-1) * u, 1)

    z[k] = zp


def CNOT2CNF(tab,cnf,t,j,k):
    n = tab.n; x = tab.x; z = tab.z; r = tab.r

    rp = cnf.add_var()
    cnf.add_clause([-r , -rp, -x[k], -x[k], z[k], (-1) * z[k],0])
    cnf.add_clause([-r, -rp, -x[k], x[k], (-1) * z[k], (-1) * z[k],0])
    cnf.add_clause([-r, rp, x[k],0])
    cnf.add_clause([-r, rp, (-1) * x[k], (-1) * z[k], 0])
    cnf.add_clause([-r, rp, x[k], z[k], 0])
    cnf.add_clause([-r, rp, z[k], 0])
    cnf.add_clause([r, -rp, x[k], 0])
    cnf.add_clause([r, -rp, (-1) * x[k], (-1) * z[k], 0])
    cnf.add_clause([r, -rp, x[k], z[k], 0])
    cnf.add_clause([r, -rp, z[k], 0])
    cnf.add_clause([r, rp, -x[k], -x[k], z[k], (-1) * z[k],0])
    cnf.add_clause([r, rp, -x[k], x[k], (-1) * z[k], (-1) * z[k],0])
    # cnf.add_weight(rp, -1)
    # cnf.add_weight((-1) * rp, 1)
    r = rp

    xp = cnf.add_var()
    zp = cnf.add_var()   
    cnf.add_clause([(-1) * x[k], (-1) * x[k], (-1) * xp, 0])
    cnf.add_clause([(-1) * x[k], x[k], xp, 0])
    cnf.add_clause([x[k], (-1) * x[k], xp, 0])
    cnf.add_clause([x[k], x[k], (-1) * xp, 0])
    
    cnf.add_clause([(-1) * z[k], (-1) * z[k], (-1) * zp, 0])
    cnf.add_clause([(-1) * z[k], z[k], zp, 0])
    cnf.add_clause([z[k], (-1) * z[k], zp, 0])
    cnf.add_clause([z[k], z[k], (-1) * zp, 0])
    z[k] = zp
    x[k] = xp
