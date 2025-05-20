import random, sys

def gatemiss(file, to_file, SEED):
    qasm_list = []
    
    with open(file,"r") as qasm:
        for line in qasm:
            line = line.strip()
            if line:
                qasm_list.append(line)

    gates = ['h','s','cx', 'ccx', 't','z','y','x','tdg', 'rx', 'rz']
    idx = 0
    for line in qasm_list:
        line = line.split()
        if any(item in gates for item in line[0]):
            break
        else:
            idx += 1
    gatelist = qasm_list[idx:len(qasm_list)]
    random.seed(SEED)
    del_idx = random.randint(0, len(gatelist) - 1)
    print("delete ", gatelist[del_idx])
    del gatelist[del_idx]
    with open(to_file, 'w') as file:
        for i in range(0, idx):
            file.writelines(qasm_list[i] + '\n')
        for i in range(0, len(gatelist)):
            file.writelines(gatelist[i] + '\n')

if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)
    else:
       gatemiss(sys.argv[1], sys.argv[2],  sys.argv[3])