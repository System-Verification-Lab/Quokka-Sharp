import random, sys, re, math

def convert_to_float(frac_str):
    sign = 0
    if "-" in frac_str:
        sign = 1
        frac_str = frac_str.replace("-",'')
    try:
        return float(frac_str)
    except:
        num, denom = frac_str.split('/')
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

def get_angle(str):
    angle = re.findall(r"\((.*?)\)",str)[0]
    if "/" in angle:
        theta = convert_to_float(angle)
    elif "*pi" in angle:
        idx = angle.index("*")
        const = angle[0:idx]
        theta = float(const) * math.pi
    else:
        theta_str = angle
        if 'pi' in theta_str:
            const_list = re.findall(r"[-+]?(?:\d*\.*\d+)", theta_str)
            if len(const_list) == 1:
                const = const_list[0]
            elif len(const_list) == 0:
                const = 1
            else: raise Exception("Angle " + theta_str + " Not Support")
            theta = float(const) * math.pi
        else:
            theta = float(theta_str)
    return theta

def shiftgate(line, error):
    linelist = re.split(r'\(|\)', line)
    linelist[1] = get_angle(line) + error
    line = str(linelist[0]) + "(" + str(linelist[1]) + ")" + str(linelist[2])
    return line

def shift(file, to_file, SEED, error):
    qasm_list = []
    
    with open(file,"r") as qasm:
        for line in qasm:
            line = line.strip()
            if line:
                qasm_list.append(line)

    idxlist = []
    idx = 0
    for line in qasm_list:
        if('rx' in line or 'rz' in line):
            idxlist.append(idx)
        idx += 1
    if len(idxlist) == 0:
        raise Exception("no rotation gate")
    random.seed(SEED)
    ridx = random.choice(idxlist)
    origin = qasm_list[ridx]
    qasm_list[ridx] = shiftgate(qasm_list[ridx], error)
    print(origin, " --> " ,qasm_list[ridx])
    
    with open(to_file, 'w') as file:
        for item in qasm_list:
            file.writelines(item + '\n')

if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)
    else:
        input   = sys.argv[1]
        output  = sys.argv[2]
        seed    = sys.argv[3]
        error   = float(sys.argv[4])
        shift(input, output, seed, error)