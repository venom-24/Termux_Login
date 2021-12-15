#! /data/data/com.termux/files/usr/bin/bash
#Este script fue creado por VENOM24
#Data 22/10/2021


apt update 
apt upgrade -y
apt install util-linux -y
apt install figlet -y
apt install ruby 
gem install lolcat 

mv $HOME/Termux_Login/colors  $PREFIX/libexec/

mv $HOME/Termux_Login/.venom24 $PREFIX/libexec/termux/
cd
mv $HOME/Termux_Login/.nick1 $PREFIX/libexec/termux/
cd
mv $HOME/Termux_Login/colors.properties $HOME/.termux/
cd
rm -rf $PREFIX/etc/motd
cd

mv $HOME/Termux_Login/login.sh $PREFIX/libexec
cd 
mv $HOME/Termux_Login/bash.bashrc $PREFIX/etc/bash.bashrc
cd
rm -rf $HOME/Termux_Login.zip

figlet -f smslant finalizado | lolcat

ls

echo "Facinante habre una nueva session"|lolcat 

