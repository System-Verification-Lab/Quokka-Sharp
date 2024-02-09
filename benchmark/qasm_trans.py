import re, sys, math

def convert_to_float(frac_str):
    sign = 0
    if "-" in frac_str:
        sign = 1
        frac_str = frac_str.replace("-",'')
    try:
        return float(frac_str)
    except:
        try:
            num, denom = frac_str.split('/')
        except:
            num = frac_str.split('/')[0]
            denom = 1
        piflag = 0
        denom = float(denom)
        if num == "pi":
            piflag = 1
            num = 1
        elif "pi" in num:
            piflag = 1
            num = num.replace("pi",'')
            num = num.replace("*",'')
            num = float(num)
        if piflag == 1:
            return math.pow(-1,sign) * num / denom * math.pi
        else:
            return math.pow(-1,sign) * num / denom

def cu1(line, qasm_list):
    print(line)
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

def u(line, qasm_list):
    
    try:
        angles = re.findall(r"\((.*?),(.*?),(.*?)\)",line)[0]
        angle1 = str(math.pi - convert_to_float(angles[0]))
        angle2 = str(convert_to_float(angles[1]) - math.pi/2)
        angle3 = str(convert_to_float(angles[2]) - math.pi/2) 
        qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
        qasm_list.append("rz(" + angle2 + ") " + qubit + ";\n")
        qasm_list.append("rx(" + str(math.pi/2) + ") " + qubit + ";\n")
        qasm_list.append("rz(" + angle1 + ") " + qubit + ";\n")
        qasm_list.append("rx(" + str(math.pi/2) + ") " + qubit + ";\n")
        qasm_list.append("rz(" + angle3 + ") " + qubit + ";\n")   
    except:
        print(line)

def u2(line, qasm_list):
    angles = re.findall(r"\((.*?),(.*?)\)",line)[0]
    angle1 = angles[0]
    angle2 = angles[1]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rz(" + angle1 + ") " + qubit + ";\n")
    ry("ry(0.5*pi) " + qubit + ";", qasm_list)
    qasm_list.append("rz(" + angle2 + ") " + qubit + ";\n")
    qasm_list.append("rx(" + angle1 + ") " + qubit + ";\n")

def u3(line, qasm_list):
    angles = re.findall(r"\((.*?),(.*?),(.*?)\)",line)[0]
    angle1 = str(convert_to_float(angles[0]) + math.pi)
    angle2 = str(convert_to_float(angles[1]) + math.pi)
    angle3 = angles[2]
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rz(" + angle2 + ") " + qubit + ";\n")
    qasm_list.append("rx(" + str(math.pi/2) + ") " + qubit + ";\n")
    qasm_list.append("rz(" + angle1 + ") " + qubit + ";\n")
    qasm_list.append("rx(" + str(math.pi/2) + ") " + qubit + ";\n")
    qasm_list.append("rz(" + angle3 + ") " + qubit + ";\n")    

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

def sx(line, qasm_list):
    qubit = re.findall(r"[a-z]*\[[0-9]*\]",line)[0]
    qasm_list.append("rx(0.5*pi) " + qubit + ";\n")

def checkgate(gate, gates):
    for item in gates:
        if item == gate:
            return True
    return False

def trans(filename):
    qasm_list = []
    gates = ['h','s','cx', 'ccx', 't','z','y','x','tdg','sdg']
    with open(filename,"r") as qasm_old:
        for line in qasm_old:
            linelist  = line.rsplit()
            if "cp" in line or "cu1" in line:
                cu1(line, qasm_list)
            elif "p(" in line or "u1" in line:
                p(line, qasm_list)
            elif "u3" in line:
                u3(line,qasm_list)
            elif "u(" in line:
                u(line, qasm_list)
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
            elif "rz" in line or "rx" in line:
                qasm_list.append(line)
            elif len(linelist) > 0 and linelist[0] == 'sx':
                sx(line, qasm_list)
            elif "//" in line or "barrier" in line or "measure" in line or "creg" in line:
                # print(line)
                continue
            elif len(linelist)>0 and checkgate(linelist[0],gates): 
                # print(line)
                qasm_list.append(line)
            elif "OPENQASM" in line or "include" in line or "qreg" in line:
                qasm_list.append(line)
            else:
                if (len(line.strip()) != 0):
                    print("Not Defined: " + line)

    with open(filename, 'w') as file:
        for item in qasm_list:
            file.writelines(item)
            
if __name__ == "__main__":
    trans(sys.argv[1])