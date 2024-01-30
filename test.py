import copy
a = [1,3,3]
b = copy.deepcopy(a)
a.append(4)
print(b)