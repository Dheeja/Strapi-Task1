#!/bin/bash

# Update and install Docker
apt-get update -y
apt-get install -y docker.io

# Start Docker service
systemctl start docker
systemctl enable docker

# Authenticate Docker with ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com

# Pull the Docker image from ECR
docker pull <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/<repository_name>:latest

# Run the container
docker run -d -p 80:1337 --name strapi-container <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/<repository_name>:latest
