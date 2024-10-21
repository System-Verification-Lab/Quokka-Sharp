from subprocess import Popen, PIPE
import argparse
import os, sys
import json


def main(args):
    
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)

    qasmfile    = args.filename    
    meas        = args.measurement
    result      = open("results.txt",'a')

    script_list = ["sim_wmc.py", "sim_quizx.py", "sim_quasimodo.py"]    
    res_list = dict()
    for script in script_list:
        arg_list = ["python3.11", script, qasmfile, "-m", meas]
        if script == "sim_quasimodo.py":
                arg_list = ['cd', 'qsmd', '&&'] + arg_list + ['&&','cd', '..']
        if script == "sim_wmc.py":
            for basis in ['com', 'pauli']:
                p = os.popen(" ".join(arg_list + ['-b', basis]))
                res = p.read()
                result.write(script + " " + basis + " ")
                result.write(res)
                res_list[script + " " + basis] = json.loads(res)
        else:
            p = os.popen(" ".join(arg_list))
            res = p.read()
            result.write(script + " ")
            result.write(res)
            res_list[script] = json.loads(res)
            
    key_list = ["sim_wmc.py com", "sim_wmc.py pauli", "sim_quizx.py", "sim_quasimodo.py"]
    error = False
    for i in key_list:
        for j in key_list:
            diff = abs(float(res_list[i]["prob"]) - float(res_list[j]["prob"]))
            if diff > 10e-5 and diff < 10:
                error = True
    if error:
        print(res_list)
    else:
        print(res_list)
        print(res_list["sim_wmc.py com"]["file"])
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Simulating quantum circuits')
    parser.add_argument('filename')
    parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'], default='allzero')
    args = parser.parse_args()
    main(args)