#!/bin/bash
echo "Create file structure"
echo '1) Create WEB folder'
echo '2) Create BACKEND folder'
echo '3) Back to menu '
read -r selection
for i in $selection; do
    case $i in
        1)
            path=$(pwd)/web
            cd $path
            bun init
            bun add nextjs pg dotenv
            mkdir -p web
            mkdir -p $path/{ui,ux,api,database,config,logs,scripts,assets,app}
            touch $path/index.html $path/api/index.ts $path/database/index.ts $path/config/index.ts $path/logs/index.ts $path/scripts/index.ts $path/assets/index.ts $path/app/page.ts
            echo "web structure created"
            ;;
        2)
            path=$(pwd)/backend
            cd $path
            bun init
            bun add nestjs pg dotenv child_process http https fs path os 
            mkdir -p backend
            echo 'backend structure created'
            ;;
        3)
            bash /home/$USER/toolsForLinuxInstallation/menu.sh
            ;;
    esac
done