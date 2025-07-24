import random, sys, re

def flipcx(line):
    line = re.split(r'\s|, |,|;', line)
    line = str(line[0]) + " " + str(line[2]) + ", " + str(line[1]) + ";"
    return line

def flip(file, to_file, SEED):
    qasm_list = []
    
    with open(file,"r") as qasm:
        for line in qasm:
            line = line.strip()
            if line:
                qasm_list.append(line)

    cxidxlist = []
    idx = 0
    for line in qasm_list:
        line = line.split()
        if(line[0] == 'cx'):
            cxidxlist.append(idx)
        idx += 1
    if len(cxidxlist) == 0:
        raise Exception("no cx gate")
    random.seed(SEED)
    cxidx = random.choice(cxidxlist)
    origin = qasm_list[cxidx]
    qasm_list[cxidx] = flipcx(qasm_list[cxidx])
    print(origin, " --> " ,qasm_list[cxidx])
    
    with open(to_file, 'w') as file:
        for item in qasm_list:
            file.writelines(item + '\n')

if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)
    else:
       flip(sys.argv[1], sys.argv[2],  sys.argv[3])