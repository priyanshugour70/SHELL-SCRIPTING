#!/bin/bash

# Update package repositories
sudo apt update

# Install Git
sudo apt install -y git

# Install Apache2
sudo apt install -y apache2

# Create a simple HTML file
echo "Hello, this is your deployment!" > /var/www/html/index.html

# Start Apache2 (if not already started)
sudo systemctl start apache2

# Enable Apache2 to start on boot
sudo systemctl enable apache2

# Display a message indicating successful deployment
echo "Deployment complete! Your Apache web server is running."

