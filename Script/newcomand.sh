#!/bin/bash

echo "Uptime:"
uptime

echo "Kernel information:"
uname -a

echo "Active Directory information (if applicable):"
adinfo

echo "Disk space usage:"
df -PTH

echo "Network interface information (using ifconfig):"
ifconfig

echo "Network interface information (using ip a):"
ip a

echo "Routing table:"
route -n

echo "System DMI information:"
dmidecode -t1

echo "Distribution information:"
cat /etc/*-release

echo "List of /dev/infmx:"
ls -la /dev/infmx

echo "List of /dev/oracle:"
ls -la /dev/oracle
