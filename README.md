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

Please first export TIMEOUT as
```
export TIMEOUT=3600
```

All the input circuits should be in [QASM format](https://openqasm.com/).
Here are some simple walkthroughs to use the tool.

```python
import quokka_sharp as qk
import tempfile

# the path of the WMC tool
tool_invocation = "/Users/GPMC/bin/gpmc -mode=1"
'''
Simulation
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Set the input state to be all zero state.
cnf.leftProjectAllZero()
# Encode the circuit
cnf = qk.encoding.QASM2CNF(circuit1)
# Choose firstzero or allzero
cnf.add_measurement("firstzero")
# Export to benchmarks
cnf.write_to_file("circ.cnf")
prob = qk.Simulate(tool_invocation, "circ.cnf")
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
# Get CNF for the merged circuit
cnf = qk.encoding.QASM2CNF(circuit1)
# Users can change the path for the cnf files by setting a different parameter to cnf_file_root, otherwise it would be in the tempfile.
# Users can set a different number N of paralleling processes. The default value is 16.
res = qk.CheckEquivalence(tool_path, cnf, cnf_file_root = tempfile.gettempdir(), N=16)
```

- extention of the encodings
Now the encoding support a universal gate set: CNOT, CZ, H, S, T, RX, RZ.
If you want to add direct encoding of other gates, you should first install the package sympy by
```
pip install sympy
```

and add new encoding in ./encoding/cliffordt2cnf_py_codegen.py,
then run the following command:

```
python3 cliffordt2cnf_py_codegen.py>cliffordt2cnf.py
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
