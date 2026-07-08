#!/bin/bash
GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
YELLOW="\e[33m"
RESET="\e[0m"
show_menu() {
    clear

    echo -e "${GREEN}====================================${RESET}"
    echo -e "${GREEN}   Welcome to Linux System Toolkit${RESET}"
    echo -e "${GREEN}====================================${RESET}"
    echo

    echo "Hello, Vikash!"
    echo
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
}
echo "Hello, Vikash!"

while true
do
    show_menu

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
    
      echo -e "${RED}Goodbye!${RESET}"
      break
    ;;

    *) 
        echo "Invalid choice!"
        ;;
esac
read -p "Press Enter to continue..."
done
