#!/bin/bash
echo "Installation security"
echo '1) Install KeepassXC [Password manager]'
echo '2) Back to menu'
read -r selection
for i in $selection; do
    case $i in
        1)
            sudo apt install -y keepassxc
            ;;
        2)
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
        *)
            echo 'Invalid choice!'
            ;;
    esac