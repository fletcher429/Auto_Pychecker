#!/usr/bin/env bash

# Check if pip3 is installed
if ! command -v pip3 &> /dev/null; then
    echo "Installing pip3..."
    sudo apt-get update
    sudo apt-get install -y python3-pip
else
    echo "pip3 is already installed."
fi

# Move the script to /usr/local/bin
sudo mv check.sh /usr/local/bin

# Rename the script to 'py'
sudo mv /usr/local/bin/check.sh /usr/local/bin/check

# Make the script executable
sudo chmod +x /usr/local/bin/check