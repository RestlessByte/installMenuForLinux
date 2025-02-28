#!/bin/bash
echo "You selected Testing"
echo "Available packages for installation: "
echo "1) Selenium"
echo "2) JUnit"
echo "3) Postman"
echo "4) Back to menu"
echo "Select the packages separated by a space (for example, 1 2 3): "
read -r selection
for i in $selection; do
    case $i in
        1)
            echo "Installation Selenium..."
            sudo apt update && sudo apt install -y python3-selenium
            ;;
        2)
            echo "Installation JUnit..."
            sudo apt update && sudo apt install -y junit
            ;;
        3)
            echo "Installation Postman..."
            sudo snap install postman
            ;;
        4)
            bash /home/$USER/installMenuForLinux/installation_menu.sh
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
