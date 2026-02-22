# Day 23 – Git Branching & Working with GitHub...

Today I learned one of the most powerful features of Git — branching. Instead of working directly on main, I explored how to isolate features, experiment safely, and push my work to GitHub.

## Task 1: Understanding Branches
**1. What is a branch in Git?**

  A branch is an independent line of development. It allows you to work on changes without affecting the main codebase.

**2. Why use branches instead of committing everything to main?**

  Branches help avoid breaking the stable code in main. They allow safe experimentation, feature development, and bug fixing separately.

**3. What is HEAD in Git?**

  HEAD is a pointer that refers to the current branch and the latest commit on that branch.

**4. What happens when you switch branches?**

  When switching branches, Git updates your working directory to match the selected branch’s snapshot. Files may change depending on commits in that branch.

## Task 2: Branching Commands — Hands-On
### 1. List branches
```
git branch
```
### 2. Create a new branch
```
git branch feature-1
```
### 3. Switch to branch
```
git checkout feature-1
```
### 4. Create and switch in one command
```
git checkout -b feature-2
```
### 5. Using git switch
```
git switch main
git switch -c feature-3
```
git switch is more focused on branch switching, while git checkout can also restore files.

<img width="1104" height="914" alt="image" src="https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-23/Task-images/branch.png" />

### 6. Make a commit on feature-1

Edited git-commands.md, then:
```
git add git-commands.md
git commit -m "Add branching commands"
```
### 7. Switch back to main
```
git switch main
git log --oneline
```
The commit made on feature-1 was not visible on main.


### 8. Delete a branch
```
git branch -d feature-2
```

### 9. Updated git-commands.md

Added new commands under Branching & Remote section:
```
git branch

git checkout

git switch

git branch -d

git push -u origin branch-name
```
## Task 3: Push to GitHub
1. Created a new repository on GitHub (without README).
2. Connected local repo to GitHub
```
git remote add origin https://github.com/username/devops-git-practice.git
```
3. Pushed main branch
```
git push -u origin main
```
4. Pushed feature branch
```
git push -u origin feature-1
```
Both branches are now visible on GitHub.

**What is the difference between origin and upstream?**

**origin:** Default remote name pointing to my repository (usually my fork).

**upstream:** Refers to the original repository I forked from.

## Task 4: Pull from GitHub

Edited a file directly on GitHub.

Pulled changes locally:
```
git pull origin main
```
**Difference between git fetch and git pull**

**git fetch:** Downloads changes but does NOT merge them automatically.

**git pull:** Fetches and merges changes in one step.

## Task 5: Clone vs Fork
1. **Clone** any public repository from GitHub to your local machine
2. **Fork** the same repository on GitHub, then clone your fork
3. Answer in your notes:
   - What is the difference between clone and fork?
     * `Clone` - Clone means copying repository to your local computer. It is connected with remote.
     * `Fork` -  Copying someone else’s repository into your own GitHub account.
   
   - When would you clone vs fork?
     * I will fork a repository from publicly available repos into my GitHub account and use it. 
     * I will clone if I want a local copy of a repository. I can work on it freely. 
   
   - After forking, how do you keep your fork in sync with the original repo?
     * There is a option avilable on GitHub, SyncFork. You can update a fork using that option.












