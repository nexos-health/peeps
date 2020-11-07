# Start from python image
FROM python:3.7.8

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Create src directory
RUN mkdir /src
WORKDIR /src

# Install requirements
COPY requirements.txt /src/
RUN pip install -r requirements.txt

# Copy files to image
COPY ./medrecruitment /src/

# Commands to run on startup of container
#CMD ["python", "medrecruitment/manage.py", "runserver", "0.0.0.0:8000"]