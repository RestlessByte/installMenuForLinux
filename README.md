# 👨🏼‍💻 Author script: RestlessByte
## 🐧 Tools for Linux Installation [Automated installation]

## 🔍 Installation

### 😶‍🌫️ Clone repository in /home [WORKER FOLDER]
```bash
cd /home/$USER
git clone git@github.com:RestlessByte/installMenuForLinux.git
cat <<EOF >> ~/.bashrc
tools() {
    path="$(pwd)"
    bash "/home/$USER/installMenuForLinux/installation_menu.sh"
    cd "$path"
}
EOF
source ~/.bashrc
tools
```


## 🚀 Usage

## Example using
```bash
~$ git clone git@github.com:RestlessByte/installMenuForLinux.git
~$ cat <<EOF >> ~/.bashrc
tools() {
    path="$(pwd)"
    bash "/home/$USER/installMenuForLinux/installation_menu.sh"
    cd "$path"
}
EOF
~$ source ~/.bashrc
~$ tools    
>  
Select a profession to install packages:
1) Back-end development
2) Front-end development
3) Tester
4) Designer
5) Installation IDE
6) Installation tools for Linux
7) Exit
1
You selected Back-end development
Available packages:
1) Node.js
2) Python
3) PostgreSQL
4) Docker
5) Kubernetes
6) Bun [Need to install Node.js]
7) Back to menu
Enter the numbers of packages separated by a space (for example, 1 2 3): 
~$ 6
Installing Bun...

```
