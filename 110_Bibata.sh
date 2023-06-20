#!/bin/bash
sudo apt install conky-all pcmanfm curl geany xterm lolcat neofetch yt-dlp audacious -y
sudo apt install gnome-shell-extension-manager gnome-terminal gnome-weather gnome-chess gnome-tweaks pulseaudio pavucontrol -y

mkdir -p ~/.icons
mkdir -p ~/.themes

cp -r Bibata-Modern-Ice ~/.icons/Bibata-Modern-Ice
# sudo cp -r Bibata-Modern-Ice /usr/share/icons

echo "May need to change /home/phil/.config/gtk-3.0/settings.ini"
echo " and /home/phil/.icons/default/index.theme"
# May need to change /home/phil/.config/gtk-3.0/settings.ini

# and /home/phil/.icons/default/index.theme

tar -xzvf candy-icons.tar.gz
tar -xzvf Dracula.tar.gz
tar -xzvf Sweet-Dark.tar.gz
tar -xzvf kora.tar.gz


cp -r candy-icons ~/.icons/candy-icons
cp -r kora ~/.icons/kora
cp -r Dracula ~/.themes/Dracula
cp -r Sweet-Dark ~/.themes/Sweet-Dark

mkdir -p ~/.local/share/rofi/themes
cd rofithemes
cp -r * ~/.local/share/rofi/themes
cd ..

mkdir -p ~/.config/rofi
cp config.rasi ~/.config/rofi/config.rasi

cp log.sh ~/log.sh

cd conky
chmod +x *.sh
cd Graffias
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..

cd conky
cd Graffias-new
chmod +x *.sh
cd ..
cd ..

#cd Graffias-new
#chmod +x *.sh
#cd ..

mkdir -p ~/.config/conky
cd conky
cp -r * ~/.config/conky
cd ..

#mkdir -p ~/.config/conky/Graffias-new
#cd Graffias-new
#cp -r * ~/.config/conky/Graffias-new
#cd ..


mkdir -p ~/.config/autostart
cp start_conky.desktop ~/.config/autostart
cp audacious.desktop ~/.config/autostart
cp bashrc ~/.bashrc
#mkdir -p ~/.config/ranger
#cp rc.conf ~/.config/ranger/rc.conf
