import argparse
import csv
import re
import statistics
import time
from pathlib import Path

import quokka_sharp as qk


# paths
TESTS_DIR = Path(__file__).resolve().parent
ROOT_DIR = TESTS_DIR.parent

SYNTHESIS_DIR = TESTS_DIR / "qasm_fixtures" / "synthesis"
RESULTS_DIR = ROOT_DIR / "pruning_results"

RESULTS_DIR.mkdir(parents=True, exist_ok=True)


# configuration
FIDELITY = 1.0
BASIS = "pauli"
CYC_LIN_ENCODING = True

# Explicit gate sets for your known circuits.
# Extend this dictionary when adding new benchmarks.

GATE_SETS = {
    1:  {"h", "cx", "s"},
    2:  {"h", "cx", "s"},
    3:  {"h", "cx", "s"},
    4:  {"h", "cx", "s"},
    5:  {"h", "cx", "t"},
    6:  {"h", "cx", "s"},
    7:  {"h", "cx", "s"},
    8:  {"h", "cx", "s", "cz"},
    9:  {"h", "cx", "s", "t", "cz"},
    10: {"h", "cx", "s"},
    11: {"h", "cx", "s", "cz"},
    12: {"h", "cx", "s", "t", "cz"},
    13: {"h", "cx", "s", "cz"},
}

FIELDS = [
    "circuit",
    "mode",
    "run",
    "gate_set",
    "outcome",
    "fidelity",
    "layers",
    "runtime_seconds",
    "error",
]



def discover_circuits(min_number=1):
    # min_number = 8 // for testing only the subset of new circuits

    circuits = []

    for path in SYNTHESIS_DIR.glob("*.qasm"):

        match = re.match(
            r"syn_?(\d+).*\.qasm$",
            path.name,
            re.IGNORECASE
        )

        if not match:
            continue

        number = int(match.group(1))

        if number < min_number:
            continue

        if number not in GATE_SETS:
            raise ValueError(
                f"No gate set configured for {path.name}. "
                f"Add {number} to GATE_SETS."
            )

        circuits.append((
            number,
            path,
            GATE_SETS[number]
        ))

    return sorted(circuits, key=lambda item: (item[0]))


def run_synthesis(path, gate_set, mode, run_number):
    """
    Runs a single synthesis for a chosen circuit and its gate set.
    """

    # Separate output directory for each experiment.
    files_root = (
        RESULTS_DIR
        / "solver_files"
        / mode
        / path.stem
        / f"run_{run_number}"
    )

    files_root.mkdir(parents=True, exist_ok=True)

    start = time.perf_counter()

    outcome = "ERROR"
    fidelity = None
    layers = None
    error = ""

    try:

        outcome, fidelity, qasm_str, layers = (
            qk.functionalities.syn(
                str(path),
                basis=BASIS,
                fid=FIDELITY,
                files_root=str(files_root),
                cyc_lin_encoding=CYC_LIN_ENCODING,
                gate_set=gate_set,
            )
        )

        if outcome == "FOUND" and qasm_str:
            output_path = files_root / "synthesized.qasm"
            output_path.write_text(
                qasm_str,
                encoding="utf-8"
            )

    except Exception as exc:

        outcome = "ERROR"
        error = f"{type(exc).__name__}: {exc}"

    elapsed = time.perf_counter() - start

    return {
        "circuit": path.name,
        "mode": mode,
        "run": run_number,
        "gate_set": ",".join(sorted(gate_set)),
        "outcome": outcome,
        "fidelity": fidelity,
        "layers": layers,
        "runtime_seconds": round(elapsed, 6),
        "error": error,
    }


def benchmark(mode, runs, min_number):
    """
    Repeatedly runs synthesis for all circuits.
    """

    circuits = discover_circuits(min_number)

    if not circuits:
        raise RuntimeError(
            "No synthesis circuits found in "
            f"{SYNTHESIS_DIR}"
        )

    results = []

    print(f"\nPruning mode: {mode}")
    print(f"Circuits found: {len(circuits)}")
    print(f"Runs per circuit: {runs}")

    for number, path, gate_set in circuits:

        print(f"\n{'=' * 55}")
        print(f"Circuit: {path.name}")
        print(f"Gate set: {sorted(gate_set)}")

        for run_number in range(1, runs + 1):

            result = run_synthesis(
                path,
                gate_set,
                mode,
                run_number
            )

            results.append(result)

            print(
                f"Run {run_number}: "
                f"{result['outcome']} | "
                f"Fidelity={result['fidelity']} | "
                f"Layers={result['layers']} | "
                f"Time={result['runtime_seconds']:.4f}s"
            )

            if result["error"]:
                print("Error:", result["error"])

    output_file = RESULTS_DIR / f"{mode}.csv"

    # Write fresh results for this mode.
    with open(output_file, "w", newline="") as f:

        writer = csv.DictWriter(
            f,
            fieldnames=FIELDS
        )

        writer.writeheader()
        writer.writerows(results)

    print(f"\nSaved: {output_file}")


def load_results(mode):
    """
    Reads the CSV results.
    """

    path = RESULTS_DIR / f"{mode}.csv"

    if not path.exists():
        raise FileNotFoundError(
            f"Missing results: {path}"
        )

    with open(path, newline="") as f:
        return list(csv.DictReader(f))


def summarize(rows):
    """
    Calculates median times, depths, total number of synthesis runs and number of successful runs for each circuit.
    """

    grouped = {}

    for row in rows:
        grouped.setdefault(
            row["circuit"], []
        ).append(row)

    summary = {}

    for circuit, entries in grouped.items():

        successful = [
            entry for entry in entries
            if entry["outcome"] == "FOUND"
            and entry["fidelity"] not in ("", "None")
            and abs(float(entry["fidelity"]) - 1.0) < 1e-9
        ]

        times = [
            float(entry["runtime_seconds"])
            for entry in successful
        ]

        depths = {
            entry["layers"]
            for entry in successful
        }

        summary[circuit] = {
            "total": len(entries),
            "found": len(successful),
            "median_time": (
                statistics.median(times)
                if times else None
            ),
            "depths": depths,
        }

    return summary


def compare():
    """
    Compares the results with and without new pruning rules.
    """

    off = summarize(load_results("off"))
    on = summarize(load_results("on"))

    comparison = []

    circuits = sorted(set(off) | set(on))

    for circuit in circuits:

        a = off.get(circuit)
        b = on.get(circuit)

        if a is None or b is None:
            continue

        off_time = a["median_time"]
        on_time = b["median_time"]

        comparable = (
            a["found"] == a["total"]
            and b["found"] == b["total"]
            and off_time is not None
            and on_time is not None
            and on_time > 0
        )

        speedup = (
            off_time / on_time
            if comparable else None
        )

        row = {
            "circuit": circuit,
            "off_success": f"{a['found']}/{a['total']}",
            "on_success": f"{b['found']}/{b['total']}",
            "off_median": off_time,
            "on_median": on_time,
            "speedup": speedup,
            "same_depth": (
                a["depths"] == b["depths"]
                if comparable else ""
            ),
        }

        comparison.append(row)

    output_file = RESULTS_DIR / "comparison.csv"

    with open(output_file, "w", newline="") as f:

        writer = csv.DictWriter(
            f,
            fieldnames=[
                "circuit",
                "off_success",
                "on_success",
                "off_median",
                "on_median",
                "speedup",
                "same_depth",
            ]
        )

        writer.writeheader()
        writer.writerows(comparison)

    print("\nPRUNING COMPARISON")
    print("=" * 85)

    for row in comparison:

        speedup = row["speedup"]

        speedup_text = (
            f"{speedup:.2f}x"
            if speedup is not None
            else "N/A"
        )

        print(
            f"{row['circuit']:<38} "
            f"OFF={str(row['off_median']):<12} "
            f"ON={str(row['on_median']):<12} "
            f"Speedup={speedup_text}"
        )

    print(f"\nSaved: {output_file}")


if __name__ == "__main__":

    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--mode",
        choices=["on", "off", "compare"],
        required=True
    )

    parser.add_argument(
        "--runs",
        type=int,
        default=5
    )

    parser.add_argument(
        "--min-number",
        type=int,
        default=1
    )

    args = parser.parse_args()

    if args.runs < 1:
        parser.error("--runs must be at least 1")

    if args.mode == "compare":
        compare()

    else:
        benchmark(
            args.mode,
            args.runs,
            args.min_number
        )
