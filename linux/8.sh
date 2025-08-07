 #!/bin/bash

# Accept username
echo "Enter username:"
read username

# Accept password (hidden input)
echo "Enter password:"
read -s password

# Check password has both uppercase and lowercase
if [[ "$password" =~ [A-Z] ]] && [[ "$password" =~ [a-z] ]]; then
  echo "Username: $username"
  echo "Password is valid."
else
  echo "Password must contain both uppercase and lowercase letters!"
fi
~                                                                                                                                                     
~                                                                                                                                                     
~                                                                                                                                                     
~                                                                                                                                                    
