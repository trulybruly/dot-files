DOT_DIRECTORY=$(pwd)

#system update
pacman -Syyu
echo "Who is the manufacturer of your video card"
echo "1 - NVIDIA"
echo "2 - AMD"
echo "0 - skip driver setup"
read _vga
if [ $_vga -eq 1 ];
then
    pacman -S nvidia
elif [ $_vga -eq 2 ];
then
    pacman -S mesa

# check if all must-have things installed
pacman -S --needed git base-devel wget firefox curl tmux

# htop and cooler htop
pacman -S htop bottom

# text editor
pacman -S micro

# file manager
pacman -S nnn

# yay installer
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# avoid «?» In zsh
# keep URL’s in quotes

# install pamac 
yay -S pamac-aur
# install vscodium
pamac install code
## powerline_fonts
cd ~
list_directories = "$(ls -a)"
if [ ! [ "$_list_directories" =~ ".fonts"]];
then 
    mkdir ./.fonts
fi
cd ~/.fonts
wget https://github.com/trulybruly/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf

## editing settings.json
cd ~/.config/Code - OSS/User/
rm settings.json
cp $DOT_DIRECTORY/settings.json .
cd ~

# mail manager
pacman -S geary

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#autosuggestions and syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#.zshrc
curl -Ls https://raw.githubusercontent.com/trulybruly/dotfiles/main/.cfg/start.sh | sh

source .zshrc
