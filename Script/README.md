# Bash Script for Remote Command Execution

This script (`execute_commands.sh`) allows you to execute multiple commands on multiple remote Linux machines in parallel using pssh. The script includes error handling to handle command failures and display appropriate messages.

## Usage

1. **Create the Script (`execute_commands.sh`)**:
   - Copy the script content into a file named `execute_commands.sh`.

2. **Make the Script Executable**:
   - After saving `execute_commands.sh`, make it executable using the following command in the terminal:
     ```
     chmod +x execute_commands.sh
     ```

3. **Create a Hosts File (`hosts.txt`)**:
   - Create a text file named `hosts.txt` containing the list of IP addresses or hostnames of the remote machines, with each entry on a new line.

4. **Run the Script using pssh**:
   - Execute the following command in the terminal to run the script with pssh:
     ```
     pssh -h hosts.txt -l username -I -e /dev/null < execute_commands.sh
     ```
     Replace `username` with your actual username.

## Script Overview

The script (`execute_commands.sh`) includes two functions:
- `execute_command`: Executes a command and displays its output on the screen.
- `execute_command_with_error_handling`: Executes a command with error handling. If the command fails, it displays a failure message.

The script executes the following commands on each remote machine:
- Uptime
- Kernel information
- Active Directory information (if applicable)
- Disk space usage
- Network interface information (using ifconfig and ip a)
- Routing table
- System DMI information
- Distribution information

Additionally, it executes the following commands with error handling:
- List of `/dev/infmx`
- List of `/dev/oracle`

Feel free to customize the script and add more commands according to your requirements.

================================================================================================================================
## Function - explanation:
```bash
function declaration - This line starts the definition of the function execute_command(). It's a Bash function that will be used to execute a command and display its output.
execute_command() {



Print Execution message - This
line prints a message indicating the command being executed. $1 represents the first argument passed to the function, which is the command to be executed.
echo "Executing command: $1"

Print Separator: This line prints a separator to visually distinguish the output of different commands.
echo "---------------------------"

Execute command: This line executes the command specified as the first argument ($1). eval evaluates the command as
 if it were typed directly into the shell. 2>&1 redirects the standard error (file descriptor 2) to the standard output (file descriptor 1),
 ensuring that both stdout and stderr are captured and displayed together.
eval "$1" 2>&1

Second function
echo "Executing command: $1" - This line prints a message indicating the command being executed. $1 represents the first argument passed to the function, which is the command to be executed.

eval "$1" 2>&1 || echo "Failed to execute command: $1" - This line executes the command specified as the first argument ($1). If the command fails (i.e., returns a non-zero exit status), the || operator executes the command after it, which prints a failure message.
