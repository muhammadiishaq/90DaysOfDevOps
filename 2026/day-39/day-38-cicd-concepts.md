# Day 39 – Understanding CI/CD.

## **Task 1: The Problem**

Imagine 5 developers working on the same project. Everyone pushes code and manually deploys to production.

### What can go wrong...?

When deployments are manual, many issues can happen:
- **Merge** conflicts when multiple developers push changes at the same time.
- **Manual** mistakes like deploying the wrong branch or forgetting important files.
- **Production** crashes if untested bugs go live.
- **Hard rollback**s if deployment fails and no proper versioning exists.
- **Stressful deployments** because everything depends on humans doing things perfectly.

Manual deployments don’t scale well as the team grows.

### What does “It works on my machine” mean?

This is a very common developer problem. The code runs perfectly on the developer’s computer… but fails in staging or production.

- Different OS versions (Windows vs Linux)
- Different library versions
- Missing dependencies
- Environment variables not configured
- Database differences

### How many times can a team safely deploy manually?

Usually 1–2 times per day at most.

More than that increases:

- Risk of human error

- Downtime chances

---

## **Task 2: CI vs CD (Clear Explanation)**

## 1. Continuous Integration (CI)

### 1. What happens:

Developers regularly push their code changes to a shared repository such as GitHub or GitLab.
As soon as the code is pushed, a CI tool like Jenkins, GitHub Actions, GitLab CI/CD, or CircleCI automatically starts a pipeline.

The pipeline builds the application and runs automated tests to check whether the new code works correctly with the existing codebase.
If everything passes, the code is considered safe to merge. If something fails, developers are notified immediately.

### 2. How often:

CI runs every time code is pushed to the repository.
This can happen multiple times per day because developers frequently commit small changes instead of large updates.

The goal is to integrate code continuously and get quick feedback without delay.

### 3. What it catches:

Continuous Integration helps detect problems early in the development process.

**It catches:**

- Compilation errors

- Failing test cases

- Integration conflicts between different developers’ code

- Early bugs before reaching production

### 4. Real-World Example (Cricket Streaming App like Tamasha)

In a cricket streaming app like Tamasha, developers push updates daily for features such as live streaming, score updates, and UI improvements.

Whenever code is pushed, Jenkins automatically builds the app and runs tests to check streaming, scores, and notifications.


## 2. **Continuous Delivery (CD)**

### 1. How it differs from CI:
    
   - Builds on CI by ensuring the software is always in a deployable state.
   - Code is automatically prepared for deployment but may require manual approval before release.

### 2. What "delivery" means:
   - The application is always ready to release to production at any time.

### 3.Real-world CD example (Netflix):
   - After passing CI tests, Netflix’s CD pipeline deploys the code to a staging environment.
   - With manual approval updates are then released to production,letting new features and fixes reach users safely and quickly.

## 3. **Continuous Deployment (CD)** 

### 1. How it differs from Continuous Delivery:
   - Every change that passes automated tests is automatically deployed to production without manual approval.

### 2. When teams use it:
   
   - When high-frequency releases are required, and teams trust their automated testing and monitoring.

### 3. Real-world example (Amazon):
    
   - Amazon deploys code multiple times per day directly to production, ensuring every successful build is live for users almost immediately.

---

## Task 3: Pipeline Anatomy (Simple Explanation)

### Trigger

A trigger is the event that starts the pipeline.
It tells the system when to begin the process.

A trigger can happen when someone pushes code, creates a pull request, runs the pipeline manually, or when it starts at a scheduled time.

### Stage

A stage is a main phase in the pipeline.
It divides the pipeline into clear sections.

Common stages are build, test, and deploy.
Stages usually run in a specific order, one after another.

### Job

A job is a task inside a stage.
Each stage can have one or more jobs.

Jobs run independently and can perform specific work.
For example, inside the Test stage, there can be a job called "Run Unit Tests".

### Steps

Steps are small actions inside a job.
They are the basic building blocks of a job.

A step can be running a command, installing dependencies, or executing a test script.

### Runner

A runner is the machine that performs the job.
It can be a physical server or a virtual machine.

The runner provides the environment where all the steps are executed.

### Artifact

An artifact is the output produced by a job.
It can be files, packages, or build results.

For example, a .jar file or a Docker image created during the build stage can be saved and used later for deployment.


---

## Task 4: Draw a Pipeline
Draw a CI/CD pipeline for this scenario:
> A developer pushes code to GitHub. The app is tested, built into a Docker image, and deployed to a staging server.

![image](images/CICD.jpg)
---


## Task 5: Explore in the Wild
1. Open any popular open-source repo on GitHub (Kubernetes, React, FastAPI — pick one you know)
2. Find their `.github/workflows/` folder
3. Open one workflow YAML file
4. Write in your notes:
   - What triggers it?
   - How many jobs does it have?
   - What does it do? (best guess)



https://github.com/fastapi/full-stack-fastapi-template/blob/master/.github/workflows/deploy-staging.yml


```
name: Deploy to Staging

on:
  push:
    branches:
      - master

jobs:
  deploy:
    # Do not deploy in the main repository, only in user projects
    if: github.repository_owner != 'fastapi'
    runs-on:
      - self-hosted
      - staging
    env:
      ENVIRONMENT: staging
      DOMAIN: ${{ secrets.DOMAIN_STAGING }}
      STACK_NAME: ${{ secrets.STACK_NAME_STAGING }}
      SECRET_KEY: ${{ secrets.SECRET_KEY }}
      FIRST_SUPERUSER: ${{ secrets.FIRST_SUPERUSER }}
      FIRST_SUPERUSER_PASSWORD: ${{ secrets.FIRST_SUPERUSER_PASSWORD }}
      SMTP_HOST: ${{ secrets.SMTP_HOST }}
      SMTP_USER: ${{ secrets.SMTP_USER }}
      SMTP_PASSWORD: ${{ secrets.SMTP_PASSWORD }}
      EMAILS_FROM_EMAIL: ${{ secrets.EMAILS_FROM_EMAIL }}
      POSTGRES_PASSWORD: ${{ secrets.POSTGRES_PASSWORD }}
      SENTRY_DSN: ${{ secrets.SENTRY_DSN }}
    steps:
      - name: Checkout
        uses: actions/checkout@v6
      - run: docker compose -f compose.yml --project-name ${{ secrets.STACK_NAME_STAGING }} build
      - run: docker compose -f compose.yml --project-name ${{ secrets.STACK_NAME_STAGING }} up -d
```

- Trigger
  - Runs on push to master branch

- Jobs
  - 1 job (deploy)

- What it does

    - Deploys the app to a staging environment

    - Runs on a self-hosted staging server

    - Uses environment secrets for configuration

    - Builds Docker containers

    - Starts the application with Docker Compose


---
