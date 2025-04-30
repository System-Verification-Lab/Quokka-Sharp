# Quokka-Sharp
## Prerequisites

- Install GPMC solver: Follow instructions in [GPMC git](https://github.com/System-Verification-Lab/GPMC) to install GPMC.

- Install d4max solver: Follow instructions in [d4v2 git](https://github.com/crillab/d4v2) to install d4max.

- Install pip: Follow instructions in [pip Installation](https://pip.pypa.io/en/stable/installation/) to install pip. 


## Instalation

To use Quokka# as-is, you can install it as a Python module via pip:
```
pip install quokka_sharp
```

You can clone this repository for the entire code.

## Usage

Quokka# provides four kinds of functionalities: 
* **Simulate** a quantum circuit.
* **Verify** a quantum circuit with pre- and post- conditions.
* check **Equivalence** of two quantum circuits.
* **Synthesis** a circuit based on a specification

We work in one of two possible bases: Pauli or Computational.

For equivalence checking, we support multiple techniques. 
We recommend using "linear" for the Pauli basis and "cyclic" for the Computational basis. 

Please first set the wanted timeout (in seconds) using export TIMEOUT, for example:
```
export TIMEOUT=3600
```

All the input circuits should be in [QASM format](https://openqasm.com/).
Here are some simple walkthroughs on how to use the tool. 
For more detailed examples, the files run_eq.py, run_sim.py, run_veri.py, and run_syn.py in the Quokka-Sharp/experiment/run_benchmarks/ folder can be used. 

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
# Parse the circuit where the encoding will decompose ccx gate into Clifford+T.
circuit1 = qk.encoding.QASMparser(qasmfile1, translate_ccx = True)
# Encode the circuit (for computational basis, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Set the input state to be the all-zero state |0...0>.
cnf.leftProjectAllZero()
# Add measurement specification. We offer 'allzero' as a parameter for a simple way to specify a measure with all-zero state.
cnf.add_measurement({0:0})
# Export to benchmarks
cnf.write_to_file("circ.cnf")
prob = qk.Simulate(tool_invocation, cnf)
# The result will be a float if the probability was computed,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.

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
# Get CNF for the merged circuit (for computational basis instead of Pauli, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Users can set a different number N of parallel processes when the check mode is "linear". For other modes, "N" should be 1.
res = qk.CheckEquivalence(tool_path, cnf, check = "linear", N=16)
# The result will be "True" if the circuits are equivalent, "False" if not,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.

'''
Verification
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Encode the circuit in Pauli basis (can change to True for the computational basis)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Verify for pre and post conditions given in dictionary format
res = qk.Verify(tool_invocation, cnf, precons={0:0}, postcons={0:0})
# The result will be "True" if the conditions hold, "False" if not,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.

'''
Synthesis
'''
# Change the tool_invocation to be the maximum weighted model counter.
tool_invocation = "./d4v2/build/maxT_static"
# Parse the circuits
circuit = qk.encoding.QASMparser(qasmfile1, True)
# Get (circuit)^dagger
circuit.dagger()
# Get CNF for the circuit in Pauli basis (can change to True for the computational basis)
cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
result, weight, solution, layers = qk.Synthesis(tool_invocation, cnf)
# The result will be "FOUND" if a solution was found, "CRASH" if there was a problem such as an invalid cnf or not enough mem, "ERROR#" if the tool finished with an error, and "TIMEOUT" if the tool ran out of time.
# In the case of "TIMEOUT", the best solution found will be returned.
# weight will give the achieved fidelity (should be 1 if "FOUND", less if "TIMEOUT") of the (best) found circuit.
# solution will be a string in a qasm file format describing the (best) circuit found, achieving the mentioned weight.
# 'layers' is an integer stating the achieved minimal depth
```

## Modifications

### code structure:
The Quokka sharp repository has two main directories. The first directory is named quokka_sharp, and has the source code for the Quokka library. The second directory is named experiments, has examples on how to use the tool and benchmarks to test it.

In the directory qukkora_sharp/quokka_sharp the main functionalities are implemented each in its own file and they use the core libraries defined within the quokka_sharp/quokka_sharp encoding. 



### extension of the encodings:
Advanced users can extend `quokka-sharp` to support more quantum gates than the current gate set.  
To do this, one needs to install [`SymPy`](https://docs.sympy.org/latest/index.html):

```bash
pip install sympy
```
The encoding supports a universal gate set: CNOT, CZ, H, S, T, RX, RZ.
To add direct encoding of other gates, add new encoding in Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/pauli2cnf_py_codegen.py or Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/comput2cnf_py_codegen.py, depending on the basis.
Then, update the ifelse cases at the "QASMparser" function in Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/qasm_parser.py and the "encode_circuit" function in Quokka-Sharp/quokka_sharp/quokka_sharp/encoding/cnf.py.
Finally, run one of the following commands correspondingly:

```
python3 pauli2cnf_py_codegen.py>pauli2cnf.py
```
or
```
python3 comput2cnf_py_codegen.py>comput2cnf.py
```

### updating the installation
When changing the core files, Quokka# needs to be reinstalled from the local files. To do that, run:
```
pip install ./quokka_sharp --force-reinstall 
```

## Benchmarks

Users can run benchmarks on the functionalities Quokka# by running the bash script Quokka-Sharp/experiment/run_benchmarks/run_all_wmc.sh with a desired timeout limit, e.g.:
```
Quokka-Sharp/experiment/run_benchmarks/run_all_wmc.sh 10
```

