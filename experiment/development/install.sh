#!/bin/bash

cd ../../
echo "remaking pauli2cnf"
python3 ./quokka_sharp/pauli2cnf_py_codegen.py > ./quokka_sharp/quokka_sharp/encoding/pauli2cnf.py
echo "remaking comput2cnf"
python3 ./quokka_sharp/comput2cnf_py_codegen.py > ./quokka_sharp/quokka_sharp/encoding/comput2cnf.py 

pip install ./quokka_sharp --force-reinstall 

cd -