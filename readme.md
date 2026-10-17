# AS2 - System Administration Project

## Overview
This project demonstrates basic Linux system administration, system information reporting, and Git version control on the school lab server.

## System Information Script
The `scripts/sysinfo.sh` script generates a system information report containing:
- Hostname
- Current date and time
- Operating system
- Linux kernel version
- Memory information
- Disk usage

## Requirements
- Linux environment
- Bash shell
- Standard Linux utilities: `hostname`, `date`, `uname`, `free`, and `df`
- Git for version control

## Setup Instructions
1. Clone the public GitHub repository or access the existing project directory.
2. Enter the project directory:
   `cd ds1202-project`
3. Ensure the script is executable:
   `chmod +x scripts/sysinfo.sh`

## How to Run
From the project directory, execute:

`./scripts/sysinfo.sh`

The script prints a system information report to the terminal. Review the hostname, operating system, kernel, memory, and disk information in the output.

## Project Structure
- `scripts/` - System administration scripts
- `docs/` - Project documentation
- `logs/` - Directory reserved for log files

## Version Control Workflow
This project uses Git for version control.

1. Initialise the repository and create the initial commit.
2. Create a feature branch for improvements.
3. Commit changes with meaningful commit messages.
4. Merge the feature branch into `main`.
5. Push the updated `main` branch to GitHub.

Example commands:

`git switch -c feature/example`

`git add .`

`git commit -m "Describe the change"`

`git switch main`

`git merge feature/example`

`git push origin main`

## Notes
The script reports the system information available on the Linux server. The `logs/` directory is reserved for log files if logging functionality is added in a future enhancement.
