#!/bin/bash
clear
echo "America/Mexico_City" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Mexico_City /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e "\E[44;1;37m    INSTALAR CHECKUSER CONECTA4G     \E[0m" 
echo ""
echo -e "                 \033[1;31mBy @VPN-NetServices\033[1;36m"
echo ""
echo -ne "\n\033[1;32mENTER PARA \033[1;33mCONTINUAR...\033[1;37m: "; read -r
clear
echo -e "\n\033[1;36mINICIANDO INSTALACIÓN \033[1;33mESPERE..."
apt-get install figlet -y > /dev/null 2>&1
pip3 install flask > /dev/null 2>&1
rm /bin/CheckUser > /dev/null 2>&1
sleep 5
cd /bin || exit
wget https://raw.githubusercontent.com/Dark-Wap/CheckUser-4G/refs/heads/main/CheckUser > /dev/null 2>&1
wget https://raw.githubusercontent.com/Dark-Wap/CheckUser-4G/refs/heads/main/userscheck > /dev/null 2>&1
chmod 777 CheckUser > /dev/null 2>&1
chmod 777 userscheck > /dev/null 2>&1
clear
mkdir /usr/lib/checkuser > /dev/null 2>&1
cd /usr/lib/checkuser || exit
rm checkuser.py > /dev/null 2>&1
wget https://raw.githubusercontent.com/Dark-Wap/CheckUser-4G/refs/heads/main/checkuser.py > /dev/null 2>&1
chmod 777 checkuser.py > /dev/null 2>&1
clear
echo -e "        \033[1;33m • \033[1;32mINSTALACIÓN TERMINADA\033[1;33m • \033[0m"
sleep 2
clear
echo ""
echo -e "\033[1;31m \033[1;33mCOMANDO PRINCIPAL: \033[1;32mCheckUser\033[0m"
echo ""
echo -e "\033[1;33mMÁS INFORMACIÓNES \033[1;31m(\033[1;36mTELEGRAM\033[1;31m): \033[1;37m@VPN-NetServices\033[0m"
cat /dev/null > ~/.bash_history && history -c
exit
