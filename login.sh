#! /data/data/com.termux/files/usr/bin/bash

#Elegidos para ser hackers aqui les brindo #esta facinante herramienta un saludo

#Camina a mi lado derecho conviertete en uno #de mis Dicsipulos
#BanderaBlancaHackingEtico
#Este scsipt a sido codificado por venom24
#Data 22/10/2021



#Colors		
source $PREFIX/libexec/colors

#Variables 
venom24=$(base64 -d $PREFIX/libexec/termux/.venom24)
nick1=$(base64 -d $PREFIX/libexec/termux/.nick1) 
newpasswd=passwd1
nicknew=respuesta1

reset2="si"

#funciones
#trap ctrl_c 2

#function ctrl_c() {

#printf  "$red  logued \n"

#}


function reinicio {
clear	
bash $PREFIX/libexec/login.sh
}

function mipasswd {
echo 
echo -e "\e[1;33m"
echo "Tu password es >> "  $venom24

}

function new_key {
clear	

echo -e "\e[1;31m"
figlet -f smslant reset 
echo -e "\e[1;36m"
echo 	    
echo -e "\e[1;31m[01]\e[1;36mVer tu password"
echo -e "\e[1;31m[02]\e[1;36mCambiar tu password"
echo -e "\e[1;31m[03]\e[1;36mCambiar tu respuesta"
echo -e "\e[1;31m[04]\e[1;36mRestaurar Banner de inicio"
echo -e "\e[1;31m[00]\e[1;36mEXIT"

echo -e "\e[1;34m"
read  -p "ELIGE UNA OPCION  >> " opc
case $opc in

	

01)	mipasswd
	sleep 2
	new_key
	
        ;;

02)
	reset
	;;



03)
respuesta

;;

04)
                                   
echo -e "\e[1;32mImportante responde con un \e[1;36msi \e[1;32mo \e[1;31mno\e[1;32m
a la siguiente pregunta"
echo
echo -e "\e[1;35m"
read -p "¿Deceas restaurar el banner de inicio? >> " reset1

if [[ -z $reset1 ]] ; then
echo -e "\e[1;32m"
	echo "Campo obligatorio"
	sleep 2.0
	new_key
fi

while [ $reset1 != $reset2 ] ; do
        new_key
done

if [ $reset1 = $reset2 ] ; then
        restaurar
fi
	
	;;

00)
	exit
	;;

*)
	echo -e "\e[1;32m"
	echo "Tu eleccion no esta"
	sleep 2.0
	new_key

esac

}

function reset {
echo -e "\e[1;32m"
read -p "Escribe tu nuevo password >> " passwd1
echo 
read -p "Confirma tu nuevo password >> "  passwd2
echo "
"

while [[ $passwd1 != $passwd2 ]] ; do
        new_key
done
                                                        if [[ $passwd1 = $passwd2 ]] ; then
	echo -e "\e[1;33m"                           
	echo "Tu nuevo password es >> "  $passwd1    
	sleep 3
	printf $passwd1 > $PREFIX/libexec/termux/tmp-ak
        chmod +w $PREFIX/libexec/termux/.venom24
        base64 $PREFIX/libexec/termux/tmp-ak > $PREFIX/libexec/termux/.venom24
        chmod -w $PREFIX/libexec/termux/.venom24
        rm $PREFIX/libexec/termux/tmp-ak
	new_key	
	
							fi


}

function respuesta {
echo -e "\e[1;32m"	
	
read -p "Escribe tu nueva respuesta >> " respuesta1
echo 
read -p "Confirma tu nueva respuesta >> " respuesta2

while [[ $respuesta1 != $respuesta2 ]] ; do
	new_key
done

if [[ $respuesta1 = $respuesta2 ]] ; then
	echo -e "\e[1;33m"
	echo "tu nueva respuesta es >>" $respuesta1
	sleep 3
printf $respuesta1 > $PREFIX/libexec/termux/tmp-ak2
chmod +w $PREFIX/libexec/termux/.nick1
base64 $PREFIX/libexec/termux/tmp-ak2  > $PREFIX/libexec/termux/.nick1
chmod -w $PREFIX/libexec/termux/.nick1
rm $PREFIX/libexec/termux/tmp-ak2
new_key

fi


}


function nickname {

	
echo -e "\e[1;36m"	
read -p "                 Escribe tu nickname  >> " nick2               
echo "                                                  "    
if [[ -z $nick2 ]] ; then
	echo -e "\e[1;32m"
	echo "                 ¡¡Campo obligatorio!!"
	sleep 2.0 
	clear
	nickname
fi

while [[ $nick1 != $nick2 ]] ; do 
	clear
	nickname
done                                                                                                          
if [[ $nick1 == $nick2 ]] ; then
           new_key    
	   
fi
}

function restaurar {
cd

mv $HOME/Termux_Login/motd  $PREFIX/etc 
cd
mv $HOME/Termux_Login/bash.bashrc1  $PREFIX/etc/bash.bashrc

cd

rm -rf $HOME/.termux/colors.properties
cd 
cd $PREFIX/libexec/termux
ls
rm -rf .venom24 .nick1
cd
rm -rf $PREFIX/libexec/colors
cd

rm -rf $HOME/Termux_Login
cd
rm -rf $HOME/Termux_Login.zip
cd
rm -rf $PREFIX/libexec/login.sh


echo "Restablecido, habre una nueva session"|lolcat

exit

}

clear
echo -e "\e[1;36m            #################################"
echo -e "\e[1;36m            # BIENVENIDO A TU TERMUX\033[1;31m V-0.117\033[1;36m#"
echo "            # PARA ACCEDER AL SISTEMA LINUX #"
echo -e "\e[1;36m            #      DIGITA LOS\033[1;32m  4 DIGITOS\033[1;36m    #"
echo "            # BANDERA BLANCA HACKING ETICO  #"
echo "            #################################"
echo
echo -e "\e[1;34m"
read   -p "                 ESCRIBE TU PASSWORD >> " venomcito24


if [[ -z $venomcito24 ]] ;then
echo""
echo -e "\e[1;32m"
 echo "                ¡¡CAMPO OBLIGATORIO!!"
	sleep 2
	reinicio
fi

while [[ "$venom24" != "$venomcito24" ]] ; do
echo -e "\e[1;31m"
echo "                 ¡¡Acceso denegado!!"
sleep 2.0
	nickname
	
	
	                                     
done                                                                                                          
if [[ "$venom24" == "$venomcito24" ]] ; then   
	echo -e "\e[1;32m"

echo "                 ¡¡Acceso concedido!!"
sleep 2.0
	clear            
fi
