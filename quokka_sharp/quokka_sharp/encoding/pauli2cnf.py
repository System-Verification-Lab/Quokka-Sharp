# This code was generated by pauli2cnf_py_codegen.py.
import math
from decimal import Decimal, getcontext
getcontext().prec = 32

class pauli2cnf:
    def H2CNF(cnf, k):
        x = cnf.vars.x
        z = cnf.vars.z

        # adding sign if x[k] & z[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k] & z[k])
            cnf.add_clause([-R,  x[k]])
            cnf.add_clause([-R,  z[k]])
            cnf.add_clause([ R, -x[k], -z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[k] & z[k]))
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([ R, -r,  z[k]])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([-R,  r,  z[k]])
            cnf.add_clause([ R,  r, -x[k], -z[k]])
            cnf.add_clause([-R, -r, -x[k], -z[k]])

        x[k], z[k] = z[k], x[k]

    def S2CNF(cnf, k):
        x = cnf.vars.x
        z = cnf.vars.z

        Z = cnf.add_var()
        # Equivalent(Z, x[k] ^ z[k])
        cnf.add_clause([ Z,  x[k], -z[k]])
        cnf.add_clause([ Z, -x[k],  z[k]])
        cnf.add_clause([-Z,  x[k],  z[k]])
        cnf.add_clause([-Z, -x[k], -z[k]])

        # adding sign if x[k] & z[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k] & z[k])
            cnf.add_clause([-R,  x[k]])
            cnf.add_clause([-R,  z[k]])
            cnf.add_clause([ R, -x[k], -z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[k] & z[k]))
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([ R, -r,  z[k]])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([-R,  r,  z[k]])
            cnf.add_clause([ R,  r, -x[k], -z[k]])
            cnf.add_clause([-R, -r, -x[k], -z[k]])

        cnf.vars.z[k] = Z

    def X2CNF(cnf, k):
        z = cnf.vars.z

        # adding sign if z[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, z[k])
            cnf.add_clause([ R, -z[k]])
            cnf.add_clause([-R,  z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ z[k])
            cnf.add_clause([ R,  r, -z[k]])
            cnf.add_clause([ R, -r,  z[k]])
            cnf.add_clause([-R,  r,  z[k]])
            cnf.add_clause([-R, -r, -z[k]])

    def Y2CNF(cnf, k):
        x = cnf.vars.x
        z = cnf.vars.z

        # adding sign if x[k] ^ z[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k] ^ z[k])
            cnf.add_clause([ R,  x[k], -z[k]])
            cnf.add_clause([ R, -x[k],  z[k]])
            cnf.add_clause([-R,  x[k],  z[k]])
            cnf.add_clause([-R, -x[k], -z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ x[k] ^ z[k])
            cnf.add_clause([ R,  r,  x[k], -z[k]])
            cnf.add_clause([ R,  r, -x[k],  z[k]])
            cnf.add_clause([ R, -r,  x[k],  z[k]])
            cnf.add_clause([-R,  r,  x[k],  z[k]])
            cnf.add_clause([ R, -r, -x[k], -z[k]])
            cnf.add_clause([-R,  r, -x[k], -z[k]])
            cnf.add_clause([-R, -r,  x[k], -z[k]])
            cnf.add_clause([-R, -r, -x[k],  z[k]])

    def Z2CNF(cnf, k):
        x = cnf.vars.x

        # adding sign if x[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k])
            cnf.add_clause([ R, -x[k]])
            cnf.add_clause([-R,  x[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ x[k])
            cnf.add_clause([ R,  r, -x[k]])
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([-R, -r, -x[k]])

    def Sdg2CNF(cnf, k):
        x = cnf.vars.x
        z = cnf.vars.z

        Z = cnf.add_var()
        # Equivalent(Z, x[k] ^ z[k])
        cnf.add_clause([ Z,  x[k], -z[k]])
        cnf.add_clause([ Z, -x[k],  z[k]])
        cnf.add_clause([-Z,  x[k],  z[k]])
        cnf.add_clause([-Z, -x[k], -z[k]])

        # adding sign if x[k] & ~z[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k] & ~z[k])
            cnf.add_clause([-R,  x[k]])
            cnf.add_clause([-R, -z[k]])
            cnf.add_clause([ R, -x[k],  z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[k] & ~z[k]))
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([ R, -r, -z[k]])
            cnf.add_clause([-R,  r, -z[k]])
            cnf.add_clause([ R,  r, -x[k],  z[k]])
            cnf.add_clause([-R, -r, -x[k],  z[k]])

        cnf.vars.z[k] = Z

    def T2CNF(cnf, k):
        x = cnf.vars.x
        z = cnf.vars.z

        Z = cnf.add_var()
        # x[k] | (Equivalent(Z, z[k]))
        cnf.add_clause([ Z,  x[k], -z[k]])
        cnf.add_clause([-Z,  x[k],  z[k]])

        # adding sqrt_half if x[k]
        U = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(U, str(Decimal(1/2).sqrt()))
            cnf.add_weight(-U, 1)
            # Equivalent(U, x[k])
            cnf.add_clause([ U, -x[k]])
            cnf.add_clause([-U,  x[k]])
        else: 
            cnf.power_two_normalisation += 0.5 
            u = cnf.vars.u
            cnf.vars.u = U
            # Equivalent(U, u ^ ~x[k])
            cnf.add_clause([ U,  u,  x[k]])
            cnf.add_clause([ U, -u, -x[k]])
            cnf.add_clause([-U,  u, -x[k]])
            cnf.add_clause([-U, -u,  x[k]])

            D = cnf.add_var()
            cnf.add_clause([D, cnf.add_var()])
            # Equivalent(D, u & ~U)
            cnf.add_clause([-D,  u])
            cnf.add_clause([-D, -U])
            cnf.add_clause([ D,  U, -u])

        # adding sign if x[k] & z[k] & ~Z
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k] & z[k] & ~Z)
            cnf.add_clause([-R,  x[k]])
            cnf.add_clause([-R,  z[k]])
            cnf.add_clause([-R, -Z])
            cnf.add_clause([ R,  Z, -x[k], -z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[k] & z[k] & ~Z))
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([ R, -r,  z[k]])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([-R,  r,  z[k]])
            cnf.add_clause([ R, -Z, -r])
            cnf.add_clause([-R, -Z,  r])
            cnf.add_clause([ R,  Z,  r, -x[k], -z[k]])
            cnf.add_clause([-R,  Z, -r, -x[k], -z[k]])

        cnf.vars.z[k] = Z

    def Tdg2CNF(cnf, k):
        x = cnf.vars.x
        z = cnf.vars.z

        Z = cnf.add_var()
        # x[k] | (Equivalent(Z, z[k]))
        cnf.add_clause([ Z,  x[k], -z[k]])
        cnf.add_clause([-Z,  x[k],  z[k]])

        # adding sqrt_half if x[k]
        U = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(U, str(Decimal(1/2).sqrt()))
            cnf.add_weight(-U, 1)
            # Equivalent(U, x[k])
            cnf.add_clause([ U, -x[k]])
            cnf.add_clause([-U,  x[k]])
        else: 
            cnf.power_two_normalisation += 0.5 
            u = cnf.vars.u
            cnf.vars.u = U
            # Equivalent(U, u ^ ~x[k])
            cnf.add_clause([ U,  u,  x[k]])
            cnf.add_clause([ U, -u, -x[k]])
            cnf.add_clause([-U,  u, -x[k]])
            cnf.add_clause([-U, -u,  x[k]])

            D = cnf.add_var()
            cnf.add_clause([D, cnf.add_var()])
            # Equivalent(D, u & ~U)
            cnf.add_clause([-D,  u])
            cnf.add_clause([-D, -U])
            cnf.add_clause([ D,  U, -u])

        # adding sign if Z & x[k] & ~z[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, Z & x[k] & ~z[k])
            cnf.add_clause([-R,  Z])
            cnf.add_clause([-R,  x[k]])
            cnf.add_clause([-R, -z[k]])
            cnf.add_clause([ R, -Z, -x[k],  z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (Z & x[k] & ~z[k]))
            cnf.add_clause([ R,  Z, -r])
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([-R,  Z,  r])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([ R, -r, -z[k]])
            cnf.add_clause([-R,  r, -z[k]])
            cnf.add_clause([ R, -Z,  r, -x[k],  z[k]])
            cnf.add_clause([-R, -Z, -r, -x[k],  z[k]])

        cnf.vars.z[k] = Z

    def CNOT2CNF(cnf, c, t):
        x = cnf.vars.x
        z = cnf.vars.z

        X = cnf.add_var()
        # Equivalent(X, x[c] ^ x[t])
        cnf.add_clause([ X,  x[c], -x[t]])
        cnf.add_clause([ X, -x[c],  x[t]])
        cnf.add_clause([-X,  x[c],  x[t]])
        cnf.add_clause([-X, -x[c], -x[t]])

        Z = cnf.add_var()
        # Equivalent(Z, z[c] ^ z[t])
        cnf.add_clause([ Z,  z[c], -z[t]])
        cnf.add_clause([ Z, -z[c],  z[t]])
        cnf.add_clause([-Z,  z[c],  z[t]])
        cnf.add_clause([-Z, -z[c], -z[t]])

        # adding sign if x[c] & z[t] & (z[c] ^ ~x[t])
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[c] & z[t] & (z[c] ^ ~x[t]))
            cnf.add_clause([-R,  x[c]])
            cnf.add_clause([-R,  z[t]])
            cnf.add_clause([-R,  x[t], -z[c]])
            cnf.add_clause([-R, -x[t],  z[c]])
            cnf.add_clause([ R, -x[c],  x[t],  z[c], -z[t]])
            cnf.add_clause([ R, -x[c], -x[t], -z[c], -z[t]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[c] & z[t] & (z[c] ^ ~x[t])))
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

        cnf.vars.x[t] = X
        cnf.vars.z[c] = Z

    def CZ2CNF(cnf, c, t):
        x = cnf.vars.x
        z = cnf.vars.z

        Z1 = cnf.add_var()
        # Equivalent(Z1, x[t] ^ z[c])
        cnf.add_clause([ Z1,  x[t], -z[c]])
        cnf.add_clause([ Z1, -x[t],  z[c]])
        cnf.add_clause([-Z1,  x[t],  z[c]])
        cnf.add_clause([-Z1, -x[t], -z[c]])

        Z2 = cnf.add_var()
        # Equivalent(Z2, x[c] ^ z[t])
        cnf.add_clause([ Z2,  x[c], -z[t]])
        cnf.add_clause([ Z2, -x[c],  z[t]])
        cnf.add_clause([-Z2,  x[c],  z[t]])
        cnf.add_clause([-Z2, -x[c], -z[t]])

        # adding sign if x[c] & x[t] & (z[c] ^ z[t])
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[c] & x[t] & (z[c] ^ z[t]))
            cnf.add_clause([-R,  x[c]])
            cnf.add_clause([-R,  x[t]])
            cnf.add_clause([-R,  z[c],  z[t]])
            cnf.add_clause([-R, -z[c], -z[t]])
            cnf.add_clause([ R, -x[c], -x[t],  z[c], -z[t]])
            cnf.add_clause([ R, -x[c], -x[t], -z[c],  z[t]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[c] & x[t] & (z[c] ^ z[t])))
            cnf.add_clause([ R, -r,  x[c]])
            cnf.add_clause([ R, -r,  x[t]])
            cnf.add_clause([-R,  r,  x[c]])
            cnf.add_clause([-R,  r,  x[t]])
            cnf.add_clause([ R, -r,  z[c],  z[t]])
            cnf.add_clause([-R,  r,  z[c],  z[t]])
            cnf.add_clause([ R, -r, -z[c], -z[t]])
            cnf.add_clause([-R,  r, -z[c], -z[t]])
            cnf.add_clause([ R,  r, -x[c], -x[t],  z[c], -z[t]])
            cnf.add_clause([ R,  r, -x[c], -x[t], -z[c],  z[t]])
            cnf.add_clause([-R, -r, -x[c], -x[t],  z[c], -z[t]])
            cnf.add_clause([-R, -r, -x[c], -x[t], -z[c],  z[t]])

        cnf.vars.z[c] = Z1
        cnf.vars.z[t] = Z2

    def RZ2CNF(cnf, k, theta):
        x = cnf.vars.x
        z = cnf.vars.z

        Z = cnf.add_var()
        # x[k] | (Equivalent(Z, z[k]))
        cnf.add_clause([ Z,  x[k], -z[k]])
        cnf.add_clause([-Z,  x[k],  z[k]])

        u1 = cnf.add_var()
        cnf.add_weight( u1, Decimal(math.cos(theta)))
        cnf.add_weight(-u1, 1)
        # Equivalent(u1, x[k] & ((Z & z[k]) | (~Z & ~z[k])))
        cnf.add_clause([-u1,  x[k]])
        cnf.add_clause([ Z, -u1, -z[k]])
        cnf.add_clause([-Z, -u1,  z[k]])
        cnf.add_clause([ Z,  u1, -x[k],  z[k]])
        cnf.add_clause([-Z,  u1, -x[k], -z[k]])

        u2 = cnf.add_var()
        cnf.add_weight( u2, Decimal(math.sin(theta)))
        cnf.add_weight(-u2, 1)
        # Equivalent(u2, x[k] & ((Z & ~z[k]) | (z[k] & ~Z)))
        cnf.add_clause([-u2,  x[k]])
        cnf.add_clause([ Z, -u2,  z[k]])
        cnf.add_clause([-Z, -u2, -z[k]])
        cnf.add_clause([ Z,  u2, -x[k], -z[k]])
        cnf.add_clause([-Z,  u2, -x[k],  z[k]])

        # adding sign if x[k] & z[k] & ~Z
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, x[k] & z[k] & ~Z)
            cnf.add_clause([-R,  x[k]])
            cnf.add_clause([-R,  z[k]])
            cnf.add_clause([-R, -Z])
            cnf.add_clause([ R,  Z, -x[k], -z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (x[k] & z[k] & ~Z))
            cnf.add_clause([ R, -r,  x[k]])
            cnf.add_clause([ R, -r,  z[k]])
            cnf.add_clause([-R,  r,  x[k]])
            cnf.add_clause([-R,  r,  z[k]])
            cnf.add_clause([ R, -Z, -r])
            cnf.add_clause([-R, -Z,  r])
            cnf.add_clause([ R,  Z,  r, -x[k], -z[k]])
            cnf.add_clause([-R,  Z, -r, -x[k], -z[k]])

        cnf.vars.z[k] = Z

    def RX2CNF(cnf, k, theta):
        x = cnf.vars.x
        z = cnf.vars.z

        X = cnf.add_var()
        # z[k] | (Equivalent(X, x[k]))
        cnf.add_clause([ X, -x[k],  z[k]])
        cnf.add_clause([-X,  x[k],  z[k]])

        u1 = cnf.add_var()
        cnf.add_weight( u1, Decimal(math.cos(theta)))
        cnf.add_weight(-u1, 1)
        # Equivalent(u1, z[k] & ((X & x[k]) | (~X & ~x[k])))
        cnf.add_clause([-u1,  z[k]])
        cnf.add_clause([ X, -u1, -x[k]])
        cnf.add_clause([-X, -u1,  x[k]])
        cnf.add_clause([ X,  u1,  x[k], -z[k]])
        cnf.add_clause([-X,  u1, -x[k], -z[k]])

        u2 = cnf.add_var()
        cnf.add_weight( u2, Decimal(math.sin(theta)))
        cnf.add_weight(-u2, 1)
        # Equivalent(u2, z[k] & ((X & ~x[k]) | (x[k] & ~X)))
        cnf.add_clause([-u2,  z[k]])
        cnf.add_clause([ X, -u2,  x[k]])
        cnf.add_clause([-X, -u2, -x[k]])
        cnf.add_clause([ X,  u2, -x[k], -z[k]])
        cnf.add_clause([-X,  u2,  x[k], -z[k]])

        # adding sign if X & z[k] & ~x[k]
        R = cnf.add_var()
        if cnf.weighted: 
            cnf.add_weight(R, -1)
            cnf.add_weight(-R, 1)
            # Equivalent(R, X & z[k] & ~x[k])
            cnf.add_clause([-R,  X])
            cnf.add_clause([-R,  z[k]])
            cnf.add_clause([-R, -x[k]])
            cnf.add_clause([ R, -X,  x[k], -z[k]])
        else: 
            r = cnf.vars.r
            cnf.vars.r = R
            # Equivalent(R, r ^ (X & z[k] & ~x[k]))
            cnf.add_clause([ R,  X, -r])
            cnf.add_clause([ R, -r,  z[k]])
            cnf.add_clause([-R,  X,  r])
            cnf.add_clause([-R,  r,  z[k]])
            cnf.add_clause([ R, -r, -x[k]])
            cnf.add_clause([-R,  r, -x[k]])
            cnf.add_clause([ R, -X,  r,  x[k], -z[k]])
            cnf.add_clause([-R, -X, -r,  x[k], -z[k]])

        cnf.vars.x[k] = X

    def AMO(cnf, var_list):
        assert None not in var_list
        # at least one:
        cnf.add_clause(var_list)
        # at most one:
        [cnf.add_clause([-var_list[a],-var_list[b]]) for a in range(len(var_list)) for b in range(a+1, len(var_list))]


    def SynGate2CNF(cnf):
        n = cnf.n
        x = cnf.vars.x
        z = cnf.vars.z
        X = [cnf.add_var() for _ in range(n)]
        Z = [cnf.add_var() for _ in range(n)]
        R = [cnf.add_var() for _ in range(n)]
        U = [cnf.add_var() for _ in range(n)]
        [cnf.add_weight(R[k], -1) for k in range(n)]
        [cnf.add_weight(-R[k], 1) for k in range(n)]
        [cnf.add_weight(U[k], str(Decimal(1/2).sqrt())) for k in range(n)]
        [cnf.add_weight(-U[k], 1) for k in range(n)]
        czg = [[None for _ in range(n)] for _ in range(n)]
        for k in range(n):
            idg = cnf.add_var(syn_gate_pick = True, Name = 'id', bits = [k])
            hg = cnf.add_var(syn_gate_pick = True, Name = 'h', bits = [k])
            sg = cnf.add_var(syn_gate_pick = True, Name = 's', bits = [k])
            tg = cnf.add_var(syn_gate_pick = True, Name = 't', bits = [k])
            # Implies(idg, ~R[k])
            cnf.add_clause([-R[k], -idg])
            # Implies(idg, Equivalent(X[k], x[k]))
            cnf.add_clause([ X[k], -idg, -x[k]])
            cnf.add_clause([-X[k], -idg,  x[k]])
            # Implies(idg, Equivalent(Z[k], z[k]))
            cnf.add_clause([ Z[k], -idg, -z[k]])
            cnf.add_clause([-Z[k], -idg,  z[k]])
            # Implies(idg, ~U[k])
            cnf.add_clause([-U[k], -idg])
            # Implies(hg, Equivalent(R[k], x[k] & z[k]))
            cnf.add_clause([-R[k], -hg,  x[k]])
            cnf.add_clause([-R[k], -hg,  z[k]])
            cnf.add_clause([ R[k], -hg, -x[k], -z[k]])
            # Implies(hg, Equivalent(X[k], z[k]))
            cnf.add_clause([ X[k], -hg, -z[k]])
            cnf.add_clause([-X[k], -hg,  z[k]])
            # Implies(hg, Equivalent(Z[k], x[k]))
            cnf.add_clause([ Z[k], -hg, -x[k]])
            cnf.add_clause([-Z[k], -hg,  x[k]])
            # Implies(hg, ~U[k])
            cnf.add_clause([-U[k], -hg])
            # Implies(sg, Equivalent(R[k], x[k] & z[k]))
            cnf.add_clause([-R[k], -sg,  x[k]])
            cnf.add_clause([-R[k], -sg,  z[k]])
            cnf.add_clause([ R[k], -sg, -x[k], -z[k]])
            # Implies(sg, Equivalent(X[k], x[k]))
            cnf.add_clause([ X[k], -sg, -x[k]])
            cnf.add_clause([-X[k], -sg,  x[k]])
            # Implies(sg, Equivalent(Z[k], x[k] ^ z[k]))
            cnf.add_clause([ Z[k], -sg,  x[k], -z[k]])
            cnf.add_clause([ Z[k], -sg, -x[k],  z[k]])
            cnf.add_clause([-Z[k], -sg,  x[k],  z[k]])
            cnf.add_clause([-Z[k], -sg, -x[k], -z[k]])
            # Implies(sg, ~U[k])
            cnf.add_clause([-U[k], -sg])
            # Implies(tg, Equivalent(R[k], x[k] & z[k] & ~Z[k]))
            cnf.add_clause([-R[k], -tg,  x[k]])
            cnf.add_clause([-R[k], -tg,  z[k]])
            cnf.add_clause([-R[k], -Z[k], -tg])
            cnf.add_clause([ R[k],  Z[k], -tg, -x[k], -z[k]])
            # Implies(tg, Equivalent(X[k], x[k]))
            cnf.add_clause([ X[k], -tg, -x[k]])
            cnf.add_clause([-X[k], -tg,  x[k]])
            # x[k] | (Implies(tg, Equivalent(Z[k], z[k])))
            cnf.add_clause([ Z[k], -tg,  x[k], -z[k]])
            cnf.add_clause([-Z[k], -tg,  x[k],  z[k]])
            # Implies(tg, Equivalent(U[k], x[k]))
            cnf.add_clause([ U[k], -tg, -x[k]])
            cnf.add_clause([-U[k], -tg,  x[k]])
            c = k
            for t in range(c+1, n):
                czg[c][t] = cnf.add_var(syn_gate_pick = True, Name = 'cz', bits = [c,t])
                # Implies(czg[c][t], Equivalent(X[c], x[c]))
                cnf.add_clause([ X[c], -czg[c][t], -x[c]])
                cnf.add_clause([-X[c], -czg[c][t],  x[c]])
                # Implies(czg[c][t], Equivalent(X[t], x[t]))
                cnf.add_clause([ X[t], -czg[c][t], -x[t]])
                cnf.add_clause([-X[t], -czg[c][t],  x[t]])
                # Implies(czg[c][t], Equivalent(Z[c], x[t] ^ z[c]))
                cnf.add_clause([ Z[c], -czg[c][t],  x[t], -z[c]])
                cnf.add_clause([ Z[c], -czg[c][t], -x[t],  z[c]])
                cnf.add_clause([-Z[c], -czg[c][t],  x[t],  z[c]])
                cnf.add_clause([-Z[c], -czg[c][t], -x[t], -z[c]])
                # Implies(czg[c][t], Equivalent(Z[t], x[c] ^ z[t]))
                cnf.add_clause([ Z[t], -czg[c][t],  x[c], -z[t]])
                cnf.add_clause([ Z[t], -czg[c][t], -x[c],  z[t]])
                cnf.add_clause([-Z[t], -czg[c][t],  x[c],  z[t]])
                cnf.add_clause([-Z[t], -czg[c][t], -x[c], -z[t]])
                # Implies(czg[c][t], Equivalent(R[c], x[c] & x[t] & (z[c] ^ z[t])))
                cnf.add_clause([-R[c], -czg[c][t],  x[c]])
                cnf.add_clause([-R[c], -czg[c][t],  x[t]])
                cnf.add_clause([-R[c], -czg[c][t],  z[c],  z[t]])
                cnf.add_clause([-R[c], -czg[c][t], -z[c], -z[t]])
                cnf.add_clause([ R[c], -czg[c][t], -x[c], -x[t],  z[c], -z[t]])
                cnf.add_clause([ R[c], -czg[c][t], -x[c], -x[t], -z[c],  z[t]])
                # Implies(czg[c][t], ~R[t])
                cnf.add_clause([-R[t], -czg[c][t]])
                # Implies(czg[c][t], ~U[c])
                cnf.add_clause([-U[c], -czg[c][t]])
                # Implies(czg[c][t], ~U[t])
                cnf.add_clause([-U[t], -czg[c][t]])
            gate_controlers = [idg, hg, sg, tg]+[czg[i][k] for i in range(k)]+[czg[k][i] for i in range(k+1,n)]
            pauli2cnf.AMO(cnf, gate_controlers)

        cnf.vars.x[:n] = X
        cnf.vars.z[:n] = Z
