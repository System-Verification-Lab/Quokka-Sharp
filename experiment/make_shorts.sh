#!/bin/bash

# Set the source and destination directory paths
source_directory="./benchmark/algorithm/origin/"
destination_directory="./shortened_files/algorithm/origin/"

# Create the destination directory if it doesn't exist
mkdir -p "$destination_directory"

# Loop through each file in the source directory
for file in "$source_directory"/*; do
    # Get the filename without the extension
    filename=$(basename "$file" | cut -d. -f1)
    
    # Create the shortened version of the file in the destination directory
    shortened_file="${destination_directory}/${filename}_short.txt"
    head -n 50 "$file" > "$shortened_file"
done

