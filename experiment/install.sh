#!/bin/bash

cd ../ 

python3 ./quokka_sharp/pauli2cnf_py_codegen.py > ./quokka_sharp/quokka_sharp/encoding/pauli2cnf.py
python3 ./quokka_sharp/comput2cnf_py_codegen.py > ./quokka_sharp/quokka_sharp/encoding/comput2cnf.py 

pip install ./quokka_sharp --force-reinstall 

cd ./experiment/