#!/bin/bash

echo "Stopping node server if running..."
pkill node || echo "No node process running"

# Inside scripts/BeforeInstall.sh

echo "Making directory if not exists..."
mkdir -p /home/ubuntu/nodeapp


echo "Fixing file permissions..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/nodeapp

