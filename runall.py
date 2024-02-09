import glob, os, json
from encoding.qc2cnf_eq import qc2cnf


def CircuitList(folder):
    circuit_list = glob.glob(folder + "/*")
    circuit_list.sort()
    return circuit_list

def get_name(filename):
    filename = filename.split("_")
    return filename[0]     

def resolve(line):
    if len(line) == 0:
        line = {"time": "\\timeout", "MaxRSS" : "$\star$"}
    else:
        line = json.loads(line)
        line["time"] = round(float(line["time"]), 2)
        line["MaxRSS"] = round(float(line["MaxRSS"]),2)   
    return line     

def table_opt(folder):
    circuitlist = glob.glob(folder + "/origin/" + "/*")
    circuitlist.sort()
    for filepath in circuitlist:
        filename = filepath.split('/')
        filename = filename[-1]
        wmc = os.popen("gtimeout 300 python3 check_eq2.py " + filepath + " " + folder + "/opt/" + filename + ".opt.qasm").read()
        qcec = os.popen("gtimeout 300 python3 qcec.py " + filepath + " " + folder + "/opt/" + filename + ".opt.qasm").read()
        filename = get_name(filename)
        if len(wmc) == 0:
            wmc = {"N": 0, "G1": 0, "G2": 0, "time": "\\timeout", "MaxRSS" : "$\star$"}
        else: 
            wmc = json.loads(wmc)
            wmc["time"] = round(float(wmc["time"]), 2)
            wmc["MaxRSS"] = round(float(wmc["MaxRSS"]),2)
        if len(qcec) == 0:
            qcec = {"time": "\\timeout", "MaxRSS" : "$\star$"}
        else: 
            qcec = json.loads(qcec)
            qcec["time"] = round(float(qcec["time"]), 2)
            qcec["MaxRSS"] = round(float(qcec["MaxRSS"]), 2)
        print(filename, "&", wmc["N"], "&", wmc["G1"], "&", wmc["G2"], "&", wmc["time"], "&", wmc["MaxRSS"], "&", qcec["time"], "&", qcec["MaxRSS"], "\\\\" )
        print("\\hline")

def table_gm_fp(folder):
    circuitlist = glob.glob(folder + "/origin/" + "/*")
    circuitlist.sort()
    for filepath in circuitlist:
        filename = filepath.split('/')
        filename = filename[-1]
        filepath2 = folder + "/flip/" + filename + ".fp.qasm"
        filepath3 = folder + "/gm/" + filename + ".gm.qasm"

        tab, cnf, tab_init, QUBIT, G1, G2 = qc2cnf(filepath, filepath2)
        wmcfp = os.popen("gtimeout 300 python3 check_eq2.py " + filepath + " " + filepath3).read()
        qcecfp = os.popen("gtimeout 300 python3 qcec.py " + filepath + " " + filepath3).read()
        wmcgm = os.popen("gtimeout 300 python3 check_eq2.py " + filepath + " " + filepath2).read()
        qcecgm = os.popen("gtimeout 300 python3 qcec.py " + filepath + " " + filepath2).read()
        filename = get_name(filename)
        wmcfp   = resolve(wmcfp)
        qcecfp  = resolve(qcecfp)
        wmcgm   = resolve(wmcgm)
        qcecgm  = resolve(qcecgm)
        print(filename, "&", QUBIT, "&", G1, "&", G2, "&", wmcfp["time"], "&", wmcfp["MaxRSS"], "&", qcecfp["time"], "&", qcecfp["MaxRSS"], "&", wmcgm["time"], "&", wmcgm["MaxRSS"], "&", qcecgm["time"], "&", qcecgm["MaxRSS"], "\\\\" )
        print("\\hline")

def main(folder):
    for filepath in glob.glob(folder + "/origin/" + "/*"):
        filename = filepath.split('/')
        filename = filename[-1]
        res1 = os.popen("gtimeout 1 python3 check_eq2.py " + filepath + " " + folder + "/gm/" + filename + ".gm.qasm").read()
        
        # res2 = os.popen("gtimeout 100 python3 qcec.py " + filepath + " " + folder +"/flip/" + filename + ".fp.qasm").read()
        # res2 = os.popen("gtimeout 100 python3 qcec.py " + filepath + " " + folder +"/flip/" + filename + ".fp.qasm").read()
        # res1 = json.loads(res1)
        if len(res1) == 0:
            print("timeout")
        else: 
            res1 = json.loads(res1)
            print(res1)
            print(round(float(res1["time"]),3))
if __name__ == "__main__":
    # main("./benchmark/algorithm/eq_bench/table/main")
    # get_name()
    # table_opt("./benchmark/algorithm/eq_bench/table/main")
    table_gm_fp("./benchmark/algorithm/eq_bench/table/main")