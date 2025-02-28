#!/bin/bash

while true; do
    echo "Select an IDE to install:"
    echo "1) Visual Studio Code"
    echo "2) Cursor AI"
    echo "3) Back to menu"
    read -r ide 
    case $ide in
        1)
            sudo apt install -y code
            ;;
        2)
            open https://www.cursor.com/
            ;;
        3)
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
    esac
done