#!/bin/bash

# Function to execute command and display output
execute_command() {
    echo "Executing command: $1"
    echo "---------------------------"
    eval "$1"
    local exit_code=$?
    if [ $exit_code -ne 0 ]; then
        echo "Command failed with exit code $exit_code"
    fi
    echo "---------------------------"
}

echo "Uptime:"
execute_command "uptime"

echo "Kernel information:"
execute_command "uname -a"

echo "Active Directory information (if applicable):"
execute_command "adinfo"

echo "Disk space usage:"
execute_command "df -PTH"

echo "Network interface information (using ifconfig):"
execute_command "ifconfig"

echo "Network interface information (using ip a):"
execute_command "ip a"

echo "Routing table:"
execute_command "route -n"

echo "System DMI information:"
execute_command "dmidecode -t1"

echo "Distribution information:"
execute_command "cat /etc/*-release"

echo "List of /dev/infmx:"
execute_command "ls -la /dev/infmx"

echo "List of /dev/oracle:"
execute_command "ls -la /dev/oracle"
