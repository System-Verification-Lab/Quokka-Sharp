import subprocess
from dataclasses import dataclass
from pathlib import Path

TARGET_GATES = ["h", "s", "sdg", "t", "tdg", "cx"]
TOOLS = Path(__file__).resolve().parents[3] / ".solvers" / "synthesis"


def run_external(command: list[str], directory: Path, timeout: float) -> str:
    process = subprocess.run(
        command,
        cwd=directory,
        capture_output=True,
        check=False,
        text=True,
        timeout=timeout,
    )
    if process.returncode:
        raise RuntimeError(
            f"{Path(command[0]).name} exited with {process.returncode}:\n"
            + process.stdout
            + process.stderr
        )
    return process.stdout


@dataclass
class Engine:
    elapsed_seconds: float = 0.0

    def run(self, target: Path) -> str:
        raise NotImplementedError
