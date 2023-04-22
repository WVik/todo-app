# # Use an official Python runtime as the base image
# FROM python:3.9-slim

# COPY ./requirements.txt /app/requirements.txt

# # Set the working directory in the container
# WORKDIR /app

# # Copy the application code into the container
# COPY . /app

# # Install the required dependencies
# RUN pip install --no-cache-dir -r /app/requirements.txt

# # Expose the port the application will run on
# EXPOSE 5000

# # Specify the command to run the application
# CMD ["python", "/app/app.py"]


# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install dependencies
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose a port that the application will run on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]