#!/bin/bash

echo "Stopping node server if running..."
pkill node || echo "No node process running"

echo "Creating nodeapp directory if not exists..."
mkdir -p /home/ubuntu/nodeapp

echo "Fixing file permissions..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/nodeapp
sudo chmod -R u+rw /home/ubuntu/nodeapp
