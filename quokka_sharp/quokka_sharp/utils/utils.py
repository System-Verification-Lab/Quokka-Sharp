import re
from decimal import Decimal, getcontext
from ..utils.timeout import MemoutError

from .. import config as qc



_num = r'[+\-]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+\-]?\d+)?'
_pat = re.compile(rf'^\s*({_num})?\s*([+\-]\s*{_num})?\s*[ij]?\s*$')

def parse_complex_decimal(s: str):
    s = s.strip().replace("\\n", "").replace(" ", "")
    s = s.replace("i", "j")  # 统一虚数单位

    if "j" not in s:
        return Decimal(s), Decimal(0)
    
    if not s.endswith("j"):
        raise ValueError(f"Unexpected complex format: {s}")
    core = s[:-1]

    m = _pat.match(core)
    if not m:
        idx = max(core.rfind("+", 1), core.rfind("-", 1))
        if idx == -1:
            real_s, imag_s = "0", core
        else:
            real_s, imag_s = core[:idx], core[idx:]
        return Decimal(real_s or "0"), Decimal(imag_s or "0")

    real_s = m.group(1) or "0"
    imag_s = (m.group(2) or "0").replace("+-", "-")
    return Decimal(real_s), Decimal(imag_s)

def parse_wmc_result(result, square: bool):
    get_result      = qc.CONFIG["GetResult"]
    DEBUG           = qc.CONFIG["DEBUG"]
    FPE             = qc.CONFIG["FPE"]
    Precision       = qc.CONFIG["Precision"]
    getcontext().prec = Precision 
    """Parse the output of WMC to get the weighted model counting result."""
    ans_str = re.findall( re.compile(get_result), str(result))
    if DEBUG: print("weighted model counting result:", ans_str)
    if not ans_str:
        if DEBUG: print("No result found, returning -1")
        if DEBUG: print("output:", result)
        if DEBUG: print("regex:", get_result)
        if DEBUG: print("ans_str:", ans_str)
        raise MemoutError
    ans_str = ans_str[0].replace("\\n", "").replace(" ", "").replace("i", "j").replace("+-", "-")
    # ans = complex(ans_str)
    # real, imag = Decimal(ans.real), Decimal(ans.imag)
    
    real, imag = parse_complex_decimal(ans_str)

    if DEBUG:
        print(real)
        

    if abs(real) < FPE and abs(imag) < FPE:
        return 0
    elif abs(imag) < FPE:
        return real * real if square else real
    else:
        return (real * real + imag * imag) if square else (real * real + imag * imag).sqrt()