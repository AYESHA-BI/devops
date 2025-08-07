 #!/bin/bash

# Ask for directory
echo "Enter directory:"
read dir

# Use current directory if empty
if [ -z "$dir" ]; then
  dir="."
fi

# Find .java files
files=$(find "$dir" -type f -name "*.java")
count=$(echo "$files" | wc -l)

echo "Total .java files found: $count"

# Delete .java files modified in last 10 days
echo "Deleting files modified in last 10 days..."
find "$dir" -type f -name "*.java" -mtime -10 -exec rm {} \;

