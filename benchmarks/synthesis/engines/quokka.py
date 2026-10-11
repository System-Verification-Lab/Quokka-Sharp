from dataclasses import dataclass
from pathlib import Path
from tempfile import TemporaryDirectory
from time import perf_counter
from typing import cast

import quokka_sharp as qk
from quokka_sharp import config

from .engine import Engine


@dataclass
class QuokkaEngine(Engine):
    fidelity: float = 1.0
    timeout: int | None = None

    def run(self, target: Path) -> str:
        if self.timeout is not None:
            config.CONFIG["TIMEOUT"] = self.timeout
        with TemporaryDirectory() as directory:
            start = perf_counter()
            status, _, qasm, _ = qk.functionalities.syn(
                str(target),
                basis="pauli",
                cyc_lin_encoding=self.fidelity == 1.0,
                fid=self.fidelity,
                files_root=directory,
                gate_set={"h", "s", "cx", "t"},
            )
            self.elapsed_seconds = perf_counter() - start
        if status != "FOUND":
            raise RuntimeError(f"Quokka synthesis failed: {status}")
        return cast(str, qasm)
