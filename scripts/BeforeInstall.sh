#!/bin/bash

echo "Stopping node server if running..."
pkill node || echo "No node process running"


echo "Creating fresh directory..."
mkdir -p /home/ubuntu/nodeapp

echo "Fixing permissions..."
chown -R ubuntu:ubuntu /home/ubuntu/nodeapp
sudo chmod -R u+rw /home/ubuntu/nodeapp