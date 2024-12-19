# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set environment variable to ensure Python output is not buffered
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
RUN mkdir /code
WORKDIR /code

# Copy the requirements file and install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /code/

