#! /data/data/com.termux/files/usr/bin/bash
clear
echo    "##  ###  #  ##      ##   #   #  ###"
echo    "# # #   # # # #     # # # # # #  #"
echo    "# # ##  ### # # ### ##  # # # #  #"
echo    "# # #   # # # #     # # # # # #  #"
echo    "##  ### # # ##      # #  #   #   #"
echo
echo
read -p "PRESS ENTER TO CONTINUE" Enter
echo "_______________________________________________"
echo    "SELECT ONE OPTION"
echo
echo   "[1]BOOT-ROOT"
echo   "[2]JUST ROOT"
echo    
echo "_______________________________________________"
       read -p "ENTER YOUR OPTION: " choice
apt update && apt upgrade -y
apt install wget -y
apt install openssl-tool -y
apt install proot -y
apt install bash -y
apt install nano -y
apt install neofetch -y
termux-setup-storage
cd /data/data/com.termux/files/usr/etc/
cp bash.bashrc bash.bashrc.bak
mkdir /data/data/com.termux/files/usr/etc/Root
cd /data/data/com.termux/files/usr/etc/Root
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh
bash kali.sh
echo $Enter
clear
neofetch
echo
if [ "$choice" = "1" ];
then
echo " bash /data/data/com.termux/files/usr/etc/Root/start-kali.sh " >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo
elif [ "$choice" = "2" ];
then
echo " alias rootme='bash /data/data/com.termux/files/usr/etc/Root/start-kali.sh' " >> /data/data/com.termux/files/usr/etc/bash.bashrc
cd /data/data/com.termux/files/usr/etc
source bash.bashrc
echo

else
echo
echo
echo "OPPS , WE CANT INSTALL DEAD-ROOT TRY AGAIN LATER"
exit
fi
echo       "RESTART YOUR TERMUX TO ACESES ROOT"
echo       "[••••••••••••••••••••••••••••••••••••••••••••••••••••]"
echo       "[   TOOL-NAME : DEAD-ROOT                            ]"
 echo      "[   GITHUB : LOGIZ45                                 ]"
 echo      "[   FACEBOOOK : TUMISO CLEMENT                       ]"
 echo      "!   TOOL VERSION : 1.0V                              ]"
 echo      "[••••••••••••••••••••••••••••••••••••••••••••••••••••]"   
