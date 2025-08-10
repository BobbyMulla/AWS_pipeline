#!/bin/bash

echo "Stopping any running node server..."
pkill node || echo "No node process running"

echo "Upgrading Node.js to required version..."
# Install NVM if not already installed
if [ ! -d "$HOME/.nvm" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

# Load NVM and install Node 20
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 20
nvm use 20

echo "Setting correct permissions..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/nodeapp
sudo chmod -R 755 /home/ubuntu/nodeapp
