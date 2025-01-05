#!/bin/bash
echo "Вы выбрали Дизайн"
echo "Доступные пакеты для установки: "
echo "1) GIMP"
echo "2) Inkscape"
echo "3) Blender"
echo "4) Figma (через браузер)"
echo "Введите номера пакетов через пробел (например, 1 2 3): "
read -r selection
for i in $selection; do
    case $i in
        1)
            echo "Установка GIMP..."
            sudo apt update && sudo apt install -y gimp
            ;;
        2)
            echo "Установка Inkscape..."
            sudo apt update && sudo apt install -y inkscape
            ;;
        3)
            echo "Установка Blender..."
            sudo apt update && sudo apt install -y blender
            ;;
        4)
            echo "Открытие Figma в браузере..."
            xdg-open https://www.figma.com
            ;;
        *)
            echo "Неверный выбор!"
            ;;
    esac
done
