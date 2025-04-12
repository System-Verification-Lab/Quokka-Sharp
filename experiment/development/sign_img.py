from sympy import *
from sympy.logic.boolalg import ANFform

xl, zl = symbols('xl, zl')
xi, zi = symbols('xi, zi')
xr, zr = symbols('xr, zr')

P = []
# {Z, X, I} Y X
P.append(~(xl & zl) & xi & zi & xr & ~zr)
# Y I X
P.append(xl & zl & ~xi & ~zi & xr & ~zr)
# Y X {I,Y,Z}
P.append(xl & zl & xi & ~zi & ~(xr & ~zr))
# {X, I, Y} Z Y
P.append(~(~xl & zl) & ~xi & zi & (xr & zr))
# Z I Y
P.append((~xl & zl) & ~xi & ~zi & (xr & zr))
# Z Y {I,Z}
P.append((~xl & zl) & xi & zi & (~xr))
# {I,Z} X Z
P.append((~xl) & ~xi & ~zi & (~xr & zr))
# X I Z
P.append((xl & ~zl) & ~xi & ~zi & (~xr & zr))
# X Z {I,X}
P.append((xl & ~zl) & ~xi & zi & (~xr))

R = False
for i in range(len(P)):
    R = R | P[i]

to_dnf(R)

print(to_dnf(R))

# c, c1, c2 = symbols('i, i1, i2')

# ~xl 