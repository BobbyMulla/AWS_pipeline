#!/bin/bash

echo "Starting node server.."

cd /home/ubuntu/nodeapp

nohup npm run start > app.log 2>&1 &