# Use an official, lightweight Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY app.py .

# Run app.py when the container launches
CMD ["python", "app.py"]
