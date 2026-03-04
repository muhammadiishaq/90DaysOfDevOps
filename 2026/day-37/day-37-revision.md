# Day 37 – Docker Revision & Cheat Sheet

---

## Self-Assessment Checklist
Mark yourself honestly — **can do**, **shaky**, or **haven't done**:

- [ **✔**] Run a container from Docker Hub (interactive + detached)
   
   - **Can do**
 
- [ **✔**] List, stop, remove containers and images
    
   - **Can do**
 
- [ **✔**] Explain image layers and how caching works
     
   - **shaky**
 
- [ **✔**] Write a Dockerfile from scratch with FROM, RUN, COPY, WORKDIR, CMD
     
   - **Can do**
 
- [ **✔** ] Explain CMD vs ENTRYPOINT
     
   - **Can do**
 
- [**✔** ] Build and tag a custom image
     
   - **Can do**
 
- [ **✔**] Create and use named volumes
     
   - **Can do**
 
- [ **✔**] Use bind mounts
     
   - **Can do**
 
- [ **✔**] Create custom networks and connect containers
     
   - **Can do**
 
- [ **✔**] Write a docker-compose.yml for a multi-container app
     
   - **Can do**
 
- [**✔** ] Use environment variables and .env files in Compose
     
   - **Can do**
 
- [ **✔**] Write a multi-stage Dockerfile
     
   - **Can do**
 
- [ **✔**] Push an image to Docker Hub
     
   - **Can do**
 
- [ **✔**] Use healthchecks and depends_on
   
   - **shaky**
 
---
 
## Quick-Fire Questions

**1. What is the difference between an image and a container?**

An image is like a template or recipe used to create something.
A container is the actual running app created from that template.

**2. What happens to data inside a container when you remove it?**

If you delete a container, its internal data is lost.
To keep data safe, you must use volumes or bind mounts.

**3. How do two containers on the same custom network communicate?**

If containers are on the same custom network, they can talk using their container names.
Docker automatically handles the internal DNS for them.

**4. What does docker compose down -v do differently from docker compose down?**

docker compose down stops and removes containers and networks.
docker compose down -v also deletes the volumes, so stored data is removed too.

**5. Why are multi-stage builds useful?**

Multi-stage builds help reduce image size.
They separate build tools from the final app, keeping only what is needed.

**6. What is the difference between COPY and ADD?**

COPY simply moves files from your local system into the image.
ADD can also download files from URLs and extract compressed files automatically.

**7. What does -p 8080:80 mean?**

It connects port 8080 on your computer to port 80 inside the container.
So when you open localhost:8080, it forwards traffic to the container.

**8. How do you check how much disk space Docker is using?**

You can run docker system df in the terminal.
It shows how much space images, containers, and volumes are using.

---

## Build Your Docker Cheat Sheet
Create `docker-cheatsheet.md` organized by category:
- **Container commands** — run, ps, stop, rm, exec, logs
- **Image commands** — build, pull, push, tag, ls, rm
- **Volume commands** — create, ls, inspect, rm
- **Network commands** — create, ls, inspect, connect
- **Compose commands** — up, down, ps, logs, build
- **Cleanup commands** — prune, system df
- **Dockerfile instructions** — FROM, RUN, COPY, WORKDIR, EXPOSE, CMD, ENTRYPOINT

[Cheatsheet](https://github.com/muhammadiishaq/DevOps_Notes/blob/main/Docker%20Notes/CheatSheet-docker.md) Click to get Docker Cheat Sheet..

---

## Revisit Weak Spots

###**1. Image Layers and Caching in Docker**

Docker images are built step by step, and each step creates a layer.
Every layer is saved, and Docker reuses unchanged layers to build faster next time.

When building again, Docker checks if something changed in a step.
If nothing changed, it uses the saved layer (cache) instead of rebuilding it.

**What I Understood**

Now I clearly understand that each command in a Dockerfile creates a new layer.
If I change one step, Docker rebuilds that step and everything after it.

I also learned that ordering commands properly helps improve caching.
For example, copying dependency files first avoids reinstalling packages every time.

---
