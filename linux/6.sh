  #!/bin/bash

# A. Show IPv4 addresses
echo "IPv4 Address(es):"
ip -4 addr show | grep inet | awk '{print $2}' | cut -d/ -f1

# B. Show only IPv6 addresses
echo ""
echo "IPv6 Address(es):"
ip -6 addr show | grep inet6 | awk '{print $2}' | cut -d/ -f1
