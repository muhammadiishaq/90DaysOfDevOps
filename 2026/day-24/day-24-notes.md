# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick....

Create a new branch **feature-login** from **main**, add a few commits to it.

Switch back to **main** and merge **feature-login** into **main**.

Observe the merge, what type of merge happened?
- Fast-forward merge
Create another branch feature-signup, add commits to it. Also add one commit directly on main before merging.
Merge feature-signup into main — what happens this time?

### Note Below answer in your notes:....

**What is a fast-forward merge?**

- A fast-forward merge happens when the main branch has no new commits after creating the feature branch. Git simply moves the branch pointer forward without creating a new commit.

**When does Git create a merge commit?**

- A fast-forward merge happens when the main branch has no new commits after creating the feature branch. Git simply moves the branch pointer forward without creating a new commit.

**What is a merge conflict?**

- A fast-forward merge happens when the main branch has no new commits after creating the feature branch. Git simply moves the branch pointer forward without creating a new commit.

## Task 2: Git Rebase Task Hands-On....

Create a branch feature-dashboard from main and add 2–3 commits.

Add a new commit directly to main.

Switch to feature-dashboard and rebase it onto main.

Check git log --oneline --graph --all and observe the history.

### Notes Below Answer in your notes:....
**What does rebase do to your commits?**

- Rebase takes your feature branch commits and reapplies them on top of the latest commit of the base branch, creating a linear history.

**How is the history different from a merge?**

- Merge keeps the original branch structure and adds a merge commit. Rebase rewrites history and places feature commits after the latest base commit, making it look like the work started from the newest commit.

**Why should you not rebase pushed/shared commits?**

- Because rebase rewrites commit history. If others have already pulled those commits, rewriting history can cause confusion and conflicts in collaboration.

**When would you use rebase vs merge?**

- Because rebase rewrites commit history. If others have already pulled those commits, rewriting history can cause confusion and conflicts in collaboration.

### Task 3: Squash Commit vs Merge Commit.....

Create a branch feature-profile and add 4–5 small commits.

Merge it into main using --squash.

Check git log — only one commit is added to main.

Create another branch feature-settings, add a few commits.

Merge it into main normally (without --squash) and compare history.

### Notes Below Answer in your notes:....

**What does squash merging do...?**

- Squash merging combines multiple commits from a feature branch into a single commit before merging into the main branch.

**When would you use squash merge vs regular merge...?**

- Squash merge is useful when a feature branch has many small or messy commits and you want a clean main branch history. Regular merge is better when you want to keep all commit details.

**What is the trade-off of squashing...?**

- The detailed commit history from the feature branch is lost since everything becomes one single commit


## Task 4: Git Stash Hands-On.....

Make changes to a file without committing.

Try switching branches.
- If changes conflict, Git will not allow switching. If they do not conflict, switching may be allowed.

Use git stash to save your uncommitted changes.

Switch branches, do some work, then switch back.

Use git stash pop to restore changes.

Try creating multiple stashes and list them using git stash list.

Apply a specific stash if needed.

### Notes Below Answer in your notes:....

**Difference between git stash pop and git stash apply...?**

- git stash pop applies the stash and removes it from the stash list.git stash apply applies the stash but keeps it saved for later use.

**When would you use stash in real workflow...?**

- When you are working on something incomplete and an urgent task comes up, you can stash your current changes and switch branches without committing unfinished work.


## Task 5: Cherry Picking

Create a branch feature-hotfix and make 3 commits.

Switch to main.

Cherry-pick only the second commit from feature-hotfix.

Verify using git log that only that specific commit was added.

### Notes Below Answer in your notes:....

**What does cherry-pick do....?**

- Cherry-pick allows you to select and apply a specific commit from one branch to another without merging the entire branch

**When would you use cherry-pick in a real project...?**

- When you need only one specific fix or feature from another branch and do not want to merge all changes.

**What can go wrong with cherry-picking...?**

- It can create duplicate commits if the full branch is later merged.

- Conflicts may occur if the selected commit depends on other commits that are not present in the target branch.