#!/bin/bash

# Check if Git is already installed
if ! command -v git &> /dev/null
then
    echo "Git is not installed. Installing Git..."
    sudo apt-get update -y
    sudo apt-get install git -y
else
    echo "Git is already installed."
fi

# Configure Git with your username and email
read -p "Enter your Git username: " username
read -p "Enter your Git email address: " email

git config --global user.name "$username"
git config --global user.email "$email"

echo "Git has been configured with the following settings:"
echo "Username: $username"
echo "Email: $email"

# Optionally, you can set up other Git configurations here

echo "Git setup complete."

