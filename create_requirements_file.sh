#!/bin/bash

# Check if Gemfile.lock exists
if [ ! -f "Gemfile.lock" ]; then
    echo "Gemfile.lock not found."
    exit 1
fi

# Extract gem names and their versions, exclude duplicates, and clean up version constraints
awk ' 
$1 ~ /^[ ]*([^ ]+)/ && $2 ~ /\(/ {
    gsub(/\(|\)/, "", $2);
    if (!seen[$1]++) {
        gsub(/^[>=~ ]+/, "", $2);  # Remove vague constraints like '>=', '~>'
        if ($2 != "") {
            print $1 ":" $2
        }
    }
}' Gemfile.lock > requirements.txt

echo "requirements.txt has been created."
