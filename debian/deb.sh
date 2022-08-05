DOT_DIRECTORY=$(pwd)

#system update
apt update

# check if all must-have things installed
apt-get --needed git base-devel wget firefox curl tmux

# htop and cooler htop
apt-get -S htop bottom

# text editor
apt-get micro

# file manager
apt-get -S nnn

# avoid «?» In zsh
# keep URL’s in quotes

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#autosuggestions and syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#.zshrc
rm ${HOME}.zshrc
cp {DOT_DIRECTORY}/.zshrc ${HOME}
#   adding 
##Path to your oh-my-zsh installation.
#export ZSH="/home/<admin>/.oh-my-zsh"
_zshinstall = ${HOME}/.oh-my-zsh
sed -i '1s@^@export ZSH="'$_zshinstall'"\n@' ${HOME}.zshrc
sed -i '1s@^@#Path to your oh-my-zsh installation\n@' ${HOME}.zshrc

source .zshrc

exit 0;