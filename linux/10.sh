   #!/bin/bash

# Accept string from user
echo "Enter a string:"
read input

# Print total number of characters
echo "Total characters: ${#input}"

# Loop through each character and count
echo "Character counts:"
for (( i=0; i<${#input}; i++ )); do
  char="${input:$i:1}"
  echo "$char"
done | sort | uniq -c
