# Use an official lightweight Python image
# https://hub.docker.com/_/python
FROM python:3.7.8

# Setting this ensures print statements and log messages
# promptly appear in Cloud Logging.
ENV PYTHONUNBUFFERED TRUE

# Service must listen to $PORT environment variable.
# This default value facilitates local development.
ENV PORT 8000

RUN mkdir /src
WORKDIR /src

# Install dependencies.
COPY requirements.txt /src/
RUN pip3 install -r requirements.txt

# Copy local code to the container image.
COPY . /src/

# Run the web service on container startup. Here we use the gunicorn
# webserver, with one worker process and 8 threads.
# For environments with multiple CPU cores, increase the number of workers
# to be equal to the cores available.
CMD exec gunicorn --bind 0.0.0.0:$PORT --workers 1 --threads 8 --timeout 0 wsgi:application
