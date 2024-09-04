#!/bin/bash

# Restart the httpd service
echo "Restarting httpd service..."
systemctl restart httpd

# Check if the restart was successful
if [ $? -eq 0 ]; then
    echo "httpd service restarted successfully."
else
    echo "Failed to restart httpd service."
    exit 1
fi

