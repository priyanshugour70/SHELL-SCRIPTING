#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Update the package database
apt update

# Install the necessary packages
apt install -y curl

# Download and install OpenJDK 17
curl -O https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz

# Extract the archive
tar -zxvf openjdk-17_linux-x64_bin.tar.gz -C /usr/local

# Rename the extracted folder for convenience
mv /usr/local/jdk-17 /usr/local/java

# Set up environment variables for Java
echo 'export JAVA_HOME=/usr/local/java' >> /etc/profile.d/java.sh
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile.d/java.sh

# Load the environment variables
source /etc/profile.d/java.sh

# Verify the Java version
java -version

echo "Java 17 installation and setup completed."

