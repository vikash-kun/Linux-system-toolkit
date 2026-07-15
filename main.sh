#!/bin/bash
GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
YELLOW="\e[33m"
RESET="\e[0m"

log_activity() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> logs/activity.log
}
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
    echo "9. View Activity Log"
    echo "10. Exit"
    echo
}
echo "Hello, Vikash!"

while true
do
    show_menu

    read -p "Enter your choice: " choice

    case $choice in
    1)
        log_activity "Show Date & Time"
            date
        ;;
    2)
       log_activity  "Show Current User"
          whoami
        ;;
    3)
           log_activity "Show Current Directory"
         pwd
           ;;
        
    
    4) 
       log_activity "Show Linux Kernel Version"
    uname -r
    ;;

    5)
        log_activity "Show CPU Information"
    ./modules/cpu.sh
    ;;
    
    6)
       log_activity  "Show memory Information"
         ./modules/memory.sh
          ;;

    7)  
       log_activity "Show disk Information"
          ./modules/disk.sh
         ;;

    8)
       log_activity "Show Uptime"
    ./modules/uptime.sh
    ;;

   9)
    log_activity "View Activity Log"
    ./modules/logs.sh
    ;; 

   10) 
    log_activity "Exit"
    echo -e "${RED}Goodbye!${RESET}"
    break
    ;;
     

    *) 
        echo "Invalid choice!"
        ;;
esac
read -p "Press Enter to continue..."
done
