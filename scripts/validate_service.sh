#!/bin/bash

# Define the URL
URL="http://application-server-alb-230718543.ap-south-1.elb.amazonaws.com"

# Perform the curl request and capture the HTTP status code
HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

# Check if the status code is 200
if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "Success: The response code is 200."
else
    echo "Failure: The response code is $HTTP_STATUS."
    exit 1
fi

