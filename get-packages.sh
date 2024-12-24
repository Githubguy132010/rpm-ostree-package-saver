#!/bin/bash

# Create output file if it doesn't exist
output_file="packages.txt"
touch "$output_file"

# Function to fetch and format packages
get_packages() {
    echo "Package List $(date '+%Y-%m-%d %H:%M:%S')" > "$output_file"
    echo "----------------------------------------" >> "$output_file"
    
    # Get base packages
    echo "Removed Base Packages:" >> "$output_file"
    rpm-ostree status | grep "RemovedBasePackages:" | sed 's/RemovedBasePackages: *//' | tr ' ' '\n' | sed 's/^/  - /' >> "$output_file"
    
    # Get layered packages
    echo -e "\nLayered Packages:" >> "$output_file"
    rpm-ostree status | grep "LayeredPackages:" | sed 's/LayeredPackages: *//' | tr ' ' '\n' | sed 's/^/  - /' >> "$output_file"
    
    # Get local packages
    echo -e "\nLocal Packages:" >> "$output_file"
    rpm-ostree status | grep "LocalPackages:" | sed 's/LocalPackages: *//' | tr ' ' '\n' | sed 's/^/  - /' >> "$output_file"
}

# Execute main function
get_packages

echo "Package list has been saved to $output_file"
