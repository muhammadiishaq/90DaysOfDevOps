# Day 29 – Introduction to Docker

## Overview
Today’s goal is to get familiar with **Docker**, understand why containers are useful, and run your first containers.  

By the end of the day, you will know:  
- What containers are and why they’re needed  
- How containers differ from virtual machines (VMs)  
- The Docker architecture and its key components  
- How to install Docker and run your first container  
- How to explore and manage running containers  

---

## Task 1: Understanding Docker

### What is a container and why do we use them?
A **container** is a self-contained environment that packages an application along with its dependencies, libraries, and configuration. This ensures the app can run consistently across any system that supports Docker.

**Why containers matter:**  
- Eliminates the classic problem: *“It works on my machine, but not on yours.”*  
- Containers are **isolated, lightweight, and portable**.  
- They behave like mini virtual machines but are more efficient and faster.  

---

### Containers vs Virtual Machines
| Containers | Virtual Machines |
|------------|-----------------|
| Share the host OS kernel | Each VM has its own OS |
| Use host resources efficiently | Allocates dedicated resources |
| Lightweight, fast startup | Heavy, slower startup |
| Highly portable | Less portable across systems |
| Ideal for microservices | Good for full OS isolation |

**Takeaway:** Containers are designed for speed, flexibility, and consistency, while VMs provide full OS isolation but are resource-heavy.

---

### Docker Architecture
Docker uses a simple but effective architecture:

- **Daemon:** The background service that manages containers, images, networks, and volumes.  
- **Client:** The command-line interface you use to interact with Docker. Commands you type here are sent to the daemon.  
- **Images:** Read-only templates or blueprints for containers containing everything needed to run an application.  
- **Containers:** Running instances of images, where applications execute in isolation.  
- **Registry:** Storage for Docker images.  
  - **Public:** Accessible to everyone, e.g., Docker Hub  
  - **Private:** Internal registries for enterprise use  

**Point**:.. Think of Docker Hub as a “library of images” and containers as “books you can open and run anywhere.”

---

## Task 2: Installing Docker
1. Install Docker on your system or cloud instance.  
2. Verify the installation.  
3. Run the `hello-world` container.  

The output confirms Docker is working and explains what happens when a container is started.  

![snapshot](images/hello-world.png)

---

## Task 3: Running Real Containers
- **Nginx container:** Run a web server container and access it in your browser.  

  ![snapshot](images/nginx.png)

- **Ubuntu container:** Run interactively (`-it`) to explore it like a mini Linux environment.  

  ![snapshot](images/ubuntu.png)

- **Managing containers:**  
  - List running containers: see what’s active  
  - List all containers: view stopped and running containers  
  - Stop or remove containers when they are no longer needed  

  ![snapshot](images/ps.png)  
  ![snapshot](images/ps-a.png)  
  ![snapshot](images/rm-stop.png)

---

## Task 4: Exploring Advanced Features
- **Detached mode:** Running containers in the background frees your terminal and keeps containers running. Foreground mode streams live logs; stopping with Ctrl+C stops the container.  
- **Naming containers:** Assign custom names for easier management instead of using random IDs.  
- **Port mapping:** Map a container port to your host to make services accessible externally.  

  ![snapshot](images/name.png)

- **Logs:** Check logs of a running container to monitor activity.  

  ![snapshot](images/logs.png)

- **Exec into container:** Run commands inside a live container for inspection or management.  

  ![snapshot](images/exec.png)

---

## Task 5: Nginx Deployed Locally
Your Nginx container serves web pages locally, showing how containers can host real applications quickly and consistently.  

![snapshot](images/page1.png)  
![snapshot](images/page2.png)

---

## Key Takeaways
- Containers provide **portable, isolated environments** for applications.  
- Docker separates **images (templates)** from **containers (running instances)**.  
- Detached mode, interactive mode, and port mapping give flexibility in container management.  
- Checking logs and executing commands inside containers is essential for debugging and monitoring.  
- Containers are the **foundation of modern DevOps workflows**, CI/CD pipelines, and microservices architectures.  

---

## Submission
- Save this `README.md` as `day-29-docker-basics.md` in `2026/day-29/`  
- Include screenshots of running containers for reference  
- Commit and push to your fork  

---

## Share Your Progress
Post your first Docker container screenshot on LinkedIn:  

```text
#90DaysOfDevOps #DevOpsKaJosh #TrainWithShubham