import numpy as np

I = np.matrix([[1, 0], [0, 1]])
X = np.matrix([[0, 1], [1, 0]])
Z = np.matrix([[1, 0], [0, -1]])
Y = np.matrix([[0, 1j], [-1j, 0]])
H = np.matrix([[1, 1], [1, -1]]) /np.sqrt(2)
S = np.matrix([[1, 0], [0, np.exp(1j*np.pi/2)]])
T = np.matrix([[1, 0], [0, np.exp(1j*np.pi/4)]])
Tdg = np.matrix([[1, 0], [0, np.exp(-1j*np.pi/4)]])


CX = np.zeros([4,4])
for i in [0,1]: 
    CX[i,i] =1
CX[2,3] =1
CX[3,2] =1

XC = np.zeros([4,4])
for i in [0,2]: 
    XC[i,i] =1
XC[1,3] =1
XC[3,1] =1

CCX = np.zeros([8,8])
for i in [0,1,2,3,4,5 ]: 
    CCX[i,i] =1
CCX[6,7] =1
CCX[7,6] =1


def dot2(A, B):
    return np.tensordot(A,B, axes=1)
def dot3(A, B, C):
    return np.tensordot(np.tensordot(A,B, axes=1), C, axes=1)


P_char_to_mat = {
    "I": I,
    "X": X,
    "Y": Y,
    "Z": Z,
}
P2_char_to_mat_plus = {A+B: np.kron(a, b) for A,a in P_char_to_mat.items() for B,b in P_char_to_mat.items()}
P2_char_to_mat_minus = {"-"+A+B: -np.kron(a, b) for A,a in P_char_to_mat.items() for B,b in P_char_to_mat.items()}
P2_char_to_mat = {**P2_char_to_mat_plus, **P2_char_to_mat_minus}

in_mat = "XX"
comps = ["II", "IZ", "ZI", "-ZZ"]
sum = np.zeros([4,4])
sum_string = ""
for l in comps:
    for r in comps:
        print(f"{l}*{in_mat}*{r} = ", end="")
        res = dot3(P2_char_to_mat[l], P2_char_to_mat[in_mat], P2_char_to_mat[r])
        # print(res)
        res_str = "unknown"
        for P, p in P2_char_to_mat_plus.items():
            if np.all(res == p):
                res_str = P
            if np.all(res == -p):
                res_str = "-"+P
            if np.all(res == 1j * p):
                res_str = "j"+P
            if np.all(res == -1j * p):
                res_str = "-j"+P
        print(res_str)
        sum += res
print(sum)
print(sum_string)
        
                


P=[X,Y,Z]
for i in range(3):
    prod = 1j*dot2(P[(i+1)%3],P[(i+2)%3])
    assert(np.all(P[i]==prod))
    
    prod = -1j*dot2(P[(i+2)%3],P[(i+1)%3])
    assert(np.all(P[i]==prod))
    
    prod = -1*dot3(P[(i+1)%3], P[i], P[(i+1)%3])
    assert(np.all(P[i]==prod))
    
    prod = -1*dot3(P[(i+2)%3], P[i], P[(i+2)%3])
    assert(np.all(P[i]==prod))
    
    prod = dot3(P[i], P[(i+1)%3], P[(i+2)%3])
    assert(np.all(-1j*I==prod))
    
    prod = dot3(P[(i+2)%3], P[i], P[i])
    assert(np.all(P[(i+2)%3]==prod))

    prod = dot3(P[(i+1)%3], P[i], P[i])
    assert(np.all(P[(i+1)%3]==prod))
    
    prod = dot3(P[i], P[i], P[(i+2)%3])
    assert(np.all(P[(i+2)%3]==prod))

    prod = dot3(P[i], P[i], P[(i+1)%3])
    assert(np.all(P[(i+1)%3]==prod))



import json

with open('./pauli_compositions.json', 'r') as file:
    comp_dicts = json.load(file)

for d in comp_dicts.values():
    qubits = d["qubits"]
    gate = np.zeros([2**qubits, 2**qubits], dtype=complex)
    for p_str, alpha in d["composition"].items():
        a = complex(alpha)
        assert(len(p_str) == qubits)
        m = 1
        for p_char in p_str:
            p_mat = P_char_to_mat[p_char]
            m = np.kron(m, p_mat)
        gate += a*m
    if "matrix" in d.keys():
        m = np.array(d['matrix'], dtype=complex)
        if np.all( m == gate):
            print(f"{d["gate"]} \t passed")
        else:
            print(f"{d["gate"]} \t FAILED")
            print(m)
            print("vs")
            print(gate)
    else:
        print(f"gate: {d['gate']}")
        print(f"matrix: {np.array2string(gate, separator=', ', floatmode='unique')}")



# CCX = np.zeros([8,8])
# for i in [0,1,2, 4,5,6 ]: 
#     CCX[i,i] =1
# CCX[3,7] =1
# CCX[7,3] =1

# CX = np.zeros([4,4])
# for i in [0,2]: 
#     CX[i,i] =1
# CX[1,3] =1
# CX[3,1] =1
# ccx_states = []
# ccx_states.append(      np.kron(np.kron(I, I), I))
# ccx_states.append( 0.25*np.kron(np.kron(X, I), I))
# ccx_states.append(-0.25*np.kron(np.kron(X, I), Z))
# ccx_states.append(-0.25*np.kron(np.kron(X, Z), I))
# ccx_states.append( 0.25*np.kron(np.kron(X, Z), Z))
# ccx_states.append(-0.25*np.kron(np.kron(I, I), I))
# ccx_states.append( 0.25*np.kron(np.kron(I, I), Z))
# ccx_states.append( 0.25*np.kron(np.kron(I, Z), I))
# ccx_states.append(-0.25*np.kron(np.kron(I, Z), Z))
# # ccx_states.append(1/4 * np.kron(np.kron(X-I, I-Z), I-Z))
# print(np.all(CCX==np.sum(ccx_states, axis=0)))


# CCX = IxIxI + 1/4 (X-I)x(I-Z)x(I-Z) 
# CXX XZxXZxXZ CXX = XZxXZxXZ + 1/4 (X(-Z)-XZ)x(XZ-(-X)Z)x(XZ-(-X)Z)
#                                       Z           X          X
# CXX XZxXZxXZ CXX = XZxXZxXZ + 1/4   (-2XZ)    x(+2XZ)    x(+2XZ)
# if Z X X:
# CXX XZxXZxXZ CXX = -XZxXZxXZ 
# else :
# Id

# q_states = [I, X, Z]
# for A in q_states:
#     for B in q_states:
#         for C in q_states:
#             s = np.kron(np.kron(A, B), C)
#             result = np.tensordot(np.tensordot(CCX, s, axes=1), CCX, axes=1)
#             # Equivalent(X, x[t] ^ (x[c] & x[k]))
#             if np.all(B==X) and np.all(C==X):
#                 At = I
#                 assert np.all(s==-result)
#             else:
#                 print(A)
#                 print(B)
#                 print(C)
#                 print(s)
#                 print(result)
#                 assert np.all(s==result)

            

out_states = []

# in_state = np.kron(np.kron(X, X), X)
# out_states.append(1/2 * np.kron(np.kron(I+X, X), X))
# out_states.append(1/2 * np.kron(np.kron(I-X, Y), Y))

# in_state = np.kron(np.kron(Z, Z), Z)
# out_states.append(1/2 *np.kron(np.kron(Z, I+Z), I+Z))
# out_states.append(-np.kron(np.kron(Z, I), I))

# in_state = np.kron(np.kron(I, I), I)
# out_states.append(np.kron(np.kron(I, I), I))

# in_state = np.kron(np.kron(I, I), X)
# out_states.append(1/2 * np.kron(np.kron(I, I+Z), X))
# out_states.append(1/2 * np.kron(np.kron(X, I-Z), X))

# in_state = np.kron(np.kron(I, X), I)
# out_states.append(1/2 * np.kron(np.kron(I, X), I+Z))
# out_states.append(1/2 * np.kron(np.kron(X, X), I-Z))

# in_state = np.kron(np.kron(X, I), I)
# out_states.append(np.kron(np.kron(X, I), I))

# in_state = np.kron(np.kron(Z, I), I)
# out_states.append( 1/2*np.kron(np.kron(Z, I), I))
# out_states.append( 1/2*np.kron(np.kron(Z, I), Z))
# out_states.append( 1/2*np.kron(np.kron(Z, Z), I))
# out_states.append(-1/2*np.kron(np.kron(Z, Z), Z))

# in_state = np.kron(np.kron(I, I), Z)
# out_states.append(np.kron(np.kron(I, I), Z))

# in_state = np.kron(np.kron(I, Z), I)
# out_states.append(np.kron(np.kron(I, Z), I))

# in_state = np.kron(np.kron(I, Z), Z)
# out_states.append(np.kron(np.kron(I, Z), Z))

# result = np.tensordot(np.tensordot(CCX, in_state, axes=1), CCX, axes=1)
# print(result)
# sum = np.zeros([8,8])
# for out in out_states:
#     print(out)
#     sum = np.add(sum, out)
# print(sum)
# print(np.all(result==np.sum(out_states, axis=0)))


# out_states = []

# in_state = np.kron(np.kron(I, I), X)
# out_states.append(1/2 * np.kron(np.kron(I, I+Z), X))
# out_states.append(1/2 * np.kron(np.kron(X, I-Z), X))

# in_state = np.kron(I, X)
# out_states.append(np.kron(X, X))

# result = np.tensordot(np.tensordot(CX, in_state, axes=1), CX, axes=1)
# print(result)
# sum = np.zeros([4,4])
# for out in out_states:
#     print(out)
#     sum = np.add(sum, out)
# print(sum)
# print(np.all(result==np.sum(out_states, axis=0)))