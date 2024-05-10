#!/bin/bash

echo "Uptime:"
uptime 2>&1

echo "Kernel information:"
uname -a 2>&1

echo "Active Directory information (if applicable):"
adinfo 2>&1

echo "Disk space usage:"
df -PTH 2>&1

echo "Network interface information (using ifconfig):"
ifconfig 2>&1

echo "Network interface information (using ip a):"
ip a 2>&1

echo "Routing table:"
route -n 2>&1

echo "System DMI information:"
dmidecode -t1 2>&1

echo "Distribution information:"
cat /etc/*-release 2>&1

echo "List of /dev/infmx:"
ls -la /dev/infmx 2>&1

echo "List of /dev/oracle:"
ls -la /dev/oracle 2>&1
