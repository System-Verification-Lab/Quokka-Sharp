# Quokka-Sharp
## Prerequisite

- Install GPMC

Follow instructions in [GPMC git](https://git.trs.css.i.nagoya-u.ac.jp/k-hasimt/GPMC) to install GPMC.
Set `gpmc` binary file path to your environment path, for example,
```
 export PATH=$PATH:$HOME/GPMC/build
```
- Install pip
- Install sympy
```
pip install sympy
```

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

- simulating quantum circuits

```python
import quokka-sharp as qk
  # the input circuit should be in QASM format
  # measure the first qubit with computational basis
  res = qk.Measure("circ.qasm", "firstzero")
  print(res.prob)
  # measure the all qubits all zero basis state |0...0>
  res = qk.Measure("circ.qasm", "allzero")
  print(res.prob)
```
- circuit equivalence check

```python
import quokka-sharp as qk
  # the input circuit should be in QASM format
  # check the equivalence of two circuits circ1.qasm and circ2.qasm
  res = qk.EQcheck("circ1.qasm", "circ2.qasm")
  print(res.equivalence)
```
