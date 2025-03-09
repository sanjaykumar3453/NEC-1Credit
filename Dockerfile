# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any necessary dependencies
RUN pip install --no-cache-dir flask

# Make port 5000 available to the world outside the container
EXPOSE 5000

ENV FLASK_APP=hello-world.py
CMD ["python","hello-world.py"]
