# import sys, io
# from sympy.logic.boolalg import *
# from sympy.logic import simplify_logic
# from sympy import symbols

# r0    = symbols('r0')
# r3    = symbols('r3')
# x01    = symbols('x01')
# x02    = symbols('x02')
# z01    = symbols('z01')
# z02    = symbols('z02')

# expr1 = r0 ^ (x01 & x02 & (z01 ^ z02))
# expr2 = r0 ^ (x02 & z02) ^ (x01 & x02 & (z02 ^ z01 ^ True)) ^ ((z02 ^ x01) & x02)
# expr3 = (z01 | z02) & (~z01 | ~z02)
# expr4 = z01 ^ z02
# print(expr1.equals(expr2))
# import math
# xlist = [1, 2, 3]
# print([x+1 for  x in xlist])
# import re

# def shift(line):
#     line = re.split('\(|\)', line)
#     line[1] = 1.2
#     line = str(line[0]) + "(" + str(line[1]) + ")" + str(line[2])
#     return line

# string = "rx(pi) q[0];"
# print(shift(string))

# Python3 code to demonstrate
# convert dictionary string to dictionary
# using json.loads()
import json

# initializing string
test_string = '  {"time": 0.2932717800140381 , "result": "False" , "MaxRSS": 16.296875 }'

# printing original string
print("The original string : " + str(test_string))

# using json.loads()
# convert dictionary string to dictionary
res = json.loads(test_string)

# print result
print("The converted dictionary : " + str(res["time"]))
