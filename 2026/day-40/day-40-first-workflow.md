# Day 40 – Your First GitHub Actions Workflow

---
Today I created my first CI pipeline using GitHub Actions.
This workflow runs automatically when code is pushed to the repository.

## Challenge Tasks

## Task 1: Set Up
1. Create a new **public** GitHub repository called `github-actions-practice`
2. Clone it locally
3. Create the folder structure: `.github/workflows/`

   [GitHub-Repo.](images/task1.png)
   ![image](images/task1.png)

---


## Task 2: Hello Workflow
Create `.github/workflows/hello.yml` with a workflow that:
1. Triggers on every `push`
2. Has one job called `greet`
3. Runs on `ubuntu-latest`
4. Has two steps:
   - Step 1: Check out the code using `actions/checkout`
   - Step 2: Print `Hello from GitHub Actions!`

Push it. Go to the **Actions** tab on GitHub and watch it run.

**Verify:** Is it green? Click into the job and read every step.

   - Yes My CI work awesome color green.

   ![image](images/task2.png)

---


### Task 3: Workflow Structure Overview

- **`on:`**
  - This defines when the workflow will start.
  - In this example, it runs when a **push event** happens.

- **`jobs:`**
  - This section describes the tasks the workflow performs.
  - A workflow may contain **one or many jobs**.

- **`runs-on:`**
  - Specifies the **virtual machine environment** used to run the job.
  - Common options: `ubuntu-latest`, `windows-latest`, `macos-latest`.

- **`steps:`**
  - Lists the actions that will be executed in the job.
  - Steps run **one by one in sequence**.

- **`uses:`**
  - Allows the workflow to **use an existing GitHub Action**.
  - Example: the checkout action is used to **pull the repository code**.

- **`run:`**
  - Executes **command-line instructions** on the runner.

- **`name:` (for a step)**
  - Provides a **readable title** for the step in the GitHub Actions interface.
 
  ---

  ### Task 4: Add More Steps
Update `hello.yml` to also:
1. Print the current date and time
2. Print the name of the branch that triggered the run (hint: GitHub provides this as a variable)
3. List the files in the repo
4. Print the runner's operating system

   ![image](images/task4.png)

---

### Task 5: Break It On Purpose
1. Add a step that runs a command that will **fail** (e.g., `exit 1` or a misspelled command)
2. Push and observe what happens in the Actions tab
3. Fix it and push again


- **Error**
  ![image](images/task5.png)
   
- **After Fix**
  ![image](images/task5.1.png)

 ---

### What does a failed pipeline look like? How can you understand the error?

- **How a failed pipeline appears**
  - A red ❌ icon shows in the **Actions** tab
  - Workflow status shows **Failed**
  - The job that failed is marked in **red**

- **How to check the error**
  - Open the failed workflow from the **Actions tab**
  - Select the job that failed
  - Open the step marked in red
  - Scroll down in the log output
  - Check the lines just before **exit code 1** to find the actual error message

---





