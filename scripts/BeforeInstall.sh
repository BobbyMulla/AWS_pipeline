#!/bin/bash

echo "Stopping node server if running..."
pkill node || echo "No node process running"

