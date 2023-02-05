# Use an official Python runtime as the base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Upgrade pip
RUN python -m pip install --upgrade pip

# Copy the application's requirements from the host to the container
COPY requirements.txt .

COPY config.py /app/config.py

# Install the required packages using pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code from the host to the container
COPY . .

# Specify the environment variables
ENV FLASK_APP=app.py

# Debug Model
# ENV FLASK_DEBUG=1


# Specify the command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]
