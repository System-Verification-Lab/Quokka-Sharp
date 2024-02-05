import sys, io
from sympy.logic.boolalg import *
from sympy.logic import simplify_logic
from sympy import symbols


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
Fr = Equivalent(R, r ^ (x[c] & z[t] & (x[t] ^ ~z[c])) ^ ((x[c] ^ x[t]) & (z[c] ^ z[t]) & (x[t] ^ ~z[c])))
print(to_cnf(Fr))