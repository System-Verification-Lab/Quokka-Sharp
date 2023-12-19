from math import sin, cos
# Equivalent(R, r ^ (x[k] & z[k]))
def H2CNF(tab, cnf, _, k):
    r = tab.r
    x = tab.x
    z = tab.z
    R = cnf.add_var()
    cnf.add_clause([ R, -r,  x[k]])
    cnf.add_clause([ R, -r,  z[k]])
    cnf.add_clause([-R,  r,  x[k]])
    cnf.add_clause([-R,  r,  z[k]])
    cnf.add_clause([ R,  r, -x[k], -z[k]])
    cnf.add_clause([-R, -r, -x[k], -z[k]])
    x[k], z[k] = z[k], x[k]

    tab.r = R

# Equivalent(R, r ^ (x[k] & z[k]))
# Equivalent(Z, x[k] ^ z[k])
def S2CNF(tab, cnf, _, k):
    r = tab.r
    x = tab.x
    z = tab.z
    R = cnf.add_var()
    cnf.add_clause([ R, -r,  x[k]])
    cnf.add_clause([ R, -r,  z[k]])
    cnf.add_clause([-R,  r,  x[k]])
    cnf.add_clause([-R,  r,  z[k]])
    cnf.add_clause([ R,  r, -x[k], -z[k]])
    cnf.add_clause([-R, -r, -x[k], -z[k]])

    Z = cnf.add_var()
    cnf.add_clause([ Z,  x[k], -z[k]])
    cnf.add_clause([ Z, -x[k],  z[k]])
    cnf.add_clause([-Z,  x[k],  z[k]])
    cnf.add_clause([-Z, -x[k], -z[k]])

    tab.z[k] = Z
    tab.r = R

# Equivalent(R, r ^ (x[k] & z[k] & ~Z))
# Equivalent(X, x[k])
# x[k] | (Equivalent(Z, z[k]))
# Equivalent(u, x[k])
def T2CNF(tab, cnf, t, k):
    r = tab.r
    x = tab.x
    z = tab.z
    R = cnf.add_var()
    Z = cnf.add_var()
    X = cnf.add_var()
    cnf.add_clause([ R, -r,  x[k]])
    cnf.add_clause([ R, -r,  z[k]])
    cnf.add_clause([-R,  r,  x[k]])
    cnf.add_clause([-R,  r,  z[k]])
    cnf.add_clause([ R, -Z, -r])
    cnf.add_clause([-R, -Z,  r])
    cnf.add_clause([ R,  Z,  r, -x[k], -z[k]])
    cnf.add_clause([-R,  Z, -r, -x[k], -z[k]])

    cnf.add_clause([ X, -x[k]])
    cnf.add_clause([-X,  x[k]])

    cnf.add_clause([ Z,  x[k], -z[k]])
    cnf.add_clause([-Z,  x[k],  z[k]])

    u = cnf.add_var()
    cnf.add_clause([ u, -x[k]])
    cnf.add_clause([-u,  x[k]])
    cnf.add_weight(u, 0.707106781186548)

    tab.x[k] = X
    tab.z[k] = Z
    tab.r = R

# Equivalent(R, r ^ (x[c] & z[t] & (z[c] ^ ~x[t])))
# Equivalent(X, x[c] ^ x[t])
# Equivalent(Z, z[c] ^ z[t])
def CNOT2CNF(tab, cnf, _, c, t):
    r = tab.r
    x = tab.x
    z = tab.z
    R = cnf.add_var()
    Z = cnf.add_var()
    X = cnf.add_var()
    cnf.add_clause([ R, -r,  x[c]])
    cnf.add_clause([ R, -r,  z[t]])
    cnf.add_clause([-R,  r,  x[c]])
    cnf.add_clause([-R,  r,  z[t]])
    cnf.add_clause([ R, -r,  x[t], -z[c]])
    cnf.add_clause([ R, -r, -x[t],  z[c]])
    cnf.add_clause([-R,  r,  x[t], -z[c]])
    cnf.add_clause([-R,  r, -x[t],  z[c]])
    cnf.add_clause([ R,  r, -x[c],  x[t],  z[c], -z[t]])
    cnf.add_clause([ R,  r, -x[c], -x[t], -z[c], -z[t]])
    cnf.add_clause([-R, -r, -x[c],  x[t],  z[c], -z[t]])
    cnf.add_clause([-R, -r, -x[c], -x[t], -z[c], -z[t]])

    cnf.add_clause([ X,  x[c], -x[t]])
    cnf.add_clause([ X, -x[c],  x[t]])
    cnf.add_clause([-X,  x[c],  x[t]])
    cnf.add_clause([-X, -x[c], -x[t]])

    cnf.add_clause([ Z,  z[c], -z[t]])
    cnf.add_clause([ Z, -z[c],  z[t]])
    cnf.add_clause([-Z,  z[c],  z[t]])
    cnf.add_clause([-Z, -z[c], -z[t]])
    tab.x[t] = X
    tab.z[c] = Z
    tab.r = R


# Equivalent(R, r ^ (x[k] & z[k] & ~Z))
# Equivalent(X, x[k])
# x[k] | (Equivalent(Z, z[k]))
# Equivalent(u, x[k])
def RZ2CNF(tab, cnf, t, k, cos_theta, sin_theta):
    r = tab.r
    x = tab.x
    z = tab.z
    R = cnf.add_var()
    Z = cnf.add_var()
    X = cnf.add_var()
    cnf.add_clause([ R, -r,  x[k]])
    cnf.add_clause([ R, -r,  z[k]])
    cnf.add_clause([-R,  r,  x[k]])
    cnf.add_clause([-R,  r,  z[k]])
    cnf.add_clause([ R, -Z, -r])
    cnf.add_clause([-R, -Z,  r])
    cnf.add_clause([ R,  Z,  r, -x[k], -z[k]])
    cnf.add_clause([-R,  Z, -r, -x[k], -z[k]])

    cnf.add_clause([ X, -x[k]])
    cnf.add_clause([-X,  x[k]])

    cnf.add_clause([ Z,  x[k], -z[k]])
    cnf.add_clause([-Z,  x[k],  z[k]])

    u1 = cnf.add_var()
    cnf.add_clause([-u1,  x[k]])
    cnf.add_clause([ Z, -Z, -u1])
    cnf.add_clause([ Z, -u1, -z[k]])
    cnf.add_clause([-Z, -u1,  z[k]])
    cnf.add_clause([-u1,  z[k], -z[k]])
    cnf.add_clause([ Z,  u1, -x[k],  z[k]])
    cnf.add_clause([-Z,  u1, -x[k], -z[k]])
    cnf.add_weight(u1, cos_theta)

    u2 = cnf.add_var()
    cnf.add_clause([-u2,  x[k]])
    cnf.add_clause([ Z, -u2,  z[k]])
    cnf.add_clause([ Z, -Z, -u2])
    cnf.add_clause([-u2,  z[k], -z[k]])
    cnf.add_clause([-Z, -u2, -z[k]])
    cnf.add_clause([ Z,  u2, -x[k], -z[k]])
    cnf.add_clause([-Z,  u2, -x[k],  z[k]])
    cnf.add_weight(u2, sin_theta)
    tab.x[k] = X
    tab.z[k] = Z
    tab.r = R

# Equivalent(R, r ^ (X & x[k] & z[k]))
# Equivalent(Z, z[k])
# z[k] | (Equivalent(X, x[k]))
# Equivalent(u, x[k])
def RX2CNF(tab, cnf, t, k, theta, cos_theta, sin_theta):
    r = tab.r
    x = tab.x
    z = tab.z
    R = cnf.add_var()
    Z = cnf.add_var()
    X = cnf.add_var()
    cnf.add_clause([ R,  X, -r])
    cnf.add_clause([ R, -r,  x[k]])
    cnf.add_clause([ R, -r,  z[k]])
    cnf.add_clause([-R,  X,  r])
    cnf.add_clause([-R,  r,  x[k]])
    cnf.add_clause([-R,  r,  z[k]])
    cnf.add_clause([ R, -X,  r, -x[k], -z[k]])
    cnf.add_clause([-R, -X, -r, -x[k], -z[k]])

    cnf.add_clause([ Z, -z[k]])
    cnf.add_clause([-Z,  z[k]])

    cnf.add_clause([ X, -x[k],  z[k]])
    cnf.add_clause([-X,  x[k],  z[k]])

    u1 = cnf.add_var()
    cnf.add_clause([-u1,  z[k]])
    cnf.add_clause([ X, -X, -u1])
    cnf.add_clause([ X, -u1, -x[k]])
    cnf.add_clause([-X, -u1,  x[k]])
    cnf.add_clause([-u1,  x[k], -x[k]])
    cnf.add_clause([ X,  u1,  x[k], -z[k]])
    cnf.add_clause([-X,  u1, -x[k], -z[k]])
    cnf.add_weight(u1, cos_theta)

    u2 = cnf.add_var()
    cnf.add_clause([-u2,  z[k]])
    cnf.add_clause([ X, -u2,  x[k]])
    cnf.add_clause([ X, -X, -u2])
    cnf.add_clause([-u2,  x[k], -x[k]])
    cnf.add_clause([-X, -u2, -x[k]])
    cnf.add_clause([ X,  u2, -x[k], -z[k]])
    cnf.add_clause([-X,  u2,  x[k], -z[k]])
    cnf.add_weight(u2, sin_theta)
    tab.x[k] = X
    tab.z[k] = Z
    tab.r = R
