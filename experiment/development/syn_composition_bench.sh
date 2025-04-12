#!/bin/bash

tool_path="../../d4v2/build/d4 -m max#sat --maxsharpsat-option-and-dig false --float 1"
eq_tool_path="../../GPMC/bin/gpmc -mode=1"

python3 syn_composition_run.py "$tool_path" "./pauli_compositions.json" "$eq_tool_path" 
