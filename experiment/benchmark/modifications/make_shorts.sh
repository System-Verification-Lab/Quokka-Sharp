#!/bin/bash

# Set the source and destination directory paths
source_directory="./benchmark/"
destination_directory="./shortened_files/"

dirs=(
"algorithm/"
"random/randqubitscale/"
"random/randdepscale/"
)

# Create the destination directory if it doesn't exist
mkdir -p "$destination_directory"

# Loop through each file in the source directory
for d in "${dirs[@]}"; do
    echo "Processing directory: $d"
    for sub_dir in "$source_directory$d"*/; do
        echo "Processing subdirectory: $sub_dir"
        dirname=$(basename "$sub_dir")/
        mkdir -p "$destination_directory$d""$dirname"
        for file in "$sub_dir"*; do
            # Get the filename without the extension
            filename=$(basename "$file")
            # Create the shortened version of the file in the destination directory
            shortened_file="$destination_directory$d""$dirname""short_$filename"
            head -n $1 "$file" > "$shortened_file"
        done
    done
done

