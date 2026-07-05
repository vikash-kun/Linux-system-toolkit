#!/bin/bash

echo "===================================="
echo "   Welcome to Linux System Toolkit"
echo "===================================="
echo
echo "Hello, Vikash!"

echo "1. Show Date & Time"
echo "2. Show Current User"
echo "3. Show Current Directory"
echo "4. Show Linux Kernel Version"
echo "5. Exit"
echo

read -p "Enter your choice: " choice

case $choice in
    1)
        date
        ;;
    2)
        whoami
        ;;
    3)
        pwd
        ;;
    
    4) 
        uname -r
        ;;

    5)
       echo "Goodbye!"
        ;;
    
    *) 
        echo "Invalid choice!"
        ;;
esac

