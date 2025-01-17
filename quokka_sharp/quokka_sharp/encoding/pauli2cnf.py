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



 
    def Composition(cnf, composition_dictionary):
        x, z = zip(*[(cnf.add_var(), cnf.add_var()) for _ in range(cnf.n)])
        comp = cnf.add_var()
        weights = []
        sum_weights = 0
        for pauli_str, alpha in composition_dictionary["composition"].items():
            a = complex(alpha)
            if a == 0:
                continue
            a_r = a.real
            a_i = a.imag

            # pauli conditions
            conditions = []
            for i in range(len(pauli_str)):
                P = pauli_str[cnf.n-1-i]
                if P in ["I", "Z"]:
                    conditions.append(-x[i])
                else:
                    conditions.append( x[i])
                if P in ["I", "X"]:
                    conditions.append(-z[i])
                else:
                    conditions.append( z[i])

            # condition weight
            wr = cnf.add_var()
            wi = cnf.add_var()
            cnf.add_weight(wr, a_r, comment=pauli_str)
            cnf.add_weight(-wr, 1)
            weights.append(wr)
            cnf.add_weight(wi, a_i, comment=pauli_str)
            cnf.add_weight(-wi, 1)
            weights.append(wi)
            sum_weights += alpha**2

            # w => pauli_str
            [cnf.add_clause([-wr, c]) for c in conditions]
            [cnf.add_clause([-wi, c]) for c in conditions]
            cnf.add_clause([-wi, comp])
            cnf.add_clause([-wr, comp])

        # [at least] one of the weights (more than one will lead to a contradiction of the conditions)
        cnf.add_clause(weights)
        if sum_weights != 1:
            # WARNNING: not normalized
            w = cnf.add_var()
            cnf.add_weight(w, str(Decimal(1/sum_weights).sqrt()), comment="normalize")
            cnf.add_weight(-w, 1)
            cnf.add_clause([w])
          
        return x,z,comp
    

    def Composition2CNF(cnf, composition_dictionary):
        assert composition_dictionary["qubits"] == cnf.n
        lx, lz, lc = pauli2cnf.Composition(cnf, composition_dictionary)
        rx, rz, rc = pauli2cnf.Composition(cnf, composition_dictionary)
        x = cnf.vars.x
        z = cnf.vars.z
        Xs = [cnf.add_var() for _ in range(cnf.n)]
        Zs = [cnf.add_var() for _ in range(cnf.n)]

        # applying the conditions
        for k in range(cnf.n):
            X = Xs[k]
            Z = Zs[k]
    
            # Equivalent(X, lx[k] ^ rx[k] ^ x[k])
            cnf.add_clause([ X,  lx[k],  rx[k], -x[k]])
            cnf.add_clause([ X,  lx[k], -rx[k],  x[k]])
            cnf.add_clause([ X, -lx[k],  rx[k],  x[k]])
            cnf.add_clause([-X,  lx[k],  rx[k],  x[k]])
            cnf.add_clause([ X, -lx[k], -rx[k], -x[k]])
            cnf.add_clause([-X,  lx[k], -rx[k], -x[k]])
            cnf.add_clause([-X, -lx[k],  rx[k], -x[k]])
            cnf.add_clause([-X, -lx[k], -rx[k],  x[k]])
            # Equivalent(Z, lz[k] ^ rz[k] ^ z[k])
            cnf.add_clause([ Z,  lz[k],  rz[k], -z[k]])
            cnf.add_clause([ Z,  lz[k], -rz[k],  z[k]])
            cnf.add_clause([ Z, -lz[k],  rz[k],  z[k]])
            cnf.add_clause([-Z,  lz[k],  rz[k],  z[k]])
            cnf.add_clause([ Z, -lz[k], -rz[k], -z[k]])
            cnf.add_clause([-Z,  lz[k], -rz[k], -z[k]])
            cnf.add_clause([-Z, -lz[k],  rz[k], -z[k]])
            cnf.add_clause([-Z, -lz[k], -rz[k],  z[k]])
            # adding sign if (lx[k] | lz[k]) & (x[k] | z[k]) & ((lx[k] & rx[k] & ~x[k]) | (lz[k] & rz[k] & ~z[k]) | (x[k] & ~lx[k] & ~rx[k]) | (z[k] & ~lz[k] & ~rz[k]))
            R = cnf.add_var()
            if cnf.weighted: 
                cnf.add_weight(R, -1)
                cnf.add_weight(-R, 1)
                # Equivalent(R, (lx[k] | lz[k]) & (x[k] | z[k]) & ((lx[k] & rx[k] & ~x[k]) | (lz[k] & rz[k] & ~z[k]) | (x[k] & ~lx[k] & ~rx[k]) | (z[k] & ~lz[k] & ~rz[k])))
                cnf.add_clause([-R,  lx[k],  lz[k]])
                cnf.add_clause([-R,  lx[k],  x[k]])
                cnf.add_clause([-R,  lz[k],  z[k]])
                cnf.add_clause([-R,  x[k],  z[k]])
                cnf.add_clause([ R,  lx[k], -lz[k],  rx[k], -x[k]])
                cnf.add_clause([ R, -lx[k],  lz[k],  rz[k], -z[k]])
                cnf.add_clause([ R, -lx[k], -rx[k],  x[k], -z[k]])
                cnf.add_clause([ R, -lz[k], -rz[k], -x[k],  z[k]])
                cnf.add_clause([-R, -lx[k], -lz[k],  rx[k],  rz[k]])
                cnf.add_clause([-R, -lx[k],  rx[k], -rz[k], -z[k]])
                cnf.add_clause([-R, -lz[k], -rx[k],  rz[k], -x[k]])
                cnf.add_clause([-R, -rx[k], -rz[k], -x[k], -z[k]])
            else: 
                r = cnf.vars.r
                cnf.vars.r = R
                # Equivalent(R, r ^ ((lx[k] | lz[k]) & (x[k] | z[k]) & ((lx[k] & rx[k] & ~x[k]) | (lz[k] & rz[k] & ~z[k]) | (x[k] & ~lx[k] & ~rx[k]) | (z[k] & ~lz[k] & ~rz[k]))))
                cnf.add_clause([ R,  lx[k],  lz[k], -r])
                cnf.add_clause([ R,  lx[k], -r,  x[k]])
                cnf.add_clause([ R,  lz[k], -r,  z[k]])
                cnf.add_clause([ R, -r,  x[k],  z[k]])
                cnf.add_clause([-R,  lx[k],  lz[k],  r])
                cnf.add_clause([-R,  lx[k],  r,  x[k]])
                cnf.add_clause([-R,  lz[k],  r,  z[k]])
                cnf.add_clause([-R,  r,  x[k],  z[k]])
                cnf.add_clause([ R,  lx[k], -lz[k],  r,  rx[k], -x[k]])
                cnf.add_clause([ R, -lx[k],  lz[k],  r,  rz[k], -z[k]])
                cnf.add_clause([ R, -lx[k],  r, -rx[k],  x[k], -z[k]])
                cnf.add_clause([ R, -lz[k],  r, -rz[k], -x[k],  z[k]])
                cnf.add_clause([ R, -lx[k], -lz[k], -r,  rx[k],  rz[k]])
                cnf.add_clause([-R, -lx[k], -lz[k],  r,  rx[k],  rz[k]])
                cnf.add_clause([ R, -lx[k], -r,  rx[k], -rz[k], -z[k]])
                cnf.add_clause([ R, -lz[k], -r, -rx[k],  rz[k], -x[k]])
                cnf.add_clause([-R,  lx[k], -lz[k], -r,  rx[k], -x[k]])
                cnf.add_clause([-R, -lx[k],  lz[k], -r,  rz[k], -z[k]])
                cnf.add_clause([-R, -lx[k],  r,  rx[k], -rz[k], -z[k]])
                cnf.add_clause([-R, -lz[k],  r, -rx[k],  rz[k], -x[k]])
                cnf.add_clause([ R, -r, -rx[k], -rz[k], -x[k], -z[k]])
                cnf.add_clause([-R,  r, -rx[k], -rz[k], -x[k], -z[k]])
                cnf.add_clause([-R, -lx[k], -r, -rx[k],  x[k], -z[k]])
                cnf.add_clause([-R, -lz[k], -r, -rz[k], -x[k],  z[k]])
            # ((Equivalent(lx[k], rx[k])) & (Equivalent(lz[k], rz[k]))) | ((Equivalent(lx[k], x[k])) & (Equivalent(lz[k], z[k]))) | ((Equivalent(rx[k], x[k])) & (Equivalent(rz[k], z[k])))
            cnf.add_clause([ lx[k],  lz[k],  rx[k], -rz[k], -x[k]])
            cnf.add_clause([ lx[k],  lz[k], -rx[k],  rz[k], -z[k]])
            cnf.add_clause([ lx[k], -lz[k], -rx[k],  x[k],  z[k]])
            cnf.add_clause([-lx[k],  lz[k], -rz[k],  x[k],  z[k]])
            cnf.add_clause([-lx[k],  rx[k],  rz[k],  x[k], -z[k]])
            cnf.add_clause([-lz[k],  rx[k],  rz[k], -x[k],  z[k]])
            cnf.add_clause([ lx[k], -lz[k],  rz[k], -x[k], -z[k]])
            cnf.add_clause([ lx[k], -rx[k], -rz[k], -x[k],  z[k]])
            cnf.add_clause([-lx[k],  lz[k],  rx[k], -x[k], -z[k]])
            cnf.add_clause([ lz[k], -rx[k], -rz[k],  x[k], -z[k]])
            cnf.add_clause([-lx[k], -lz[k],  rx[k], -rz[k],  z[k]])
            cnf.add_clause([-lx[k], -lz[k], -rx[k],  rz[k],  x[k]])
        # Equivalent(lc, rc)
        cnf.add_clause([ lc, -rc])
        cnf.add_clause([-lc,  rc])

        cnf.vars.x = Xs
        cnf.vars.z = Zs
    



    def AMO(cnf, var_list):
        assert None not in var_list
        # at least one:
        cnf.add_clause(var_list)
        # at most one:
        [cnf.add_clause([-var_list[a],-var_list[b]]) for a in range(len(var_list)) for b in range(a+1, len(var_list))]
    


    def SynLayer2CNF(cnf):
        n = cnf.n + cnf.ancilas
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
        cg = [[None for _ in range(n)] for _ in range(n)]
        idg = [None for _ in range(n)]
        for k in range(n):
            idg[k] = cnf.add_var(syn_gate_pick = True, Name = 'id', bits = [k])
            hg = cnf.add_var(syn_gate_pick = True, Name = 'h', bits = [k])
            td = cnf.add_var(syn_gate_pick = True, Name = 'tdg', bits = [k])
            tg = cnf.add_var(syn_gate_pick = True, Name = 't', bits = [k])
            # Implies(idg[k], ~R[k])
            cnf.add_clause([-R[k], -idg[k]])
            # Implies(idg[k], Equivalent(X[k], x[k]))
            cnf.add_clause([ X[k], -idg[k], -x[k]])
            cnf.add_clause([-X[k], -idg[k],  x[k]])
            # Implies(idg[k], Equivalent(Z[k], z[k]))
            cnf.add_clause([ Z[k], -idg[k], -z[k]])
            cnf.add_clause([-Z[k], -idg[k],  z[k]])
            # Implies(idg[k], ~U[k])
            cnf.add_clause([-U[k], -idg[k]])
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
            # Implies(td, Equivalent(R[k], Z[k] & x[k] & ~z[k]))
            cnf.add_clause([-R[k],  Z[k], -td])
            cnf.add_clause([-R[k], -td,  x[k]])
            cnf.add_clause([-R[k], -td, -z[k]])
            cnf.add_clause([ R[k], -Z[k], -td, -x[k],  z[k]])
            # Implies(tg, Equivalent(R[k], x[k] & z[k] & ~Z[k]))
            cnf.add_clause([-R[k], -tg,  x[k]])
            cnf.add_clause([-R[k], -tg,  z[k]])
            cnf.add_clause([-R[k], -Z[k], -tg])
            cnf.add_clause([ R[k],  Z[k], -tg, -x[k], -z[k]])
            # Implies(td | tg, Equivalent(X[k], x[k]))
            cnf.add_clause([ X[k], -td, -x[k]])
            cnf.add_clause([ X[k], -tg, -x[k]])
            cnf.add_clause([-X[k], -td,  x[k]])
            cnf.add_clause([-X[k], -tg,  x[k]])
            # x[k] | (Implies(td | tg, Equivalent(Z[k], z[k])))
            cnf.add_clause([ Z[k], -td,  x[k], -z[k]])
            cnf.add_clause([ Z[k], -tg,  x[k], -z[k]])
            cnf.add_clause([-Z[k], -td,  x[k],  z[k]])
            cnf.add_clause([-Z[k], -tg,  x[k],  z[k]])
            # Implies(td | tg, Equivalent(U[k], x[k]))
            cnf.add_clause([ U[k], -td, -x[k]])
            cnf.add_clause([ U[k], -tg, -x[k]])
            cnf.add_clause([-U[k], -td,  x[k]])
            cnf.add_clause([-U[k], -tg,  x[k]])
            c = k
            for t in range(n):
                if t!=c:
                    cg[c][t] = cnf.add_var(syn_gate_pick = True, Name = 'cx', bits = [c,t])
                    # Implies(cg[c][t], Equivalent(X[c], x[c]))
                    cnf.add_clause([ X[c], -cg[c][t], -x[c]])
                    cnf.add_clause([-X[c], -cg[c][t],  x[c]])
                    # Implies(cg[c][t], Equivalent(X[t], x[c] ^ x[t]))
                    cnf.add_clause([ X[t], -cg[c][t],  x[c], -x[t]])
                    cnf.add_clause([ X[t], -cg[c][t], -x[c],  x[t]])
                    cnf.add_clause([-X[t], -cg[c][t],  x[c],  x[t]])
                    cnf.add_clause([-X[t], -cg[c][t], -x[c], -x[t]])
                    # Implies(cg[c][t], Equivalent(Z[c], z[c] ^ z[t]))
                    cnf.add_clause([ Z[c], -cg[c][t],  z[c], -z[t]])
                    cnf.add_clause([ Z[c], -cg[c][t], -z[c],  z[t]])
                    cnf.add_clause([-Z[c], -cg[c][t],  z[c],  z[t]])
                    cnf.add_clause([-Z[c], -cg[c][t], -z[c], -z[t]])
                    # Implies(cg[c][t], Equivalent(Z[t], z[t]))
                    cnf.add_clause([ Z[t], -cg[c][t], -z[t]])
                    cnf.add_clause([-Z[t], -cg[c][t],  z[t]])
                    # Implies(cg[c][t], Equivalent(R[c], x[c] & z[t] & (z[c] ^ ~x[t])))
                    cnf.add_clause([-R[c], -cg[c][t],  x[c]])
                    cnf.add_clause([-R[c], -cg[c][t],  z[t]])
                    cnf.add_clause([-R[c], -cg[c][t],  x[t], -z[c]])
                    cnf.add_clause([-R[c], -cg[c][t], -x[t],  z[c]])
                    cnf.add_clause([ R[c], -cg[c][t], -x[c],  x[t],  z[c], -z[t]])
                    cnf.add_clause([ R[c], -cg[c][t], -x[c], -x[t], -z[c], -z[t]])
                    # Implies(cg[c][t], ~R[t])
                    cnf.add_clause([-R[t], -cg[c][t]])
                    # Implies(cg[c][t], ~U[c])
                    cnf.add_clause([-U[c], -cg[c][t]])
                    # Implies(cg[c][t], ~U[t])
                    cnf.add_clause([-U[t], -cg[c][t]])
        for k in range(n):
            gate_controlers = [idg[k], hg, td, tg]+[cg[i][k] for i in range(n) if i!=k]+[cg[k][i] for i in range(n) if i!=k]
            pauli2cnf.AMO(cnf, gate_controlers)

            l_idg = cnf.get_syn_var_last_layer(Name ='id', bit = k)
            l_hg = cnf.get_syn_var_last_layer(Name ='h', bit = k)
            l_tg = cnf.get_syn_var_last_layer(Name ='t', bit = k)
            l_td = cnf.get_syn_var_last_layer(Name ='tdg', bit = k)

            if cnf.syn_gate_layer>1:
                assert None not in [l_idg, idg[k], l_hg, l_tg, l_td]
                cgs = [cg[k][i] for i in range(n) if i!=k]
                assert None not in cgs
                cnf.add_clause(cgs + [idg[k], -l_idg])
                # Implies(l_hg, ~hg)
                cnf.add_clause([-hg, -l_hg])
                # Implies(l_tg, ~td)
                cnf.add_clause([-l_tg, -td])
                # Implies(l_td, ~tg)
                cnf.add_clause([-l_td, -tg])

        cnf.vars.x[:n] = X
        cnf.vars.z[:n] = Z

