import re
from decimal import Decimal, getcontext

from ..config import CONFIG

tool_invocation = CONFIG["ToolInvocation"]
get_result      = CONFIG["GetResult"]


def parse_wmc_result(result, square: bool):
    """Parse the output of WMC to get the weighted model counting result."""
    result = str(result)
    get_result = "exact.double.prec-sci.(.+?)\\\\nc s"
    ans_str = re.findall(re.compile(get_result), result)
    if not ans_str:
        return -1

    ans_str = ans_str[0].replace("\\n", "").replace(" ", "").replace("i", "j")
    ans = complex(ans_str)
    real, imag = Decimal(ans.real), Decimal(ans.imag)

    if abs(real) < 1e-16 and abs(imag) < 1e-16:
        return 0
    elif abs(imag) < 1e-16:
        return real * real if square else real
    else:
        return (real * real + imag * imag) if square else (real * real + imag * imag).sqrt()