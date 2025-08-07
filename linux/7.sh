  #!/bin/bash

# Ask for username
echo "Enter your username:"
read username

# Check: all uppercase, no spaces, and only letters
if [[ "$username" =~ ^[A-Z]+$ ]]; then
  echo "Valid username: $username"
else
  echo "Invalid username! Must be uppercase letters only and no spaces."
fi
