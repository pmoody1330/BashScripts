#!/bin/bash
magenta=$(tput setaf 5)
orange=$(tput setaf 3)
reset=$(tput sgr0)

# Kill any open ssh sessions so the correct key will be used
PID=$(pgrep -f ssh); kill "$PID"
PID=''

# Check that the script is being run with root access
#[ "$EUID" -eq 0 ] || {
#  echo 'Please run with sudo or as root.'
#  exit 1
#}

# Powershell_Private my private repo
#cd /home/pmoody/repositories/powershell_private
#p=$(pwd)
#echo "${magenta}$p"
#remote=$(git remote -v)
#echo "${orange}$remote ${reset}"
#git status
#git pull

# Public Scripts for support (Read Only db access)
#cd /home/pmoody/repositories/scripts
#p=$(pwd)
#echo "${magenta}$p"
#remote=$(git remote -v)
#echo "${orange}$remote ${reset}"
#git status
#git pull

cd /home/pmoody/repositories/Playbooks || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/Documents/PSLastPass || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/BashScripts || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/Python || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/Terraform || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

# Kill any open ssh sessions so the correct key will be used
PID=$(pgrep -f ssh); kill "$PID"
PID=''

cd /home/pmoody/repositories/pmoodyDT/ansible || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull --all

cd /home/pmoody/repositories/pmoodyDT/terraform || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull --all

cd /home/pmoody/repositories/pmoodyDT/Bash_DT || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/pmoodyDT/PythonDT || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/pmoodyDT/Notes || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/pmoodyDT/LogicMonitor || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/pmoodyDT/SQL || exit
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/BashScripts || exit

# Kill any open ssh sessions so the correct key will be used
PID=$(pgrep -f ssh); kill "$PID"
PID=''

bash /home/pmoody/repositories/BashScripts/PressAnyKey.sh
