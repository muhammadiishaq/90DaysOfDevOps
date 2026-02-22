# Day 18 – Shell Scripting: Functions & Intermediate Concepts

## Overview
Today, we focus on writing **cleaner, reusable scripts** using functions, strict mode, and intermediate scripting practices. By the end, your scripts will be safer, more modular, and easier to maintain.

---

## Learning Goals
- Create and call **functions** in Bash  
- Use **strict mode** (`set -euo pipefail`) for safer scripts  
- Handle **return values** and **local variables**  
- Build an intermediate-level **system info reporter script**  

---

## Task 1: Basic Functions

- Learned how to define simple functions that perform specific tasks.

- Created a greeting function that takes a name as input and displays a message.

- Built an addition function to perform calculations and display results.

**Key takeaway:** Functions allow reusing code and reduce repetition, keeping scripts organized.

   [Click to get Script file](scripts/functions.sh)
   
   ![task1](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-18/images/funcation.png)


## Task 2: Functions with Return Values

- Explored functions that return or display useful information, like disk usage and memory stats.

- Organized scripts so that the main part calls these functions and displays results in a structured way.

**Key takeaway:** Functions can act as small utilities within scripts, improving readability and modularity.

   [Click to get Script file](scripts/disk_check.sh)
   
   ![task1](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-18/images/disk-check.png)

## Task 3: Strict Mode — set -euo pipefail

- Implemented strict mode to make scripts safer.

- Learned the behavior of each flag:

   - set -e → Stops the script immediately if any command fails.

   - set -u → Stops the script if an undefined variable is used.

   - set -o pipefail → Ensures a pipeline fails if any command in the chain fails.

**Key takeaway:** Strict mode prevents unexpected behavior, making scripts more robust and error-proof.

   [Click to get Script file](scripts/strict_demo.sh)
   
   ![task1](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-18/images/strcit.png)

## Task 4: Local Variables

- Practiced defining variables that are local to functions.

- Compared local variables with global variables to see how scope works.

**Key takeaway:** Local variables prevent accidental modification of data outside the function, reducing bugs.

   [Click to get Script file](scripts/local_demo.sh)
   
   ![task1](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-18/images/local.png)

## Task 5: Build a Script — System Info Reporter

- Built a complete script using multiple functions for different system information tasks: hostname, OS details, uptime, disk and memory usage, and top CPU-consuming processes.

- Used a main function to orchestrate all other functions, producing clear, structured output.

- Applied strict mode for safety.

**Key takeaway:** Combining functions with strict mode and a main orchestrating function makes scripts maintainable, modular, and suitable for real-world automation.

   [Click to get Script file](scripts/system_info.sh)
   
   ![task1](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-18/images/system.png)

