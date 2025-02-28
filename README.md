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
git clone git@github.com:RestlessByte/RestlessByte-Dev-ToolsInstallationForLinux.git
alias installTools='bash /home/$USER/toolsForLinuxInstallation/installation.sh'
source ~/.bashrc
installTools
```