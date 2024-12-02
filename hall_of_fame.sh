#!/bin/bash

# Check if subdomain.txt exists
if [[ ! -f "subdomain.txt" ]]; then
    echo "Error: subdomain.txt file not found!"
    exit 1
fi

# Loop through each line in subdomain.txt
while read -r subdomain; do
    # Run nuclei for each subdomain
    echo "Running nuclei on $subdomain..."
    nuclei -u "$subdomain"
done < "subdomain.txt"

