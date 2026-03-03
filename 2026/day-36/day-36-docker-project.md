# Day 36 – Docker Project: Containerizing a Complete Application
## Project Objectives

### Task 1: Application Setup

Develop a Flask-based Python application connected to a database.

   [App](app/)
---


### Task 2: Write the Dockerfile
1. Create a Dockerfile for your application
2. Use a **multi-stage build** if applicable
3. Use a **non-root user**
4. Keep the image **small** — use alpine or slim base images
5. Add a `.dockerignore` file


Build the image and verify that it runs correctly in your local environment.
    
   [Dockerfile](app/Dockerfile)

---

### Task 3: Add Docker Compose
Write a `docker-compose.yml` that includes:
1. Your **app** service (built from Dockerfile)
2. A **database** service (Postgres, MySQL, MongoDB — whatever your app needs)
3. **Volumes** for database persistence
4. A **custom network**
5. **Environment variables** for configuration (use `.env` file)
6. **Healthchecks** on the database

Run `docker compose` up and confirm that all services communicate properly.

[Docker Compose](./app/docker-compose.yml)

---


### Task 4: Ship It
1. Tag your app image
2. Push it to Docker Hub
3. Share the Docker Hub link
4. Write a `README.md` in your project with:
   - What the app does
   - How to run it with Docker Compose
   - Any environment variables needed


    [Tag & Push](app/push.png)


    [DockerHub](app/dckrhub.png)
---

### Task 5: Test the Whole Flow
1. Remove all local images and containers
2. Pull from Docker Hub and run using only your compose file
3. Does it work fresh? If not — fix it until it does

- Application runs successfully on a fresh setup.

    [Working App](app/app.png)


---

## Documentation
Create `day-36-docker-project.md` with:
- What app you chose and why
- Your Dockerfile (with comments explaining each line)
- Challenges you faced and how you solved them
- Final image size
- Docker Hub link

    - Final Image size is 242 MB

### Challenges Faced

MongoDB healthcheck initially failed due to wrong command

Fixed by using mongosh ping command

Ensured container waits until DB is healthy

    
   **Doceker Hub Link** : https://hub.docker.com/repository/docker/sanketdangat11/notes-app/general

    [Project README](app/README.md)

---










