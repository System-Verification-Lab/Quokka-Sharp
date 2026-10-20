import json
import os
import re
import shlex
import subprocess
import sys
from datetime import datetime
from pathlib import Path
from secrets import randbits
from statistics import mean, median, stdev

from qiskit import qasm2
from qiskit.quantum_info import Operator, process_fidelity

HERE = Path(__file__).resolve().parent
RESULTS = HERE / "results"


def _write_random_inputs(
    config: dict[str, int], directory: Path, include_matrix: bool
) -> list[str]:
    from circuits import (
        RANDOM_CIRCUIT_GATES,
        generate_random_circuit,
        to_mitms,
        to_quokka,
        to_synthetiq,
    )

    base_seed = config.get("seed", randbits(64))
    names = [f"random-{index:03d}" for index in range(config.get("num_circuits", 1))]
    directory.mkdir()
    for index, name in enumerate(names):
        seed = base_seed + index
        circuit = generate_random_circuit(config["num_qubits"], config["depth"], seed)
        qasm2.dump(circuit, directory / f"{name}.qasm")
        (directory / f"{name}.quokka.qasm").write_text(to_quokka(circuit))
        (directory / f"{name}.mitms").write_text(to_mitms(circuit))
        if include_matrix:
            (directory / f"{name}.txt").write_text(to_synthetiq(circuit))
        metadata = {
            "num_qubits": circuit.num_qubits,
            "depth_bound": config["depth"],
            "depth": circuit.depth(),
            "seed": seed,
            "gate_set": RANDOM_CIRCUIT_GATES,
        }
        (directory / f"{name}.json").write_text(json.dumps(metadata, indent=2) + "\n")
        print(f"Generated {name}: {json.dumps(metadata)}", flush=True)
    return names


def _run_engine(
    engine: str, target: Path, options: list[str], output_prefix: Path
) -> int:
    time_command = (
        ["/usr/bin/time", "-l"]
        if sys.platform == "darwin"
        else ["/usr/bin/time", "-f", "Peak RSS: %M KiB"]
    )
    command = [
        *time_command,
        sys.executable,
        str(HERE / "run.py"),
        engine,
        str(target),
        *options,
    ]
    env = {
        **os.environ,
        "PATH": f"{HERE.parents[1] / '.solvers/bin'}:{os.environ.get('PATH', '')}",
    }
    with (
        output_prefix.with_suffix(".out").open("w") as output,
        output_prefix.with_suffix(".log").open("w") as log,
    ):
        log.write(shlex.join(command) + "\n")
        log.flush()
        result = subprocess.run(
            command, stdout=output, stderr=log, env=env, check=False
        )
        log.write(f"Exit code: {result.returncode}\n")
    if result.returncode:
        print(f"Failed: see {output_prefix.with_suffix('.log')}", flush=True)
    return result.returncode


def _read_run_result(
    engine: str, output_prefix: Path, exit_code: int, target_operator: Operator | None
) -> dict:
    """Read synthesis time and whole-process peak RSS, normalizing memory to KiB."""
    log = output_prefix.with_suffix(".log").read_text()
    runtime = re.search(r"^Synthesis time: ([0-9.]+) s$", log, re.MULTILINE)
    memory = re.search(r"^Peak RSS: (\d+) KiB$", log, re.MULTILINE)
    memory_bytes = re.search(
        r"^\s*(\d+)\s+maximum resident set size\s*$", log, re.MULTILINE
    )
    result = {
        "exit_code": exit_code,
        "runtime_seconds": float(runtime[1]) if runtime else None,
        "peak_memory_kib": int(memory[1])
        if memory
        else int(memory_bytes[1]) / 1024
        if memory_bytes
        else None,
        "output_depths": [],
        "error": None,
    }
    if target_operator is not None:
        result["output_fidelities"] = []
    if exit_code:
        result["error"] = f"Engine exited with code {exit_code}"
    elif result["runtime_seconds"] is None or result["peak_memory_kib"] is None:
        result["error"] = "Missing synthesis time or peak memory measurement"
    else:
        try:
            from circuits import from_engine_output

            circuits = from_engine_output(
                output_prefix.with_suffix(".out").read_text(), engine
            )
            result["output_depths"] = [circuit.depth() for circuit in circuits]
            if target_operator is not None:
                result["output_fidelities"] = [
                    float(process_fidelity(Operator(circuit), target_operator))
                    for circuit in circuits
                ]
        except Exception as error:  # noqa: BLE001
            result["error"] = f"Cannot evaluate synthesized circuit: {error}"
    return result


def _run_repetitions(
    engine: str,
    target: Path,
    options: list[str],
    output_prefix: Path,
    runs_per_circuit: int,
    target_operator: Operator | None,
) -> list[dict]:
    records = []
    for repeat in range(1, runs_per_circuit + 1):
        prefix = output_prefix.with_name(f"{output_prefix.name}-{repeat:03d}")
        print(f"Running {output_prefix.name}: {repeat}/{runs_per_circuit}", flush=True)
        exit_code = _run_engine(engine, target, options, prefix)
        result = _read_run_result(engine, prefix, exit_code, target_operator)
        result.update({"engine": engine, "input": str(target), "repeat": repeat})
        prefix.with_suffix(".json").write_text(json.dumps(result, indent=2) + "\n")
        if result["error"] and not exit_code:
            print(
                f"Failed: {result['error']}; see {prefix.with_suffix('.json')}",
                flush=True,
            )
        records.append(result)
    return records


def _summarize_runs(records: list[dict], engine: str, options: list[str]) -> dict:
    """Summarize successful runs only, using sample standard deviation."""
    successful = [record for record in records if record["error"] is None]
    multiple_candidates = engine == "mitms" and "--approximate" in options
    summary: dict = {
        "runs": len(records),
        "successful_runs": len(successful),
        "failed_runs": len(records) - len(successful),
    }
    measurements = {
        metric: [record[metric] for record in successful]
        for metric in ("runtime_seconds", "peak_memory_kib")
    }
    if not multiple_candidates and any(
        "output_fidelities" in record for record in records
    ):
        measurements["fidelity"] = [
            record["output_fidelities"][0] for record in successful
        ]
    if multiple_candidates:
        summary["candidate_results"] = [
            {
                "repeat": record["repeat"],
                "depth": record["output_depths"],
                **(
                    {"fidelity": record["output_fidelities"]}
                    if "output_fidelities" in record
                    else {}
                ),
            }
            for record in successful
        ]
    else:
        measurements["output_depth"] = [
            record["output_depths"][0] for record in successful
        ]
    for metric, values in measurements.items():
        summary[metric] = {
            "mean": mean(values) if values else None,
            "stddev": stdev(values) if len(values) > 1 else None,
        }
    return summary


def _summarize_circuits(circuit_summaries: list[dict]) -> list[dict]:
    """Group circuit statistics and medians by run configuration."""
    groups: dict[tuple[str, str], list[dict]] = {}
    for summary in circuit_summaries:
        groups.setdefault((summary["label"], summary["engine"]), []).append(summary)
    aggregates = []
    for (label, engine), circuits in groups.items():
        successful = [circuit for circuit in circuits if circuit["successful_runs"]]
        aggregate = {
            "label": label,
            "engine": engine,
            "aggregation": "circuit_means",
            "circuits": len(circuits),
            "successful_circuits": len(successful),
            "total_runs": sum(circuit["runs"] for circuit in circuits),
            **{
                count: sum(circuit[count] for circuit in circuits)
                for count in ("successful_runs", "failed_runs")
            },
        }
        metrics = ["runtime_seconds", "peak_memory_kib"]
        if "fidelity" in circuits[0]:
            metrics.append("fidelity")
        if "output_depth" in circuits[0]:
            metrics.append("output_depth")
        for metric in metrics:
            values = [circuit[metric]["mean"] for circuit in successful]
            aggregate[metric] = {
                "median": median(values) if values else None,
            }
        aggregate["runs"] = [
            {
                key: value
                for key, value in circuit.items()
                if key not in {"label", "engine"}
            }
            for circuit in circuits
        ]
        aggregates.append(aggregate)
    return aggregates


def run_batch(
    inputs: list[str],
    runs: list[tuple[str, str, str, list[str]]],
    random_circuit: dict[str, int] | None = None,
    runs_per_circuit: int = 10,
    measure_fidelity: bool = False,
) -> int:
    if runs_per_circuit < 1:
        raise ValueError("runs_per_circuit must be positive")
    if random_circuit is not None and random_circuit.get("num_circuits", 1) < 1:
        raise ValueError("num_circuits must be positive")
    directory = RESULTS / datetime.now().astimezone().strftime("%Y-%m-%d_%H-%M-%S_%f")
    directory.mkdir(parents=True)
    print(f"Results: {directory}", flush=True)
    run_directory = directory / "runs"
    run_directory.mkdir()
    input_directory = HERE / "inputs"
    if random_circuit is not None:
        input_directory = directory / "inputs"
        inputs = _write_random_inputs(
            random_circuit,
            input_directory,
            include_matrix=any(engine == "synthetiq" for _, engine, _, _ in runs),
        )
    circuit_summaries = []
    for name in inputs:
        target_operator = None
        if measure_fidelity:
            target_operator = Operator(
                qasm2.load(
                    input_directory / f"{name}.qasm",
                    custom_instructions=qasm2.LEGACY_CUSTOM_INSTRUCTIONS,
                )
            )
        for label, engine, suffix, options in runs:
            target = input_directory / f"{name}{suffix}"
            if random_circuit is not None and engine in {"quokka", "quokka-upstream"}:
                target = input_directory / f"{name}.quokka.qasm"
            prefix = run_directory / f"{name}-{label}"
            records = _run_repetitions(
                engine, target, options, prefix, runs_per_circuit, target_operator
            )
            circuit_summaries.append(
                {
                    "circuit": name,
                    "label": label,
                    "engine": engine,
                    **_summarize_runs(records, engine, options),
                }
            )
            (directory / "summary.json").write_text(
                json.dumps(_summarize_circuits(circuit_summaries), indent=2) + "\n"
            )
    return int(any(summary["failed_runs"] for summary in circuit_summaries))
