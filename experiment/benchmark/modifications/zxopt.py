import pyzx, io, sys

c = pyzx.Circuit.load(sys.argv[1])
g = c.to_graph()
pyzx.simplify.full_reduce(g, quiet=False) # simplifies the Graph in-place, and show the rewrite steps taken.
c_opt = pyzx.extract_circuit(g.copy())
c_opt = c_opt.to_basic_gates()
qasm = io.StringIO()
# print(c.to_qasm())
qasm.write(c_opt.to_qasm())
with open(sys.argv[2], 'w') as the_file:
    the_file.write(qasm.getvalue())