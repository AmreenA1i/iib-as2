
#!/bin/bash

# System Information Report with Logging

set -u

PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/sysinfo.log"

mkdir -p "$LOG_DIR"

# Display the report and save a copy to the log file.
{
    printf "===== SYSTEM INFORMATION REPORT =====\n"
    printf "Hostname: %s\n" "$(hostname)"
    printf "Date: %s\n" "$(date)"

    . /etc/os-release
    printf "Operating System: %s\n" "$PRETTY_NAME"
    printf "Kernel: %s\n" "$(uname -r)"

    printf "\n===== MEMORY =====\n"
    free -h

    printf "\n===== DISK =====\n"
    df -h /

    printf "\n===== END OF REPORT =====\n"
} | tee "$LOG_FILE"

printf "\nReport saved to: %s\n" "$LOG_FILE"
