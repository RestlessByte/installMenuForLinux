#!/bin/bash
echo "You selected Design"
echo "Available packages:"
echo "1) GIMP"
echo "2) Inkscape"
echo "3) Blender"
echo "4) Figma (through browser)"
echo "Enter the numbers of packages separated by a space (for example, 1 2 3): "
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
