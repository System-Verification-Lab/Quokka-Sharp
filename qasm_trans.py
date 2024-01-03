import re, sys

def cu1(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)
    qasm_list.append("rz(" + angle +") " + qubits[1] + ";")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";")
    if angle[0] == "-":
        qasm_list.append("rz(" + angle[1:] +") " + qubits[1] + ";")
    else:
        qasm_list.append("rz(" + "-" + angle +") " + qubits[1] + ";")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";")

def ry(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("s " + qubit + ";")
    qasm_list.append("h " + qubit + ";")
    if angle[0] == "-":
        qasm_list.append("rz(" + angle[1:] +") " + qubit + ";")
    else:
        qasm_list.append("rz(" + "-" + angle +") " + qubit + ";")
    qasm_list.append("h " + qubit + ";")
    qasm_list.append("sdg " + qubit + ";")

def p(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rz(" + angle +") " + qubit + ";")
    
def u2(line, qasm_list):
    angle1 = re.findall(r"\((.*?),(.*?)\)",line)[0][0]
    angle2 = re.findall(r"\((.*?),(.*?)\)",line)[0][1]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rz(" + angle1 + ") " + qubit + ";")
    ry("ry(0.5*pi) " + qubit + ";", qasm_list)
    qasm_list.append("rz(" + angle2 + ") " + qubit + ";")

def rzz(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";")
    qasm_list.append("rx(" + angle +") " + qubits[1] + ";")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";")

def rccx(line, qasm_list):
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)    
    qasm_list.append("h " + qubits[0] + ";")
    qasm_list.append("t " + qubits[0] + ";")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[0] + ";")
    qasm_list.append("tdg " + qubits[0] + ";")
    qasm_list.append("cx " + qubits[1] + ", " + qubits[0] + ";")
    qasm_list.append("t " + qubits[0] + ";")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[0] + ";")
    qasm_list.append("tdg " + qubits[0] + ";")
    qasm_list.append("h " + qubits[0] + ";")

def trans(filename):
    qasm_list = []
    with open(filename,"r") as qasm_old:
        for line in qasm_old:
            if "cp" in line or "cu1" in line:
                cu1(line, qasm_list)
            elif "ry" in line:
                ry(line, qasm_list)
            elif "u2" in line:
                u2(line, qasm_list)
            elif "rzz" in line:
                rzz(line, qasm_list)
            elif "p(" in line or "u1" in line:
                p(line, qasm_list)
            elif "rccx" in line :
                rccx(line, qasm_list)
            elif "barrier" in line or "measure" in line:
                print(line)
            else: 
                qasm_list.append(line)
            

    with open(filename + ".qasm", 'w') as file:
        for item in qasm_list:
            file.writelines(item+'\n')
            
if __name__ == "__main__":
    trans(sys.argv[1])