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
pacman -S --needed git base-devel wget firefox curl

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
if [[ "$_list_directories" =~ ".fonts"]];
then 
    mkdir ./.fonts
fi
cd ~/.fonts
wget https://github.com/trulybruly/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf

## editing settings.json
cd ~/.config/Code - OSS/User/
rm settings.json
wget https://github.com/trulybruly/
cd ~

# mail manager
pacman -S geary