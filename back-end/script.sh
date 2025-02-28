#!/bin/bash
echo "You selected Back-end development"
echo "Available packages:"
echo "1) Node.js"
echo "2) Python"
echo "3) PostgreSQL"
echo "4) Docker"
echo "5) Kubernetes"
echo "6) Back to menu"
echo "Enter the numbers of packages separated by a space (for example, 1 2 3): "
read -r selection
for i in $selection; do
    case $i in
        1)
            echo "Installation Node.js..."
            sudo apt update && sudo apt install -y nodejs npm
            ;;
        2)
            echo "Installation Python..."
            sudo apt update && sudo apt install -y python3 python3-pip
            ;;
        3)
            echo "Installation PostgreSQL..."
            # Обновление списка пакетов
sudo apt update

# Установка необходимых утилит
sudo apt install -y wget gnupg

# Добавление официального репозитория PostgreSQL
            wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor -o /usr/share/keyrings/postgresql-keyring.gpg
            echo "deb [signed-by=/usr/share/keyrings/postgresql-keyring.gpg] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
            sudo sudo apt update
            sudo apt install -y postgresql postgresql-contrib
    sudo sed -i "s/127.0.0.1\/32            scram-sha-256/0.0.0.0\/0            md5/" /etc/postgresql/*/main/pg_hba.conf

# Перезапускаем сервер PostgreSQL
sudo systemctl restart postgresql
# Разрешить порт 5432 в файрволе
sudo ufw allow 5432/tcp
            ;;
        4)
            echo "Installing Docker..."
            sudo apt update && sudo apt install -y docker.io
            sudo systemctl start docker
            sudo systemctl enable docker
            ;;
        5)
            echo "Installing Kubernetes..."
            sudo snap install kubectl --classic
            ;;
        6)
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
