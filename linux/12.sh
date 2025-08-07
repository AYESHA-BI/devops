  #!/bin/bash

# Get list of files (not directories) in current directory
files=(*)

# Loop through files
echo "Files in current directory:"
for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "$file"
  fi
done
