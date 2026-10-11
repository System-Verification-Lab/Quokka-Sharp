from dataclasses import dataclass
from pathlib import Path
from shutil import copyfile
from tempfile import TemporaryDirectory
from time import perf_counter

from .engine import TOOLS, Engine, run_external


@dataclass
class MitmsEngine(Engine):
    binary: Path = TOOLS / "mitms" / "build" / "mitms_original"
    label: str = "target"
    max_depth: int = 4
    timeout: int = 60
    approximate: bool = False

    def run(self, target: Path) -> str:
        with TemporaryDirectory() as temporary:
            directory = Path(temporary)
            copyfile(target, directory / "searches")
            start = perf_counter()
            output = run_external(
                [
                    str(self.binary),
                    "-no-serialize",
                    "-threads",
                    "1",
                    "-approximate" if self.approximate else "-early-stop",
                    "-max-seq-length",
                    str(self.max_depth // 2 + 1),
                    self.label,
                ],
                directory,
                self.timeout,
            )
            self.elapsed_seconds = perf_counter() - start
        if ("Distance " if self.approximate else "Cost ") not in output:
            raise RuntimeError(f"MITMS found no circuit. Original output:\n{output}")
        return output
