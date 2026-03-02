from flask import Flask
import os
import psycopg2
import redis

app = Flask(__name__)

@app.route("/")
def home():
    try:
        conn = psycopg2.connect(
            host=os.environ.get("DB_HOST"),
            database=os.environ.get("DB_NAME"),
            user=os.environ.get("DB_USER"),
            password=os.environ.get("DB_PASSWORD")
        )
        conn.close()
        db_status = "Connected to Postgres ✅"
    except Exception as e:
        db_status = f"Database connection failed ❌ {e}"

    try:
        r = redis.Redis(host=os.environ.get("REDIS_HOST"), port=6379)
        r.ping()
        redis_status = "Connected to Redis ✅"
    except Exception as e:
        redis_status = f"Redis connection failed ❌ {e}"

    return f"""
    <h1>Docker Compose Advanced Stack</h1>
    <p>{db_status}</p>
    <p>{redis_status}</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
