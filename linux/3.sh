  #!/bin/bash

# Accept input from user
read -p "Enter the directory path: " path
read -p "Enter the filename to search: " filename

# If path is empty or does not exist, set to "/"
if [ -z "$path" ] || [ ! -d "$path" ]; then
    echo "Invalid or empty path. Using default path: /"
    path="/"
fi

# Search for the file
echo "Searching for '$filename' in '$path'..."
find "$path" -type f -name "$filename"
