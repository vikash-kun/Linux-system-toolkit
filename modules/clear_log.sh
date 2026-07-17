#!/bin/bash

read -p "Are you sure you want to clear the activity log? (y/n): " answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    > logs/activity.log
    echo "Activity log cleared."
else
    echo "Operation cancelled."
fi
