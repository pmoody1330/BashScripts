#!/bin/bash
magenta=`tput setaf 5`
orange=`tput setaf 3`
reset=`tput sgr0`

# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}


#Powershell_Private repo
cd /home/pmoody/Documents/Powershell
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/Documents/SQL
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/Documents/scripts
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/Documents/tnhs-gocd-scripts
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/Documents/Playbooks
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull 

cd /home/pmoody/Documents/PSLastPass
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/Documents/BashScripts
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull 

cd /home/pmoody/Documents/Powershell


bash /home/pmoody/Documents/BashScripts/PressAnyKey.sh
