   #!/bin/bash

# Ask user for input string
echo "Enter a string:"
read input

# Get length of string
length=${#input}

# Loop through each character using index
for (( i=0; i<length; i++ )); do
  char="${input:$i:1}"
  echo "Character $((i+1)): $char"
done
