#!/bin/bash

# Simulated attacker command
ping -c 1 127.0.0.1 > /dev/null && clear

# Visual indicator of "success"
echo -e "\e[31m"
echo "######################################"
echo "#                                    #"
echo "#         You've been hacked!        #"
echo "#                                    #"
echo "######################################"
echo -e "\e[0m"

# Optional: Drop a marker file
touch /tmp/pwned.txt
