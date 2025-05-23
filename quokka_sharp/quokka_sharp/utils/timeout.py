from subprocess import Popen, PIPE, TimeoutExpired

from ..config import CONFIG

tool_invocation = CONFIG["ToolInvocation"]
get_result      = CONFIG["GetResult"]

procdict = {}

# utils/alarm_timeout.py

import signal
from contextlib import contextmanager

class TimeoutException(Exception):
    pass

class MemoutError(Exception):
    """Raised when a memory limit is exceeded or result indicates MEMOUT"""
    pass

@contextmanager
def timeout(seconds, on_timeout=None):
    def _handle_timeout(signum, frame):
        if on_timeout:
            on_timeout()
        raise TimeoutException("TIMEOUT")

    original_handler = signal.getsignal(signal.SIGALRM)
    signal.signal(signal.SIGALRM, _handle_timeout)
    signal.alarm(seconds)
    try:
        yield
    finally:
        signal.alarm(0)
        signal.signal(signal.SIGALRM, original_handler)
