#!/bin/bash

# Check if httpd is installed
if ! rpm -q httpd &> /dev/null; then
    echo "httpd is not installed. Installing httpd..."
    yum install httpd -y
    if [ $? -eq 0 ]; then
        echo "httpd successfully installed."
    else
        echo "Failed to install httpd."
        exit 1
    fi
else
    echo "httpd is already installed."
fi

