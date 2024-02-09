import pyzx, io, sys

c = pyzx.Circuit.load(sys.argv[1])
print(c.stats())
g = c.to_graph()
pyzx.full_reduce(g, quiet=False) # simplifies the Graph in-place, and show the rewrite steps taken.
g.normalize() # Makes the graph more suitable for displaying
pyzx.draw(g) # Display the resulting diagram
c_opt = pyzx.extract_circuit(g.copy())
g = c.to_graph()
pyzx.teleport_reduce(g)
c_opt = pyzx.Circuit.from_graph(g) # This function is able to reconstruct a Circuit from a Graph that looks sufficiently like a Circuit
qasm = io.StringIO()
qasm.write(c.to_qasm())
with open("./opt" + sys.argv[1], 'w') as the_file:
    the_file.write(qasm.getvalue())