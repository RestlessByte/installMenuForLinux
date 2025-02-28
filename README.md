# 👨🏼‍💻 Author script: RestlessByte
## 🐧 Tools for Linux Installation [Automated installation]

## 🔍 Installation

### 😶‍🌫️ Clone repository in /home [WORKER FOLDER]
```bash
cd /home/$USER
git clone git@github.com:RestlessByte/RestlessByte-Dev-ToolsInstallationForLinux.git
alias installTools(){
    path=${pwd}
    bash /home/$USER/toolsForLinuxInstallation/installation.sh
    cd $path
}
source ~/.bashrc
installTools
```


## 🚀 Usage

## Example using
```bash
git clone git@github.com:RestlessByte/RestlessByte-Dev-ToolsInstallationForLinux.git
alias installTools='bash /home/$USER/toolsForLinuxInstallation/installation.sh'
source ~/.bashrc
installTools
```