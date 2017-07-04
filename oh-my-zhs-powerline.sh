#sudo apt install zsh -y
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '/^ZSH_THEME=/ZSH_THEME="agnoster"/' ~/.zshrc
##powershell
#install fonts
#git clone https://github.com/powerline/fonts.git
#Set-ExecutionPolicy RemoteSigned
#.\install.ps1
#Set-ExecutionPolicy Restricted
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
echo "eval `dircolors ~/.dircolors`" >> ~/.zshrc
#update colors on terminal
#update font
#
#vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
