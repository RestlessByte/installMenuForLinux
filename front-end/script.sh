#!/bin/bash
echo "You selected Front-end development"
echo "Available packages:"
echo "1) Node.js (with npm and yarn)"
echo "2) Visual Studio Code"
echo "3) Back to menu"
echo "Enter the numbers of packages separated by a space (for example, 1 2 3): "
read -r selection
for i in $selection; do
    case $i in
        1)
            echo "Установка Node.js, npm и yarn..."
            sudo apt update && sudo apt install -y nodejs npm
            sudo npm install --global yarn
            ;;
        2)
            echo "Установка Visual Studio Code..."
            sudo snap install --classic code
            ;;
        3)
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
        *)
            echo "Неверный выбор!"
            ;;
    esac
done
