#!/bin/bash
# A menu script
# Define the vaiables

EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

# Define the function
pause(){
	read -p "Press [Enter] key to continue..." fackEnterKey
}

# Do something when 1 is selected
one(){
	echo "You pressed one."
	pause
}

# Do something when 2 is selected
two(){
	echo "You pressed two."
	pause
}

# Display the menu
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~"
	echo " M A I N - M E N U "
	echo "~~~~~~~~~~~~~~~~~~~~"
	echo "1. Selection One "
	echo "2. Selection Two "
	echo "3. Exit "
}

# Read the input and invoke the correct function or Exit
read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	case $choice in
		1) one;;
		2) two;;
		3) exit 0;;
		*) echo -e "${RED}Error...Not a vaiid choice${STD}" && sleep 2
	esac
}

# Trap CTRL+C, CTRL+Z and quit signals
trap '' SIGINT SIGQUIT SIGSTP

# Create the loop
while true
do
	show_menus
	read_options
done
