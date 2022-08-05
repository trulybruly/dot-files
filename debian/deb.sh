DOT_DIRECTORY=$(pwd)
echo $DOT_DIRECTORY

#system update
sudo apt-get update

# check if all must-have things installed
sudo apt install wget tmux

# htop and cooler htop
sudo apt install htop bottom

# text editor
sudo apt install micro

# file manager
sudo apt install nnn

# avoid «?» In zsh
# keep URL’s in quotes

#oh-my-zsh
#sudo apt install zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
##autosuggestions and syntax-highlighting
#cd ${HOME}
#git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#.zshrc
rm ${HOME}/.zshrc
cp ${DOT_DIRECTORY}/debian/.zshrc ${HOME}
#   adding 
##Path to your oh-my-zsh installation.
#export ZSH="/home/<admin>/.oh-my-zsh"
_zshinstall=${HOME}/.oh-my-zsh
sed -i '1s@^@export ZSH="'$_zshinstall'"\n@' ${HOME}/.zshrc
sed -i '1s@^@#Path to your oh-my-zsh installation\n@' ${HOME}/.zshrc

source ${HOME}/.zshrc
