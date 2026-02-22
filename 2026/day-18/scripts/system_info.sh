#!/bin/bash

#!/bin/bash
set -euo pipefail

print_host_info() {
  echo "=== Host & OS Info ==="
  hostname
  uname -a
}

print_uptime() {
  echo "=== Uptime ==="
  uptime -p
}

print_disk_usage() {
  echo "=== Top 5 Disk Usage ==="
  du -h / | sort -rh | head -5
}

print_memory_usage() {
  echo "=== Memory Usage ==="
  free -h
}

print_top_processes() {
  echo "=== Top 5 CPU Processes ==="
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
}

main() {
  print_host_info
  print_uptime
  print_disk_usage
  print_memory_usage
  print_top_processes
}

main
