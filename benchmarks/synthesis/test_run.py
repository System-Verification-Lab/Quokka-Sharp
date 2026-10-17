import os
import subprocess
import sys
from pathlib import Path

import pytest
from circuits import from_engine_output

HERE = Path(__file__).resolve().parent


@pytest.mark.parametrize(
    "engine, input_file, options, expected",
    [
        ("quokka", "cz.qasm", [], "OPENQASM 2.0;"),
        ("quokka-upstream", "cz.qasm", [], "OPENQASM 2.0;"),
        ("qiskit", "cz.qasm", [], "OPENQASM 2.0;"),
        ("synthetiq", "cz.txt", [], "OPENQASM 2.0;"),
        ("mitms", "cz.mitms", [], "Cost "),
        ("mitms", "cz.mitms", ["--approximate", "--max-depth", "2"], "Distance "),
    ],
)
def test_engine(engine, input_file, options, expected):
    process = subprocess.run(
        [
            sys.executable,
            str(HERE / "run.py"),
            engine,
            str(HERE / "inputs" / input_file),
            *options,
        ],
        env={
            **os.environ,
            "PATH": f"{HERE.parents[1] / '.solvers/bin'}:{os.environ.get('PATH', '')}",
        },
        capture_output=True,
        text=True,
        timeout=20,
        check=False,
    )
    assert process.returncode == 0, process.stdout + process.stderr
    assert expected in process.stdout, process.stdout
    circuits = from_engine_output(process.stdout, engine)
    assert circuits
    assert all(circuit.num_qubits == 2 and circuit.depth() > 0 for circuit in circuits)
