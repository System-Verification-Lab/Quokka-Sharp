#!/bin/bash

# Empty circuit
filename="basic_tests/empty.qasm"
# Write the content to the file
echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[1];" > "$filename"


# Define the list of single qbit gates
gates=("id" "x" "y" "z" "h" "s" "sdg" "t" "tdg")

# Loop through each gate and create a file with the required content
for g in "${gates[@]}"; do
    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate.qasm"
    
    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[1];
${g} q[0] ;" > "$filename"
done

# Define the list of rotation gates
gates=("rx" "rz")

# Loop through each gate and create a file with the required content
for g in "${gates[@]}"; do
    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate.qasm"
    
    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[1];
${g}(0.2*pi) q[0] ;" > "$filename"
done


# Define the list of controled gates
gates=("cx" "cz" "cs" "csdg")

# Loop through each gate and create a file with the required content
for g in "${gates[@]}"; do
    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate_0.qasm"
    
    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[2];
${g} q[0] q[1] ;" > "$filename"

    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate_1.qasm"

    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[2];
${g} q[1] q[0] ;" > "$filename"
done


# Define the list of double controled gates
gates=("ccx")

# Loop through each gate and create a file with the required content
for g in "${gates[@]}"; do
    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate_0.qasm"
    
    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[3];
${g} q[0] q[1] q[2];" > "$filename"

    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate_1.qasm"

    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[3];
${g} q[1] q[2] q[0] ;" > "$filename"

    # Create the file name dynamically based on the gate name
    filename="basic_tests/${g}_gate_2.qasm"

    # Write the content to the file
    echo "OPENQASM 2.0;
include \"qelib1.inc\";
qreg q[3];
${g} q[2] q[0] q[1] ;" > "$filename"
done