# Day 17 – Shell Scripting: Loops, Arguments & Error Handling

## Overview
Today, we take shell scripting further — you'll learn how to repeat tasks with loops, pass arguments to scripts, install packages automatically, and handle errors gracefully.


---

## What You’ll Learn
- Using **for** and **while** loops  
- Handling **command-line arguments** (`$1`, `$2`, `$#`, `$@`)  
- Automating package installation via script  
- Adding **basic error handling** in scripts  

---

## Task 1: For Loops

### Example 1: Loop through a list of fruits

Create `for_loop.sh`:

```
FRUITS=("Apple" "Banana" "Mango" "Orange" "Grapes")
for FRUIT in "${FRUITS[@]}"; do
  echo "Fruit: $FRUIT"
done
```
 ![snapshot](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-17/Task-images/for_loop.png)

### Example 2: Count numbers 1–10

**Create count.sh:**
```
for i in {1..10}; do
  echo "Number: $i"
done
```
 ![snapshot](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-17/Task-images/count.png)
 
## Task 2: While Loops

### Countdown Script

**Create `countdown.sh`:**
```
read -p "Enter a number to start countdown: " NUM
while [ $NUM -ge 0 ]; do
  echo $NUM
  NUM=$((NUM-1))
done
echo "Done!"
```

 ![snapshot](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-17/Task-images/countdwon.png)


## Task 3: Command-Line Arguments

### Greet Script

**Create `greet.sh`:**
```
if [ -z "$1" ]; then
  echo "Usage: ./greet.sh <name>"
  exit 1
fi
echo "Hello, $1!"
```

 ![snapshot](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-17/Task-images/greet.png)


### Arguments Demo

**Create `args_demo.sh`:**
```
echo "Script Name: $0"
echo "Total Arguments: $#"
echo "All Arguments: $@"
```
### Arguments:

- $1 → first argument

- $# → number of arguments

- $@ → all arguments

## Task 4: Install Packages via Script

**Create `install_packages.sh`:**
```
# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

PACKAGES=("nginx" "curl" "wget")

for PKG in "${PACKAGES[@]}"; do
  if dpkg -s $PKG &> /dev/null; then
    echo "$PKG is already installed."
  else
    echo "Installing $PKG..."
    apt-get install -y $PKG
  fi
done
```
**Run as root: sudo -i or sudo su**

 ![snapshot](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-17/Task-images/install-packages.png)


## Task 5: Error Handling

### Safe Script

**Create `safe_script.sh`:**

```
set -e  # Exit on any error

mkdir /tmp/devops-test || echo "Directory already exists"
cd /tmp/devops-test || echo "Cannot change directory"
touch testfile.txt || echo "Failed to create file"
```

- Using set -e ensures the script stops if a command fails.

- Using || allows you to print a custom message if a step fails.








