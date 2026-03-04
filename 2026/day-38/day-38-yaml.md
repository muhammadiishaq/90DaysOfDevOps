# Day 38 – YAML Basics

Today I learned the fundamentals of YAML — the language used in CI/CD pipelines like GitHub Actions, GitLab CI, Kubernetes, and more.

YAML is simple, but indentation is everything. One wrong space can break everything.

---
## Task 1 – Key Value Pairs

Create `person.yaml` that describes yourself with:
- `name`
- `role`
- `experience_years`
- `learning` (a boolean)

**Verify:** Run `cat person.yaml` — does it look clean? No tabs?   
- Yes It's look clean, no tabs, no error.

    ![images](images/key_value.png)

    [person.yaml](yamls/person.yaml)

---

## Task 2: Lists
Add to `person.yaml`:
- `tools` — a list of 5 DevOps tools you know or are learning
- `hobbies` — a list using the inline format `[item1, item2]`

What are the two ways to write a list in YAML?

- Using `-` dash
- Using square brackets `[ ]` inline format

### Explanation... 

Lists in YAML can be written in two ways:

   - Block style using - item

   - Inline style using [item1, item2]
Both are valid and commonly used.

   [person.yaml](yamls/person.yaml)

---

### Task 3: Nested Objects
Create `server.yaml` that describes a server:
- `server` with nested keys: `name`, `ip`, `port`
- `database` with nested keys: `host`, `name`, `credentials` (nested further: `user`, `password`)

**Verify:** Try adding a tab instead of spaces — what happens when you validate it?

- Get error Validation error.

Nested objects are created using indentation.
Each level is indented using 2 spaces.
If you use tabs instead of spaces, YAML validation will fail.

   ![image](images/task3.png)

   [server.yaml](yamls/server.yaml)

---

### Task 4: Multi-line Strings
In `server.yaml`, add a `startup_script` field using:
1. The `|` block style (preserves newlines)
2. The `>` fold style (folds into one line)

When would you use `|` vs `>`?

- `|` use for writing configuration files,multiple commands.

- `>` use when you want multiple lines in YAML but stored as one single line.
Very useful in CI/CD pipeline messages.

    [server2](yamls/server2.yaml)

---

### Task 5: Validate Your YAML
1. Install `yamllint` or use an online validator
2. Validate both your YAML files
3. Intentionally break the indentation — what error do you get?
4. Fix it and validate again

    
### **get error**

![image](images/key_valueerror.png)

### **Fixed**

![image](images/key_valufix.png)

---

### Task 6: Spot the Difference
Read both blocks and write what's wrong with the second one:

## Block 1 - correct
```

name: devops
tools:
  - docker
  - kubernetes
```
## Block 2 - broken
```
# Block 2 - broken
name: devops
tools:
- docker
  - kubernetes
```

### What’s wrong?

In Block 2, the indentation is inconsistent.

`-` docker is not properly indented under tools.
  
YAML strictly depends on consistent spacing.

---

### What I Learned (3 Key Points)

YAML uses spaces only — never tabs.

Indentation defines structure.

Lists can be written in block style or inline style.

---

