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
echo "5. Show CPU Information"
echo "6. Show Memory Usage"
echo "7. Show Disk Usage"
echo "8. Show Uptime"
echo "9. Exit"
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
         ./modules/cpu.sh
           ;;
    
    6)
        ./modules/memory.sh
          ;;

    7)  
        ./modules/disk.sh
         ;;

    8)
        ./modules/uptime.sh
        ;;

    9) 
      
        echo "Good Byee!"
        ;;

    *) 
        echo "Invalid choice!"
        ;;
esac

