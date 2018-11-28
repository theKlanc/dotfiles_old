#!/bin/sh
echo "To actually use this, edit this file and remove the 2nd and 3rd lines"
exit
if [ -z "$HOME" ];then
    tempath=`pwd`
    cd ~
    export HOME=`pwd`
    cd $tempath
fi

# Create missing folders and files
mkdir $HOME/.dotfiles/sensitive/
touch $HOME/.dotfiles/sensitive/i3extra.conf

## ASK TO INSTALL PACKAGES
echo -n "Should I install your usual packages, master? (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    correctDistro=`cat /etc/*-release | grep "ID=arch" | wc -l`
    if [ "$correctDistro" -ne "1" ]
    then
        echo "You're not using arch! TRAITOR!"
    else
        echo "Welp, buckle up!"
        pacman -S --noconfirm git sudo
        git clone https://aur.archlinux.org/yay
        cd yay
        makepkg -si --noconfirm
        cd ..
        rm -rf yay
        sudo echo "[multilib]" >> /etc/pacman.conf
        sudo echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
        yay -Syu --noconfirm
        yay -S --noconfirm wine-stable imagemagick rxvt-unicode xorg nvidia nvidia-utils zsh i3 oh-my-zsh-git chromium-vaapi-bin polybar mpv vim openssh lightdm 
betterlockscreen-git vmware-workstation 
clion prismatik steam gimp inkscape feh pactl mupdf dunst compton ncdu youtube-dl wine winetricks protontricks-git elinks ranger unzip unrar udiskie texlive-most teamviewer teamspeak streamlink-twitch-gui sdl2 rofi radare2 radare2-cutter polkit htop imagemagick ntfs-3g notepadqq neofetch ncmpcpp mpv-mpris mimeo linux-headers android-studio flameshot copyq
        #install fonts?
    fi
else
    echo Alrighty then
fi

# Create wallpaper files
$HOME/.dotfiles/scripts/setWallpaper.sh $HOME/.dotfiles/images/wallpaper.png
# ADD SOFTLINKS / HARDLINKS
    ## Config files
    ln -sf $HOME/.dotfiles/configs/aliases.conf $HOME/.aliases
    ln -sf $HOME/.dotfiles/configs/compton.conf $HOME/.compton.conf
    ln -sf $HOME/.dotfiles/configs/dunstrc.conf $HOME/.config/dunst/dunstrc
    #### i3 config is generated at boot by adding configs/i3.conf and sensitive/i3extra.conf      ln -sf $HOME/.dotfiles/configs/i3.conf $HOME/.config/i3/config
    ln -sf $HOME/.dotfiles/configs/inputrc.conf $HOME/.inputrc
    ln -sf $HOME/.dotfiles/configs/polybar.conf $HOME/.config/polybar/config
    ln -sf $HOME/.dotfiles/scripts/.internal/polybarLaunch.sh $HOME/.config/polybar/launch.sh
    ln -sf $HOME/.dotfiles/configs/profile.conf $HOME/.profile
    ln -sf $HOME/.dotfiles/configs/vimrc.conf $HOME/.vimrc
    ln -sf $HOME/.dotfiles/configs/Xresources.conf $HOME/.Xresources
    ln -sf $HOME/.dotfiles/configs/zshrc.conf $HOME/.zshrc


    ## Images / Wallpapers

    ### Add feh wallpaper
    echo "We're gonna need root permissions for this:"
    sudo ln -sf $HOME/.dotfiles/images/wallpaper.png /usr/share/pixmaps/wallpaper.png
    ### Add greeter wallpaper
    sudo ln -f $HOME/.dotfiles/images/greeter.jpg /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/greeter.jpg


    ## Scripts
    mkdir $HOME/.scripts/
    mkdir $HOME/.scripts/udev

    ln -sf $HOME/.dotfiles/scripts/.internal/off $HOME/.dotfiles/scripts/.internal/poweroff
    ln -sf $HOME/.dotfiles/scripts/.internal/restart $HOME/.dotfiles/scripts/.internal/reboot

    ln -sf $HOME/.dotfiles/scripts/.internal $HOME/.scripts
