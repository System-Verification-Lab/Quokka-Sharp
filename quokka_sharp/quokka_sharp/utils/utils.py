import re
from decimal import Decimal, getcontext

from ..config import CONFIG

tool_invocation = CONFIG["ToolInvocation"]
get_result      = CONFIG["GetResult"]
DEBUG           = CONFIG["DEBUG"]
FPE             = CONFIG["FPE"]


def parse_wmc_result(result, square: bool):
    """Parse the output of WMC to get the weighted model counting result."""
    ans_str = re.findall( re.compile(get_result), str(result))
    if DEBUG: print("weighted model counting result:", ans_str)
    if not ans_str:
        return -1
    ans_str = ans_str[0].replace("\\n", "").replace(" ", "").replace("i", "j").replace("+-", "-")
    ans = complex(ans_str)
    real, imag = Decimal(ans.real), Decimal(ans.imag)

    if abs(real) < FPE and abs(imag) < FPE:
        return 0
    elif abs(imag) < FPE:
        return real * real if square else real
    else:
        return (real * real + imag * imag) if square else (real * real + imag * imag).sqrt()