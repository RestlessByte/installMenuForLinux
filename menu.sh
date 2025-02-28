#!/bin/bash

while true; do
    echo "Выберите профессию для установки пакетов:"
    echo "1) Back-end разработка"
    echo "2) Front-end разработка"
    echo "3) Тестирование"
    echo "4) Дизайн"
    echo "5) Выход"
    read -r profession

    case $profession in
        1)
            bash /home/$USER/toolsForLinuxInstallation/back-end/install.sh
            ;;
        2)
            bash /home/$USER/toolsForLinuxInstallation/front-end/install.sh
            ;;
        3)
            bash /home/$USER/toolsForLinuxInstallation/tester/install.sh
            ;;
        4)
            bash /home/$USER/toolsForLinuxInstallation/designer/install.sh
            ;;
        5)
            echo "Выход из программы."
            exit 0
            ;;
        *)
            echo "Неверный выбор!"
            ;;
    esac
done
