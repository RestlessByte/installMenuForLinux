#!/bin/bash
echo "Installation tools for Linux"
echo "Available packages:"
echo "1) Curl"
echo "2) wget "
echo "3) git"
echo "4) SSH"
echo "5) VNC"
echo "6) cron [Automatic tasks]"
echo "7) nodemon - Need to install Node.js [Automatic restart of the server]"
echo "8) pm2 - Need to install Node.js [Automatic restart of the server]"
echo "9) Back to menu"
echo "Enter the numbers of packages separated by a space (for example, 1 2 3): "
read -r selection
for i in $selection; do
    case $i in
        1)
            sudo apt install -y curl
            ;;
        2)
            sudo apt install -y wget
            ;;
        3)
            sudo apt install -y git
            ;;
        4)
            sudo apt install -y ssh
            ;;
        5)
            sudo apt install -y vnc4server
            ;;
        6)
            sudo apt install -y cron
            ;;
        7)
            sudo npm install -g nodemon
            ;;
        8)
            sudo npm install -g pm2
            ;;
        9)
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done