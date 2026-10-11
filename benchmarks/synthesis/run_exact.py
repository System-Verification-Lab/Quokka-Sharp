import sys

from batch import run_batch

INPUTS = ["csx"]
RUNS = [
    ("quokka-exact", "quokka", ".qasm", ["--timeout", "3600"]),
    # ("quokka-upstream-exact", "quokka-upstream", ".qasm", ["--timeout", "3600"]),
    ("mitms", "mitms", ".mitms", ["--max-depth", "10", "--timeout", "3600"]),
]


if __name__ == "__main__":
    sys.exit(run_batch(INPUTS, RUNS))
