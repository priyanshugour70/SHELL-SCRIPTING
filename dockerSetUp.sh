#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Update the package database and install dependencies
apt update
apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add the Docker repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package database with the new Docker repository
apt update

# Install Docker
apt install -y docker-ce

# Start the Docker service
systemctl start docker

# Enable Docker to start on boot
systemctl enable docker

# Check Docker version
docker --version

# Add the current user to the "docker" group to run Docker without sudo
usermod -aG docker $USER

echo "Docker installation and setup completed."
echo "You need to log out and back in for group changes to take effect."

# Optionally, you can install Docker Compose
# curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose

