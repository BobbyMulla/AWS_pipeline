#!/bin/bash

echo "Stopping node server if running..."
pkill node || echo "No node process running"

# Inside scripts/BeforeInstall.sh

echo "Fixing file permissions..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/nodeapp

