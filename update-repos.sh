#!/bin/bash
red=`tput setaf 1`
reset=`tput sgr0`
cd /home/pmoody/Documents/Powershell
p=$(pwd)
echo "${red} $p ${reset}"
sudo git status
sudo git pull

cd /home/pmoody/Documents/SQL
p=$(pwd)
echo "${red} $p ${reset}"
sudo git status
sudo git pull

cd /home/pmoody/Documents/scripts
p=$(pwd)
echo "${red} $p ${reset}"
sudo git status
sudo git pull

cd /home/pmoody/Documents/tnhs-gocd-scripts
p=$(pwd)
echo "${red} $p ${reset}"
sudo git status
sudo git pull

cd /home/pmoody/Documents/Playbooks
p=$(pwd)
echo "${red} $p ${reset}"
sudo git status
sudo git pull 

cd /home/pmoody/Documents/PSLastPass
p=$(pwd)
echo "${red} $p ${reset}"
sudo git status
sudo git pull 

cd /home/pmoody/Documents/Powershell

echo "Press any key to continue"
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
clear;
exit ;
else
echo "waiting for the keypress"
fi

done
