 #!/bin/bash

# Ask for filename
read -p "Enter the filename: " filename

# Check if file exists
if [ -f "$filename" ]; then
    echo ""
    echo "File Details for '$filename':"
    echo "-----------------------------"
    echo "Number of lines: $(wc -l < "$filename")"
    echo "Number of words: $(wc -w < "$filename")"
    echo "Number of characters: $(wc -m < "$filename")"
else
    echo " File not found: $filename"
fi
