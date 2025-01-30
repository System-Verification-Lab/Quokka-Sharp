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

Quokka# provides three kinds of funcionalities: one is to simulate a quantum circuit, 
the second is to check the equivalence of two circuits, and the last is to synthesis a circuit based on a spesification.

We work in one of two posible bases: Pauli or Computations.

For equivalence checking we allow one of 4 techniques for the Pauli basis: "id", "id_2n", "id_noY", "2n"
For equivalence checking check we allow one only 1 technique for the computational basis: "id"
"id": creats a cyclic check, such that the final state is constraind to be identical to the initial state.
"id_2n": uses "id" and add constraits on the initial state such that a basis of size 2*n is checked.
"id_noY": uses "id" and add constraits on the initial state such that there will be no Y.
"2n": makes 2*n independant calls, each checking one initial state in the 2n basis.

Synthsis workes only in the Pauli base. 

Please first set the wanted timeout (in seconds) using export TIMEOUT, for example:
```
export TIMEOUT=3600
```

All the input circuits should be in [QASM format](https://openqasm.com/).
Here are some simple walkthroughs to use the tool. 
The eq_run.py, sim_run.py and syn_run.py (used for the bencmarks) can be used to compare the diffrent variations of the tool and provide further examples. 

```python
import quokka_sharp as qk
import tempfile

# the path of the WMC tool
tool_invocation = "/Users/GPMC/bin/gpmc -mode=1"
'''
Simulation
'''
qasmfile1 = "test.qasm"
# Parse the circuit where the encoding will decompose ccx gate into clifford+t.
circuit1 = qk.encoding.QASMparser(qasmfile1, translate_ccx = True)
# Encode the circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Set the input state to be all-zero state |0...0>.
cnf.leftProjectAllZero()
# Choose firstzero or allzero measurement 
cnf.add_measurement("firstzero")
# Export to benchmarks
cnf.write_to_file("circ.cnf")
prob = qk.Simulate(tool_invocation, cnf)
prob = abs(prob)    # since the tool returns a complex number
                    # if`computational_basis = True` add
                    # prob = prob*prob
print(prob)

'''
Equivalence checking
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Parse another circuit
circuit2 = qk.encoding.QASMparser(qasmfile2, True)
# Get (circuit1)(circuit2)^dagger
circuit2.dagger()
circuit1.append(circuit2)
# Get CNF for the merged circuit (for computational base instaed of pauli, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Users can change the path for the cnf files by setting a different parameter to cnf_file_root, otherwise it would be in the tempfile.
# Users can set a different number N of paralleling processes when the check mode is "2n". The default value would be 16. For other modes, the "N" should be 1.
res = qk.CheckEquivalence(tool_path, cnf, check = "2n", cnf_file_root = tempfile.gettempdir(), N=16)

'''
Synthesis
'''
# Parse the circuits
circuit = qk.encoding.QASMparser(qasmfile, True)
# Get (circuit1)^dagger
circuit.dagger()
# Get CNF for the circuit in Pauli basis
cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
# Users can change the path for the cnf files by setting a different parameter to cnf_file_root, otherwise it would be in the tempfile.
res, weight, sol = qk.Synthesis(tool_path, cnf, cnf_file_root = tempfile.gettempdir())
# The res will be "FOUND" is a solution was found, "CRASH" if there was a problem such as an invalid cnf or not enough mem, "ERROR#" if the tool finished with an error, and  if the tool ran out of time.
# In the case of "TIMEOUT" the best solution found will be returned.
# The weight will give the acived fidelity (should be 1 if "FOUND", less if "TIMEOUT") of the (best) found cuircet.
# Sol will be a string in a qasm file format describing the (best) cuircet found, achiving the mentioned weight.
```

- extention of the encodings
Now the encoding support a universal gate set: CNOT, CZ, H, S, T, RX, RZ.
If you want to add direct encoding of other gates, you should first install the package sympy by
```
pip install sympy
```

and add new encoding in ./encoding/pauli2cnf_py_codegen.py 
or in ./encoding/comput2cnf_py_codegen.py, depending on the base used.
then run one of the following comands corespondingly:

```
python3 pauli2cnf_py_codegen.py>pauli2cnf.py
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
