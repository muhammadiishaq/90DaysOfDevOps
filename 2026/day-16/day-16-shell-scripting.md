# Day 16 – Shell Scripting Basics

## Overview
Today, you’ll begin exploring **shell scripting** — the backbone of automating tasks in Linux. By the end of this session, you’ll know how to write basic scripts that take input, make decisions, and interact with the system.

---

## What You’ll Learn
- The purpose of **shebang** (`#!/bin/bash`)
- How to use **variables** and print messages with `echo`
- Getting user input with `read`
- Writing simple **if-else** logic
- Combining all the above into a functional script

---

## Task 1: Hello Script
1. Create a file called `hello.sh`  
2. Add this line at the top:

```
#!/bin/bash

echo "Hello, DevOps!"
```
Make it executable and run it:
```
chmod +x hello.sh
./hello.sh
```
**Point:** Remove the shebang and run the script — notice the system might use a default shell, which can lead to unexpected behavior.

## Task 2: Working with Variables

### Create variables.sh:
```
NAME="Muhammad Ishaq"
ROLE="DevOps Engineer"
echo "Hello, I am $NAME and I am a $ROLE"
```
**Experiment with single vs double quotes:**

Single quotes ' ' → prevents variable expansion.

Double quotes " " → allows variables to be replaced with their values.


## Task 3: Reading User Input

### Create greet.sh:
```
read -p "Enter your name: " NAME
read -p "Enter your favourite tool: " TOOL
echo "Hello $NAME, your favourite tool is $TOOL"
```
Practice running this script with different inputs.

## Task 4: If-Else Examples

Example A: Number Check
```
read -p "Enter a number: " NUM
if [ $NUM -gt 0 ]; then
  echo "The number is positive"
elif [ $NUM -lt 0 ]; then
  echo "The number is negative"
else
  echo "The number is zero"
fi
```
Example B: File Existence
```
read -p "Enter filename: " FILE
if [ -f "$FILE" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi
```

## Task 5: Combine Everything – Service Checker

### Create server_check.sh:
```
SERVICE="nginx"
read -p "Do you want to check the status of $SERVICE? (y/n) " CHOICE

if [ "$CHOICE" == "y" ]; then
  STATUS=$(systemctl is-active $SERVICE)
  echo "$SERVICE is $STATUS"
else
  echo "Skipped."
fi
```
This script uses variables, user input, and if-else logic together.



