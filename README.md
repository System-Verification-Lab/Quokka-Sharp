# Quokka-Sharp
## Prerequisite

- Install GPMC

Follow instructions in [GPMC git](https://github.com/System-Verification-Lab/GPMC) to install GPMC.

- Install GPMC

Follow instructions in [d4v2 git](https://github.com/crillab/d4v2) to install GPMC.

- Install pip 


## INSTALLATION

and then you can install Quokka# as a python module via pip:
```
pip install quokka_sharp
```

## Usage

Quokka# provides four kinds of funcionalities: 
* **Simulate** a quantum circuit.
* **Verify** a quantum circuit with pre- and post- conditions.
* check **Equivalence** of two quantum circuits.
* **Synthesis** a circuit based on a spesification

We work in one of two posible bases: Pauli or Computational.

For equivalence checking we suppeort multiple techniques. 
We recomend the user to use "linear" for the Pauli basis and "cyclic" for the Computational basis. 

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

# input files
qasmfile1 = "test1.qasm"
qasmfile2 = "test2.qasm"

'''
Simulation
'''
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
# Get CNF for the circuit in Pauli basis (can change to True for the computational basis)
cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
# Users can change the path for the cnf files by setting a different parameter to cnf_file_root, otherwise it would be in the tempfile.
res, weight, sol = qk.Synthesis(tool_path, cnf, cnf_file_root = tempfile.gettempdir())
# The res will be "FOUND" is a solution was found, "CRASH" if there was a problem such as an invalid cnf or not enough mem, "ERROR#" if the tool finished with an error, and  if the tool ran out of time.
# In the case of "TIMEOUT" the best solution found will be returned.
# The weight will give the achieved fidelity (should be 1 if "FOUND", less if "TIMEOUT") of the (best) found circuit.
# Sol will be a string in a qasm file format describing the (best) circuit found, achieving the mentioned weight.

'''
Verification
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Encode the circuit in Pauli basis (can change to True for the computational basis)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Verify for pre and post conditions given in dictionary format
res = qk.Verify(tool_invocation, cnf, precons={0:0}, postcons={0:0})
# The result will be "True" if it conditions hold, "False" if not, or "TIMEOUT" if the tool ran out of time.
```

- extention of the encodings
Now the encoding support a universal gate set: CNOT, CZ, H, S, T, RX, RZ.
If you want to add direct encoding of other gates
add new encoding in ./encoding/pauli2cnf_py_codegen.py 
or in ./encoding/comput2cnf_py_codegen.py, 
depending on the base used.
You will also need to update the ifelse casses at the "QASMparser" function in ./encoding/qasm_parser.py and the "encode_circuit" function in ./encoding/cnf.py.
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
