#!/bin/bash

echo "Fixing file ownership..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/nodeapp
sudo chmod -R u+rw /home/ubuntu/nodeapp

echo "Installing dependencies..."
cd /home/ubuntu/nodeapp
npm install


cd /home/ubuntu/nodeapp

npm install