# Notes Application

### Overview

This project is a lightweight web-based notes manager. It allows users to add new notes, update existing ones, remove notes, and search through saved entries. The application is developed using Python with the Flask framework, and it uses PostgreSQL as the backend database.

### Required Environment Variables

Create a .env file in the same directory where your docker-compose.yml file exists. Inside that file, define the following variables:
```
POSTGRES_DB=notes_database
POSTGRES_USER=username
POSTGRES_PASSWORD=Password
DATABASE_URL=postgresql://username:5432/notes_database
SECRET_KEY= key
```
These variables configure the database connection and application security settings.

### Running the Project with Docker Compose

Ensure Docker is properly installed and running on your system before proceeding.

Open a terminal and navigate to the project directory.

Execute the following command to build and launch the containers in detached mode:

```
docker compose up -d --build
```

Once the containers are up, access the application by visiting:

```
http://localhost:5000
```
To shut down and remove the running containers, use:

```
docker compose down
```
This setup ensures the application and database run in isolated containers, making deployment and environment management much simpler. 🚀







