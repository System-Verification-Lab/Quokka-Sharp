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

All the input circuits should be in [QASM format](https://openqasm.com/).
Here are some simple walkthroughs to use the tool.

```python
    from quokka_sharp.encoding import QASMparser, QASM2CNF
    from quokka_sharp import EQ2CNF, EQ_check
    from quokka_sharp import Sim2CNF, Sim
    # the path of the WMC tool
    tool_path = "/Users/GPMC/bin/gpmc"
    # cnf_file_root = " "
    '''
    Simulation
    '''
    # Parse the circuit
    circuit1 = QASMparser(qasmfile1, True)
    # Encode the circuit
    cnf_circ1 = QASM2CNF(circuit1)
    
    # Add constraints of measurement outcome 0 on the first qubit and initial state
    cnf_firstzero = Sim2CNF(cnf_circ1, "firstzero")
    # Write to weighted cnf file 
    cnf_firstzero.write_to_file("circ1_firstzero.cnf")
    # Solving cnf file by a given tool
    res = Sim(tool_path, cnf_firstzero, "circ1_firstzero.cnf", "firstzero")
    print(res.prob)

    # Add constraints of measurement outcome 0 on the all qubits and initial state
    cnf_allzero = Sim2CNF(cnf_circ1, "allzero")
    # Write to weighted cnf file 
    cnf_allzero.write_to_file("circ1_allzero.cnf")
    # Solving cnf file by a given tool
    res = Sim(tool_path, cnf_allzero, "circ1_allzero.cnf", "allzero")
    print(res.prob)    
    
    '''
    Equivalence checking
    '''

    # Parse another circuit
    circuit2 = QASMparser(qasmfile2, True)
    # Get (circuit1)^dagger(circuit2)
    circuit1.dagger()
    circuit1.merge(circuit2)
    # Get CNF for the merged circuit
    cnf = QASM2CNF(circuit1)

    # write to the cnf_file_list containing 2N cnf files under given root (tempfile.gettempdir() by default)
    # N is the number of qubits
    cnf_file_list = EQ2CNF(cnf, cnf_file_root="./")
    res = EQ_check(tool_path, cnf_file_list)
    print(res.result)
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

Users can test the equivalence checking functionality of the tool by running eq_bench.sh under the folder quokka-sharp.
```
./eq_bench.sh
```
This script tests all both random circuits and quantum algorithms under ./quokka_sharp/benchmark with the equivalent cases (optimized circuits) and three kinds of errors: 1 gate-missing, bit flip in CNOT gate and phase shift in a rotation gate (with shifting error 1e-4 and 1e-7).
