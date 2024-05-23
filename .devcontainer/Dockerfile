# Use a base image
FROM ubuntu:latest

# Set environment variables
ENV POS_VERSION=1.0
ENV PRINTER_ENABLED=true

# Add metadata labels
LABEL maintainer="Your AllyElvis <allyelvis6569@gmail>"
LABEL description="Dockerfile for accounting with point of sales with option of web printer"

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    python3.8.1 \
    python3.8.1-pip

# Copy application files
COPY . /app

# Set working directory
WORKDIR /app

# Expose ports
EXPOSE 80

# Define default command
CMD ["python3.8.1", "app.py"]
