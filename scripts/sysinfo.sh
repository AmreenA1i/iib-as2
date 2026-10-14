#!/bin/bash

# System Information Report

set -u

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
