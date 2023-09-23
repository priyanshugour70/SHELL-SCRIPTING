#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Update the package database
apt update

# Install Node.js and npm
apt install -y nodejs npm

# Install Yarn globally using npm
npm install -g yarn

# Check the installed versions
node -v
npm -v
yarn -v

# Configure npm to use a global directory without sudo
mkdir -p /usr/local/lib/node_modules
npm config set prefix /usr/local

echo "Node.js, npm, and Yarn installation and setup completed."

# Example: Install a global package with Yarn
# yarn global add some-package

# Example: Create a new Node.js project
# mkdir my-nodejs-app
# cd my-nodejs-app
# npm init -y
# npm install some-package

