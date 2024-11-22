#!/bin/bash

# Wait
sleep 3

# Check if the process 'gammastep' is running
if pgrep -x "gammastep" > /dev/null; then
    echo "true"
else
    echo "false"
fi

