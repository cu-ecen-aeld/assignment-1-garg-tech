#!/bin/bash

# Check if correct invocation is used
if [ "$#" -ne 2 ]; then
  echo "Error: Two arguments required. Usage: $0 <writefile> <writestr>"
  exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it does not exist
mkdir -p "$(dirname "$writefile")"

# Attempt to create/write to the file, handling errors
if echo "$writestr" > "$writefile"; then
  echo "File '$writefile' created/overwritten with content: $writestr"
else
  echo "Error: Could not create or write to file '$writefile'."
  exit 1
fi

# Exit successfully
exit 0

