# Use the official Python 3.12 Alpine image as the base
FROM python:3.12-alpine

# Set working directory inside the container
WORKDIR /app

# Copy dependency file first (better layer caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Create and switch to a non-root user
RUN adduser -D appuser && chown -R appuser /app
USER appuser

# Expose application port
EXPOSE 5000

# Default command to start the app
CMD ["python", "app.py"]



