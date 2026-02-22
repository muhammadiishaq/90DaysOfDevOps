# Day 22 Introduction to Git: My First Repository....

Today I officially started my Git journey. Instead of just reading theory, I created my own repository and began building my personal Git command reference. This is the foundation for everything in DevOps version control is everywhere.

## Task 1: Install and Configure Git

**Verified Git installation**
```
git --version
```
**Configured my identity**
```
git config --global user.name "Afroz"
git config --global user.email "afroz@email.com"
```
Verified configuration
```
git config --list
```
This ensures my commits are properly identified.

<img src="https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-22/Task-screenshot%20/config.png" alt="snapshot" width="650"/>



## Task 2: Created My Git Project

Created project folder:
```
mkdir devops-git-practice
cd devops-git-practice
```
Initialized Git:
```
git init
```
Checked repository status:
```
git status
```
Explored .git/ directory:
```
ls -la .git
```
The .git/ folder stores everything Git needs — commit history, configuration, objects, and references. If this folder is deleted, the project is no longer a Git repository.

<img src="https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-22/Task-screenshot%20/git-folder.png" alt="snapshot" width="650"/>


## Task 3: Created git-commands.md

Inside the repository, I created a file:
```
touch git-commands.md
```
Then I started documenting commands.

Example Structure in git-commands.md

**Setup & Config**
```
git config --global user.name  #Sets global username
```
Example: git config --global user.name "Ishaq"
```
git config --list #Shows current configuration
```
**Basic Workflow**
```
git init #Initializes a new repository
```
```
git add filename #Stages file for commit
```
```
git commit -m "message" #Saves staged changes
```
**Viewing Changes**
```
git status #Shows file status

git log #Shows commit history

git diff #Shows unstaged changes
```
This file will be updated daily as I learn more commands.

<img src="https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-22/Task-screenshot%20/commit.png" alt="snapshot" width="650"/>


## Task 5: Built Commit History

- I repeated the workflow multiple times:

- Edited git-commands.md

= Ran git diff

- Staged changes

- Committed with meaningful messages

**Example commit messages:**
```
"Add viewing changes commands"

"Update workflow section"

"Improve command explanations"
```
**Viewed compact history:**
```
git log --oneline
```
Now I have multiple clean commits showing incremental progress.

<img src="https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-22/Task-screenshot%20/logs.png" alt="snapshot" width="650"/>


## Task 6: Understand the Git Workflow

**What is the difference between git add and git commit?**

**git add vs git commit**
git add moves changes to the staging index for the upcoming commit.
git commit snapshots the staged index into repo history, generating a unique commit hash.


**What does the staging area do? Why doesn't Git just commit directly?**

Staging area stores files/changes that need to be added in next commit. What if I accidentally added something, and it gets committed(ex:private key).That is why staging is needed, So if I added something mistakenly it can be unstaged without any mess. Also we can commit multiple changes with single commit.

**What information does git log show you?**

Displays full commit history: hashes, authors, dates, and messages.

**What is the .git/ folder and what happens if you delete it?**

Role of .git/ directory

.git/ - git folder stores the complete history of your repository, holds config file, hooks. If you delete .git folder, your project history is gone. Nothing can be tracked. It basically becomes normal directory.

**What is the difference between a working directory, staging area, and repository?**

**Working directory:** Local files; untracked until staged.

**Staging area:** Pending commit snapshot (via git add).

**Repository:** Persistent commit history, branches, refs.












