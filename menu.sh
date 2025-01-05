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
            bash /home/localhost/main/bash/install/back-end/install.sh
            ;;
        2)
            bash /home/localhost/main/bash/install/front-end/install.sh
            ;;
        3)
            bash /home/localhost/main/bash/install/tester/install.sh
            ;;
        4)
            bash /home/localhost/main/bash/install/designer/install.sh
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
