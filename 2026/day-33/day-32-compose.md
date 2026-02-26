# Day 33 Docker Compose: Multi-Container Basics

Today’s goal was to run multi-container applications using a single command.

**Instead of manually creating:**

- Networks

- Volumes

- Containers

Docker Compose allows us to define everything inside one docker-compose.yml file.

---

## Task 1 – Install & Verify

First, I checked if Docker Compose was installed:

```
docker compose version
```

pic

It showed the version successfully, which means Compose is available and ready to use.

---

## Task 2 – First Compose File (Single Container)

I created a folder:

```
mkdir compose-basics
cd compose-basics
```

Then I created a docker-compose.yml file:

```
version: "3.9"

services:
  nginx:
    image: nginx:latest
    ports:
      - "8080:80"
```

Start the service:

```
docker compose up
```

Opened browser:

```
http://localhost:8080
```
Nginx default page was visible...

Stop everything:
```
docker compose down
```

👉 With one file and one command, the container started and stopped.

## Task 3 – WordPress + MySQL Setup

Now I created a multi-container setup.

Write a `docker-compose.yml` that runs:
- A **WordPress** container
- A **MySQL** container

They should:
- Be on the same network (Compose does this automatically)
- MySQL should have a named volume for data persistence
- WordPress should connect to MySQL using the service name

Start it, access WordPress in your browser, and set it up.

My WordPress site and data were still there.

Because MySQL is using a named volume, data is persistent.



## Task 4 – Important Compose Commands
Start in detached mode
docker compose up -d
View running services
docker compose ps
View logs (all services)
docker compose logs -f
View logs of specific service
docker compose logs -f db
Stop without removing
docker compose stop
Remove everything
docker compose down
Rebuild images
docker compose up -d --build

Now I clearly understand how to manage multi-container apps easily.


## Task 5: Environment Variables
1. Add environment variables directly in your `docker-compose.yml`
2. Create a `.env` file and reference variables from it in your compose file
3. Verify the variables are being picked up

   [All Files](Two-Container)
   
   ![snapshot](images/5.png)
   
---



