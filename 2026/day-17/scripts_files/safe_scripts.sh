#!/bin/bash


set -e  # Exit on any error

mkdir /tmp/devops-test || echo "Directory already exists"
cd /tmp/devops-test || echo "Cannot change directory"
touch testfile.txt || echo "Failed to create file"
