# Use an official Python runtime as the base image
FROM python:3.9-slim

COPY ./requirements.txt /app/requirements.txt

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose the port the application will run on
EXPOSE 5000

# Specify the command to run the application
CMD ["python", "/app/app.py"]