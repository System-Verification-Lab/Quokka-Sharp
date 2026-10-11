import os
import shlex
import subprocess
import sys
from datetime import datetime
from pathlib import Path

HERE = Path(__file__).resolve().parent
RESULTS = HERE / "results"


def run_batch(inputs: list[str], runs: list[tuple[str, str, str, list[str]]]) -> int:
    time_command = (
        ["/usr/bin/time", "-l"]
        if sys.platform == "darwin"
        else ["/usr/bin/time", "-f", "Peak RSS: %M KiB"]
    )
    directory = RESULTS / datetime.now().astimezone().strftime("%Y-%m-%d_%H-%M-%S_%f")
    directory.mkdir(parents=True)
    print(f"Results: {directory}", flush=True)
    env = {
        **os.environ,
        "PATH": f"{HERE.parents[1] / '.solvers/bin'}:{os.environ.get('PATH', '')}",
    }
    failed = False
    for name in inputs:
        for label, engine, suffix, options in runs:
            target = HERE / "inputs" / f"{name}{suffix}"
            command = [
                *time_command,
                sys.executable,
                str(HERE / "run.py"),
                engine,
                str(target),
                *options,
            ]
            prefix = directory / f"{name}-{label}"
            print(f"Running {name}: {label}", flush=True)
            with (
                prefix.with_suffix(".out").open("w") as output,
                prefix.with_suffix(".log").open("w") as log,
            ):
                log.write(shlex.join(command) + "\n")
                log.flush()
                result = subprocess.run(
                    command, stdout=output, stderr=log, env=env, check=False
                )
                log.write(f"Exit code: {result.returncode}\n")
            if result.returncode:
                failed = True
                print(f"Failed: see {prefix.with_suffix('.log')}", flush=True)
    return int(failed)
