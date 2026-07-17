#!/bin/bash

read -p "Enter a keyword to search: " keyword

grep -i "$keyword" logs/activity.log
