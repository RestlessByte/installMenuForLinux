#!/bin/bash
echo 'Installation xfce4-- user interface'
echo '1) XFCE'
echo '2) KDE'
echo '3) GNOME'
echo '4) LXDE'
echo '5) LXQT'
echo '6) MATE'
echo '7) XFCE'
echo '8) Back to menu'
read -r selection
for i in $selection; do
    case $i in
        1)
            sudo apt install -y xfce4
            ;;
        2)
            sudo apt install -y kde-plasma-desktop
            ;;
        3)
            sudo apt install -y gnome-session
            ;;
        4)
            sudo apt install -y lxde
            ;;
        5)
            sudo apt install -y lxqt
            ;;
        6)
            sudo apt install -y mate-desktop
            ;;
        7)
            sudo apt install -y xfce4
            ;;
        8)
            bash /home/$USER/installMenuForLinux/installation_menu.sh
            ;;
        *)
            echo 'Invalid choice!'
            ;;
    esac
done