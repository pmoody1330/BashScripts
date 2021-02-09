#!/bin/bash
magenta=`tput setaf 5`
orange=`tput setaf 3`
reset=`tput sgr0`

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

# Legacy Scripts
#cd /home/pmoody/repositories/ramp_sql-scripts
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

# Peoduction Tessitura Scripts
#cd /home/pmoody/repositories/tnhs-gocd-scripts
#p=$(pwd)
#echo "${magenta}$p"
#remote=$(git remote -v)
#echo "${orange}$remote ${reset}"
#git status
#git pull

cd /home/pmoody/repositories/Playbooks
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

cd /home/pmoody/repositories/BashScripts
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull 

# This is the self service APU
#cd /home/pmoody/repositories/hostingserviceapi
#p=$(pwd)
#echo "${magenta}$p"
#remote=$(git remote -v)
#echo "${orange}$remote ${reset}"
#git status
#git pull

cd /home/pmoody/repositories/Python
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/Terraform
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/pmoodyDT/ansible
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/pmoodyDT/terraform
p=$(pwd)
echo "${magenta}$p"
remote=$(git remote -v)
echo "${orange}$remote ${reset}"
git status
git pull

cd /home/pmoody/repositories/BashScripts


bash /home/pmoody/repositories/BashScripts/PressAnyKey.sh
