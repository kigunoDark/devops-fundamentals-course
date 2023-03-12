#!/bin/bash

# Get the list of directories to count files in
directories="$@"

# Loop through each directory
for directory in $directories; do
  # Count the number of files in the current directory and its subdirectories
  num_files=$(find "$directory" -type f | wc -l)
  
  # Print the directory name and number of files
  echo "$directory: $num_files"
dones