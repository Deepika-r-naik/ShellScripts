# Parallel SSH (pssh) Command Execution

This script (`commands.sh`) allows you to execute multiple commands on multiple Linux machines in parallel using Parallel SSH (`pssh`). The script is designed to provide system information such as uptime, kernel information, disk space usage, network interface information, routing table, system DMI information, and distribution information on each remote machine.

## Prerequisites

- `pssh` must be installed on your system. You can install it using pip:

## Usage

1. **Create the Shell Script (`commands.sh`)**:
 - Open a text editor and create a new file named `commands.sh`.
 - Add the commands you want to execute on each remote machine inside `commands.sh`.

2. **Make the Script Executable**:
 - After saving `commands.sh`, make it executable using the following command in the terminal:
   ```
   chmod +x commands.sh
   ```

3. **Create a Hosts File (`hosts.txt`)**:
 - Create a text file named `hosts.txt` containing the list of IP addresses or hostnames of the remote machines, with each entry on a new line.

4. **Run `pssh`**:
 - Execute the following command in the terminal to run `pssh` with the hosts file and the script:
   ```
   pssh -h hosts.txt -l username -i < commands.sh
   ```
   Replace `username` with your actual username.

## Example Commands

The script (`commands.sh`) includes the following example commands:
- Uptime
- Kernel information
- Active Directory information (if applicable)
- Disk space usage
- Network interface information (using ifconfig and ip a)
- Routing table
- System DMI information
- Distribution information

Feel free to modify `commands.sh` to include additional commands or customize the existing ones according to your requirements.

