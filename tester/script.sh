#!/bin/bash
echo "Вы выбрали Тестирование"
echo "Доступные пакеты для установки: "
echo "1) Selenium"
echo "2) JUnit"
echo "3) Postman"
echo "Введите номера пакетов через пробел (например, 1 2 3): "
read -r selection
for i in $selection; do
    case $i in
        1)
            echo "Установка Selenium..."
            sudo apt update && sudo apt install -y python3-selenium
            ;;
        2)
            echo "Установка JUnit..."
            sudo apt update && sudo apt install -y junit
            ;;
        3)
            echo "Установка Postman..."
            sudo snap install postman
            ;;
        *)
            echo "Неверный выбор!"
            ;;
    esac
done
