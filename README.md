trulybruly's dotfiles
==========

## ***First of all you need to install oh-my-zsh***
### *Debian*
>sudo apt install zsh
### *or arch*
>sudo pacman -S zsh
### *then*
>sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"\
#autosuggestions and syntax-highlighting\
cd ${HOME}\
### *then*
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions\
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

## ***Download script and run helper***

>`sudo curl https://raw.githubusercontent.com/trulybruly/dot-files/master/install | sh`

## ***That`s all***