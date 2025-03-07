#!/bin/bash

while true; do
    echo "Select a profession to install packages:"
    echo "1) Back-end development"
    echo "2) Front-end development"
    echo "3) Tester"
    echo "4) Designer"
    echo "5) Installation IDE"
    echo "6) Installation tools for Linux"
    echo "7) Exit"
    read -r profession

    case $profession in
        1)
            bash /home/$USER/installMenuForLinux/back-end/script.sh
            ;;
        2)
            bash /home/$USER/installMenuForLinux/front-end/script.sh
            ;;
        3)
            bash /home/$USER/installMenuForLinux/tester/script.sh
            ;;
        4)
            bash /home/$USER/installMenuForLinux/designer/script.sh
            ;;
        5)
            bash /home/$USER/installMenuForLinux/IDE/script.sh
            ;;
        6)
            bash /home/$USER/installMenuForLinux/tools/script.sh
            ;;
        7)
            exit 1
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
