def H2CNF(tab, cnf, _, k):
    x = tab.x; z = tab.z; r = tab.r

    R = cnf.add_var()
    cnf.add_clause([ p, -r,  x[k]])
	cnf.add_clause([ p, -r,  z[k]])
	cnf.add_clause([-p,  r,  x[k]])
	cnf.add_clause([-p,  r,  z[k]])
	cnf.add_clause([ p,  r, -x[k], -z[k]])
	cnf.add_clause([-p, -r, -x[k], -z[k]])
    tab.r = p

    x[k], z[k] = z[k], x[k] # swap
            

def S2CNF(tab, cnf, _, k):
    x = tab.x; z = tab.z; r = tab.r

    p = cnf.add_var()
	cnf.add_clause([ p, -r,  x[k]])
	cnf.add_clause([ p, -r,  z[k]])
	cnf.add_clause([-p,  r,  x[k]])
	cnf.add_clause([-p,  r,  z[k]])
	cnf.add_clause([ p,  r, -x[k], -z[k]])
	cnf.add_clause([-p, -r, -x[k], -z[k]])
    # cnf.add_weight(p, -1)
    # cnf.add_weight(-p, 1)

    zp = cnf.add_var() 
    cnf.add_clause([-zp, -x[k], -z[k]])
    cnf.add_clause([-zp,  x[k],  z[k]])
    cnf.add_clause([ zp, -x[k],  z[k]])
    cnf.add_clause([ zp,  x[k], -z[k]])

    z[k] = zp
    tab.r = p


def T2CNF(tab, cnf, t, k):
    x = tab.x; z = tab.z; r = tab.r
    
    p = cnf.add_var()
    zp = cnf.add_var()
    cnf.add_clause([-r, -p, -x[k], -z[k], zp])
    cnf.add_clause([-r,  p,  x[k]])
    cnf.add_clause([-r,  p,  z[k]])
    cnf.add_clause([-r,  p, -zp])
    cnf.add_clause([ r, -p,  x[k]])
    cnf.add_clause([ r, -p,  z[k]])
    cnf.add_clause([ r, -p, -zp])
    cnf.add_clause([ r,  p, -x[k], -z[k], zp])

    cnf.add_clause([x[k], -zp,  z[k]])
    cnf.add_clause([x[k],  zp, -z[k]])
    # u = x[k]                               # this was a useless assignment?
    u = cnf.add_var()
    cnf.add_clause([-u, x[k]])            # TODO: note that we can actually eliminate u and assign a weight to x[k] instead...
    cnf.add_clause([u, -x[k]])
    cnf.add_weight(u, 0.707106781186548)    # TODO: is this enough significance?
                                            # TODO: Perhaps sanity check robustness of WMC by varying significance..
    # 0.7071067
    cnf.add_weight(-u, 1)

    z[k] = zp
    tab.r = p


def CNOT2CNF(tab, cnf, _, c, t):
    x = tab.x; z = tab.z; r = tab.r

    p = cnf.add_var()
	cnf.add_clause([ p, -r,  x[j]])
	cnf.add_clause([ p, -r,  z[k]])
	cnf.add_clause([-p,  r,  x[j]])
	cnf.add_clause([-p,  r,  z[k]])
	cnf.add_clause([ p, -r,  x[k],  z[j]])
	cnf.add_clause([-p,  r,  x[k],  z[j]])
	cnf.add_clause([ p, -r, -x[k], -z[j]])
	cnf.add_clause([-p,  r, -x[k], -z[j]])
	cnf.add_clause([ p,  r, -x[j],  x[k], -z[j], -z[k]])
	cnf.add_clause([ p,  r, -x[j], -x[k],  z[j], -z[k]])
	cnf.add_clause([-p, -r, -x[j],  x[k], -z[j], -z[k]])
	cnf.add_clause([-p, -r, -x[j], -x[k],  z[j], -z[k]])
    # cnf.add_weight(p, -1)
    # cnf.add_weight(-p, 1)

    xp = cnf.add_var()
    cnf.add_clause([-x[j], -x[k], -xp])
    cnf.add_clause([-x[j],  x[k],  xp])
    cnf.add_clause([ x[j], -x[k],  xp])
    cnf.add_clause([ x[j],  x[k], -xp])
    
    zp = cnf.add_var()   
    cnf.add_clause([-z[j], -z[k], -zp])
    cnf.add_clause([-z[j],  z[k],  zp])
    cnf.add_clause([ z[j], -z[k],  zp])
    cnf.add_clause([ z[j],  z[k], -zp])

    tab.r = p
    x[k] = xp
    z[j] = zp
