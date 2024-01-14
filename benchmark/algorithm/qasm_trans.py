import re, sys

def cu1(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)
    qasm_list.append("rz(" + angle +") " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")
    if angle[0] == "-":
        qasm_list.append("rz(" + angle[1:] +") " + qubits[1] + ";\n")
    else:
        qasm_list.append("rz(" + "-" + angle +") " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")

def ry(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("s " + qubit + ";\n")
    qasm_list.append("h " + qubit + ";\n")
    if angle[0] == "-":
        qasm_list.append("rz(" + angle[1:] +") " + qubit + ";\n")
    else:
        qasm_list.append("rz(" + "-" + angle +") " + qubit + ";\n")
    qasm_list.append("h " + qubit + ";\n")
    qasm_list.append("sdg " + qubit + ";\n")

def p(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rz(" + angle +") " + qubit + ";\n")
    
def u2(line, qasm_list):
    angle1 = re.findall(r"\((.*?),(.*?)\)",line)[0][0]
    angle2 = re.findall(r"\((.*?),(.*?)\)",line)[0][1]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rz(" + angle1 + ") " + qubit + ";\n")
    ry("ry(0.5*pi) " + qubit + ";", qasm_list)
    qasm_list.append("rz(" + angle2 + ") " + qubit + ";\n")

def rzz(line, qasm_list):
    angle = re.findall(r"\((.*?)\)",line)[0]
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")
    qasm_list.append("rx(" + angle +") " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")

def rccx(line, qasm_list):
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)    
    qasm_list.append("h " + qubits[0] + ";\n")
    qasm_list.append("t " + qubits[0] + ";\n")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[0] + ";\n")
    qasm_list.append("tdg " + qubits[0] + ";\n")
    qasm_list.append("cx " + qubits[1] + ", " + qubits[0] + ";\n")
    qasm_list.append("t " + qubits[0] + ";\n")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[0] + ";\n")
    qasm_list.append("tdg " + qubits[0] + ";\n")
    qasm_list.append("h " + qubits[0] + ";\n")

def cswap(line, qasm_list):
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)  
    qasm_list.append("x " + qubits[0] + ";\n")
    qasm_list.append("x " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")
    qasm_list.append("h " + qubits[2] + ";\n")
    qasm_list.append("t " + qubits[0] + ";\n")
    qasm_list.append("tdg " + qubits[1] + ";\n")
    qasm_list.append("t " + qubits[2] + ";\n")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[2] + ";\n")
    qasm_list.append("t " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")
    qasm_list.append("tdg " + qubits[2] + ";\n")
    qasm_list.append("tdg " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[2] + ";\n")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[1] + ";\n")
    qasm_list.append("t " + qubits[1] + ";\n")
    qasm_list.append("h " + qubits[2] + ";\n")
    qasm_list.append("cx " + qubits[2] + ", " + qubits[1] + ";\n")

def swap(line, qasm_list):
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)  
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[1] + ", " + qubits[0] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")

def cz(line, qasm_list):
    qubits = re.findall(r"[a-z]*\[[0-9]*\]",line)
    qasm_list.append("h " + qubits[1] + ";\n")
    qasm_list.append("cx " + qubits[0] + ", " + qubits[1] + ";\n")
    qasm_list.append("h " + qubits[1] + ";\n")

def trans(filename):
    qasm_list = []
    with open(filename,"r") as qasm_old:
        for line in qasm_old:
            if "creg" in line:
                continue
            if "cp" in line or "cu1" in line:
                cu1(line, qasm_list)
            elif "p(" in line or "u1" in line:
                p(line, qasm_list)
            elif "ry" in line:
                ry(line, qasm_list)
            elif "u2" in line:
                u2(line, qasm_list)
            elif "rzz" in line:
                rzz(line, qasm_list)
            elif "rccx" in line :
                rccx(line, qasm_list)
            elif "cswap" in line:
                cswap(line, qasm_list)
            elif "swap" in line:
                swap(line, qasm_list)
            elif "cz" in line:
                cz(line, qasm_list)
            elif "barrier" in line or "measure" in line:
                print(line)
            else: 
                qasm_list.append(line)
            

    with open(filename, 'w') as file:
        for item in qasm_list:
            file.writelines(item)
            
if __name__ == "__main__":
    trans(sys.argv[1])