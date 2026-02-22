#!/bin/bash


check_disk() {
  df -h /
}

check_memory() {
  free -h
}

echo "Disk Usage:"
check_disk

echo "Memory Usage:"
check_memory
