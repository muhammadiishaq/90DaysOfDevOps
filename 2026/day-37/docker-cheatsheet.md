# 🐳 Docker Cheat Sheet – Days 29–36 Revision

A quick reference for real-world Docker usage.

---

## Container Commands

| Task | Command |
|------|----------|
| Run container | `docker run nginx` |
| Run interactively | `docker run -it nginx bash` |
| Run in detached mode | `docker run -d -p 8080:80 nginx` |
| List running containers | `docker ps` |
| List all containers | `docker ps -a` |
| Stop container | `docker stop <id>` |
| Remove container | `docker rm <id>` |
| Exec into container | `docker exec -it <id> bash` |
| View logs | `docker logs <id>` |

---

## Image Commands

| Task | Command |
|------|----------|
| Build image | `docker build -t myapp:1.0 .` |
| List images | `docker images` |
| Remove image | `docker rmi <image_id>` |
| Pull image | `docker pull nginx` |
| Push image | `docker push username/myapp:1.0` |
| Tag image | `docker tag myapp:1.0 username/myapp:latest` |

---

## Volume Commands

| Task | Command |
|------|----------|
| Create volume | `docker volume create myvolume` |
| List volumes | `docker volume ls` |
| Inspect volume | `docker volume inspect myvolume` |
| Remove volume | `docker volume rm myvolume` |

---

## Network Commands

| Task | Command |
|------|----------|
| Create network | `docker network create mynet` |
| List networks | `docker network ls` |
| Inspect network | `docker network inspect mynet` |
| Connect container | `docker network connect mynet <container>` |

---

## Docker Compose Commands

| Task | Command |
|------|----------|
| Start services | `docker compose up` |
| Start detached | `docker compose up -d` |
| Stop services | `docker compose down` |
| Stop + remove volumes | `docker compose down -v` |
| List services | `docker compose ps` |
| View logs | `docker compose logs` |
| Build services | `docker compose build` |

---

## Cleanup Commands

| Task | Command |
|------|----------|
| Remove unused resources | `docker system prune` |
| Remove all unused images | `docker system prune -a` |
| Remove unused volumes | `docker volume prune` |
| Check Docker disk usage | `docker system df` |

---

## Dockerfile Instructions

| Instruction | Purpose |
|-------------|----------|
| `FROM node:18` | Base image |
| `WORKDIR /app` | Set working directory |
| `COPY . .` | Copy files |
| `RUN npm install` | Run command at build time |
| `EXPOSE 3000` | Expose port |
| `CMD ["node", "app.js"]` | Default command |
| `ENTRYPOINT ["node"]` | Fixed executable |

---

## Key Concepts

| Concept | Meaning |
|----------|----------|
| Image | Blueprint |
| Container | Running instance |
| Volume | Persistent storage |
| Network | Communication layer |
| Compose | Multi-container orchestration |
| Multi-stage Build | Smaller & secure production image |

---

## End of Cheat Sheet.


## 🤝 Contributions are welcome!  

---

## ✍️ Author

### **Muhammad Ishaq**  

🔗 LinkedIn: https://linkedin.com/in/mdiishaq

💻 GitHub: https://github.com/muhammadiishaq

🌐 Portfolio: https://mdishaq.site

---
