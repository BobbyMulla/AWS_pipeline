#!/bin/bash

echo "Stopping node server if running..."
pkill node || echo "No node process running"

echo "Making scripts executable..."
chmod +x /home/ubuntu/nodeapp/scripts/*.sh
