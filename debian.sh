sudo apt-get update
sudo apt-get install curl wget -y
sudo apt-get install snapd -y
sudo apt-get install python3-pip -y
sudo apt-get install jq -y
echo "Enter your github username: "
read username
echo "Downloading avatar... to ~/Downloads/avatar.png"
sudo wget -O ~/Downloads/avatar.png $(curl -s "https://api.github.com/users/$username" | jq -r '.avatar_url')
echo "Enter git username: "
read username
echo "Enter git email: "
read email
git config --global user.name $username
echo "Git username set to $username"
git config --global user.email $email
echo "Git email set to $email"
git config --global init.defaultBranch main
echo "Git default branch set to main"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
sudo apt-get install build-essential -y
sudo wget -O /tmp/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i /tmp/chrome.deb
sudo apt-get install -f
sudo rm /tmp/chrome.deb
sudo wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb
sudo apt-get install -f
sudo rm /tmp/discord.deb
sudo wget -O /tmp/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo dpkg -i /tmp/vscode.deb
sudo apt-get install -f
sudo rm /tmp/vscode.deb
sudo apt-get install golang-go -y 
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/lint/golint@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
sudo snap install pycharm-community --classic
