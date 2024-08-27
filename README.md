# Quokka-Sharp
## Prerequisite

- Install GPMC

Follow instructions in [GPMC git](https://git.trs.css.i.nagoya-u.ac.jp/k-hasimt/GPMC) to install GPMC.

- Install pip

## INSTALLATION

and then you can install Quokka# as a python module via pip:
```
pip install quokka_sharp
```

## Usage

Quokka# provides two kinds of funcionalities: one is to simulate a quantum circuit, 
the other is to check the equivalence of two circuits.

We work in one of two posible bases: Pauli or Computations.

For equivalence checking we allow one of 4 techniques for the Pauli basis: "id", "id_2n", "id_noY", "2n"
For equivalence checking check we allow one only 1 technique for the computational basis: "id"
"id": creats a cyclic check, such that the final state is constraind to be identical to the initial state.
"id_2n": uses "id" and add constraits on the initial state such that a basis of size 2*n is checked.
"id_noY": uses "id" and add constraits on the initial state such that there will be no Y.
"2n": makes 2*n independant calls, each checking one initial state in the 2n basis.

Please first set the wanted timeout (in seconds) using export TIMEOUT, for example:
```
export TIMEOUT=3600
```

All the input circuits should be in [QASM format](https://openqasm.com/).
Here are some simple walkthroughs to use the tool. 
The eq_run.py and sim_run.py (used for the bencmarks) can be used to compare the diffrent variations of the tool and provide further examples. 

```python
import quokka_sharp as qk

# the path of the WMC tool
tool_invocation = "/Users/GPMC/bin/gpmc -mode=1"
'''
Simulation
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Set the input state to be all zero state.
cnf.leftProjectAllZero()
# Encode the circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Choose firstzero or allzero
cnf.add_measurement("firstzero")
# Export to benchmarks
cnf.write_to_file("circ.cnf")
prob = qk.Simulate(tool_invocation, "circ.cnf")
prob = abs(prob) # since the tool returns a complex number
## if `computational_basis = True` add
# prob = prob*prob
print(prob)

'''
Equivalence checking
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Parse another circuit
circuit2 = qk.encoding.QASMparser(qasmfile2, True)
# Get (circuit1)^dagger(circuit2)
circuit2.dagger()
circuit1.append(circuit2)
# Get CNF for the merged circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
res = qk.CheckEquivalence(tool_path, cnf, check = "id")
```

- extention of the encodings
Now the encoding support a universal gate set: CNOT, CZ, H, S, T, RX, RZ.
If you want to add direct encoding of other gates, you should first install the package sympy by
```
pip install sympy
```

and add new encoding in ./encoding/cliffordt2cnf_py_codegen.py 
or in ./encoding/comput2cnf_py_codegen.py, depending on the base used.
then run one of the following comands corespondingly:

```
python3 cliffordt2cnf_py_codegen.py>cliffordt2cnf.py
```
or
```
python3 comput2cnf_py_codegen.py>comput2cnf.py
```
## Benchmarks

Users can test the equivalence checking functionality of the tool by running eq_bench.sh under the folder experiment:
```
./eq_bench.sh
```
and test the simulation of the tool by running
```
./sim_bench.sh
```
This script tests all both random circuits and quantum algorithms under ./experiment/benchmark with the equivalent cases (optimized circuits) and three kinds of errors: 1 gate-missing, bit flip in CNOT gate and phase shift in a rotation gate (with shifting error 1e-4 and 1e-7).
