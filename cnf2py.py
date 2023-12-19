import sys, io
from sympy.logic.boolalg import *
from sympy.logic import simplify_logic
from sympy import symbols
from types import MethodType

c = 0
t = 1
k = 2

u    = symbols('u')
u1    = symbols('u1')
u2    = symbols('u2')
r    = symbols('r')
R    = symbols('R')

x = [0,0,0]
z = [0,0,0]
x[k] = symbols("x[k]")
x[c] = symbols("x[c]")
x[t] = symbols("x[t]")
z[k] = symbols("z[k]")
z[c] = symbols("z[c]")
z[t] = symbols("z[t]")

X    = symbols('X')
Z    = symbols('Z')


def strstrip(item1):
    return item1.lstrip(' ()~')

def to_py(s):
    for a in s.split("&"):
        print("    cnf.add_clause([", end="")
        l = a.split("|")
        l.sort(key=strstrip)
        for x in l:
            b = x.strip(' ()')
            if b.startswith('~'):
                b = b.replace('~', '-')
            else:
                b = " "+ b
            print(b, end="")
            if x != l[-1]:
                print(", ", end="")
        print("])")


def new_m(self):
    print("as")

def main():

    # H:
    F = Equivalent(R, r ^ (x[k] & z[k]) )
    F.__str__ = MethodType(new_m, F)

    C = to_cnf(F)
    print("# "+ str(F))
    print("def H2CNF(tab, cnf, _, k):")
    print("    r = tab.r")
    print("    x = tab.x")
    print("    z = tab.z")
    print("    R = cnf.add_var()")
    to_py(	   str(C))
    print("    x[k], z[k] = z[k], x[k]")
    print()
    print("    tab.r = R")
    print()

    # S:
    Fr = Equivalent(R, (r ^ x[k] & z[k] ))
    Cr = to_cnf(Fr)

    Fz = Equivalent(Z, x[k] ^ z[k])
    Cz = to_cnf(Fz)

    print("# "+ str(Fr))
    print("# "+ str(Fz))
    print("def S2CNF(tab, cnf, _, k):")
    print("    r = tab.r")
    print("    x = tab.x")
    print("    z = tab.z")
    print("    R = cnf.add_var()")
    to_py(	   str(Cr))
    print()
    print("    Z = cnf.add_var()")
    to_py(	   str(Cz))
    print()
    print("    tab.z[k] = Z")
    print("    tab.r = R")
    print()

    #T
    Fr = Equivalent(R, r ^ (x[k] & z[k] & ~Z))
    Cr = to_cnf(Fr)

    Fx = Equivalent(X, x[k])
    Cx = to_cnf(Fx)

    Fz = x[k] | Equivalent(Z, z[k])
    Cz = to_cnf(Fz)

    Fu = Equivalent(u, x[k])
    Cu = to_cnf(Fu)

    print("# "+ str(Fr))
    print("# "+ str(Fx))
    print("# "+ str(Fz))
    print("# "+ str(Fu))
    print("def T2CNF(tab, cnf, t, k):")
    print("    r = tab.r")
    print("    x = tab.x")
    print("    z = tab.z")
    print("    R = cnf.add_var()")
    print("    Z = cnf.add_var()")
    print("    X = cnf.add_var()")
    to_py(	   str(Cr))
    print()
    to_py(	   str(Cx))
    print()
    to_py(	   str(Cz))

    print()   
    print("    u = cnf.add_var()")
    to_py(	   str(Cu))
    print("    cnf.add_weight(u, 0.707106781186548)")
    print()   

    print("    tab.x[k] = X")
    print("    tab.z[k] = Z")
    print("    tab.r = R")
    print()

    #CNOT
    Fr = Equivalent(R, r ^ (x[c] & z[t] & (~x[t] ^ z[c])))
    Cr = to_cnf(Fr)

    Fx = Equivalent(X, x[t] ^ x[c])
    Cx = to_cnf(Fx)

    Fz = Equivalent(Z, z[t] ^ z[c])
    Cz = to_cnf(Fz)

    print("# "+ str(Fr))
    print("# "+ str(Fx))
    print("# "+ str(Fz))
    print("def CNOT2CNF(tab, cnf, _, c, t):")
    print("    r = tab.r")
    print("    x = tab.x")
    print("    z = tab.z")
    print("    R = cnf.add_var()")
    print("    Z = cnf.add_var()")
    print("    X = cnf.add_var()")
    to_py(	   str(Cr))
    print()
    to_py(	   str(Cx))
    print()
    to_py(	   str(Cz))
    print("    tab.x[t] = X")
    print("    tab.z[c] = Z")
    print("    tab.r = R")
    print()

    #RZ
    Fr = Equivalent(R, r ^ (x[k] & z[k] & ~Z))
    Cr = to_cnf(Fr)

    Fx = Equivalent(X, x[k])
    Cx = to_cnf(Fx)

    Fz = x[k] | Equivalent(Z, z[k])
    Cz = to_cnf(Fz)

    Fu1 = Equivalent(u1, x[k] & ((z[k] & Z)) | (~z[k] & ~Z))
    Cu1 = to_cnf(Fu1)

    Fu2 = Equivalent(u2, x[k] & ((~z[k] & Z)) | (z[k] & ~Z))
    Cu2 = to_cnf(Fu2)

    print("# "+ str(Fr))
    print("# "+ str(Fx))
    print("# "+ str(Fz))
    print("# "+ str(Fu))
    print("def RZ2CNF(tab, cnf, t, k, cos_theta, sin_theta):")
    print("    r = tab.r")
    print("    x = tab.x")
    print("    z = tab.z")
    print("    R = cnf.add_var()")
    print("    Z = cnf.add_var()")
    print("    X = cnf.add_var()")
    to_py(	   str(Cr))
    print()
    to_py(	   str(Cx))
    print()
    to_py(	   str(Cz))

    print()   
    print("    u1 = cnf.add_var()")
    to_py(	   str(Cu1))
    print("    cnf.add_weight(u1, cos_theta)")
    print()   

    print("    u2 = cnf.add_var()")
    to_py(	   str(Cu2))
    print("    cnf.add_weight(u2, sin_theta)")  

    print("    tab.x[k] = X")
    print("    tab.z[k] = Z")
    print("    tab.r = R")
    print()

    #RX
    Fr = Equivalent(R, r ^ (z[k] & x[k] & X))
    Cr = to_cnf(Fr)

    Fx = Equivalent(Z, z[k])
    Cx = to_cnf(Fx)

    Fz = z[k] | Equivalent(X, x[k])
    Cz = to_cnf(Fz)

    Fu1 = Equivalent(u1, z[k] & ((x[k] & X)) | (~x[k] & ~X))
    Cu1 = to_cnf(Fu1)

    Fu2 = Equivalent(u2, z[k] & ((~x[k] & X)) | (x[k] & ~X))
    Cu2 = to_cnf(Fu2)

    print("# "+ str(Fr))
    print("# "+ str(Fx))
    print("# "+ str(Fz))
    print("# "+ str(Fu))
    print("def RX2CNF(tab, cnf, t, k, theta, cos_theta, sin_theta):")
    print("    r = tab.r")
    print("    x = tab.x")
    print("    z = tab.z")
    print("    R = cnf.add_var()")
    print("    Z = cnf.add_var()")
    print("    X = cnf.add_var()")
    to_py(	   str(Cr))
    print()
    to_py(	   str(Cx))
    print()
    to_py(	   str(Cz))

    print()   
    print("    u1 = cnf.add_var()")
    to_py(	   str(Cu1))
    print("    cnf.add_weight(u1, cos_theta)")
    print()   

    print("    u2 = cnf.add_var()")
    to_py(	   str(Cu2))
    print("    cnf.add_weight(u2, sin_theta)")

    print("    tab.x[k] = X")
    print("    tab.z[k] = Z")
    print("    tab.r = R")
    print()
  


if __name__ == "__main__":
    main()