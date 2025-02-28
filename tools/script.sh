#!/bin/bash
echo "Installation tools for Linux"
echo "Available packages:"
echo "1) Curl"
echo "2) wget "
echo "3) git"
echo "4) Back to menu"
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
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done