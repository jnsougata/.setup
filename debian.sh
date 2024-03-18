# git setup
echo "Enter GitHub username: "
read username
echo "Enter GitHub email: "
read email
git config --global user.name $username
git config --global user.email $email
git config --global init.defaultBranch main

# build essentials
sudo apt-get update
sudo apt-get install build-essential -y

# chrome
sudo wget -O /tmp/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i /tmp/chrome.deb
sudo apt-get install -f
sudo rm /tmp/chrome.deb

# discord
sudo wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb
sudo apt-get install -f
sudo rm /tmp/discord.deb

# vscode
sudo wget -O /tmp/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo dpkg -i /tmp/vscode.deb
sudo apt-get install -f
sudo rm /tmp/vscode.deb

# space-cli
curl -fsSL https://get.deta.dev/space-cli.sh | sh
ln -s ~/.deta/bin/space /usr/local/bin/space

# go 
sudo apt-get install golang-go -y 
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/lint/golint@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# pycharm-community
sudo snap install pycharm-community --classic
