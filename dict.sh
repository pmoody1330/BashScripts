#!/bin/bash

help() {
    # Display Help
    echo "This will get the definition for the word from dict.org."
    echo
    echo "Usage: dict.sh intimation | more"
    echo
    echo "Syntax: dict.sh [-h]"
    echo "h     Print this Help."
}


dict () {

    curl dict://dict.org/d:"${1}"

}

# Get the options
while getopts ":h" option; do
   case $option in
    h) # display Help
        help
        exit;;
    \?) # if not an option pass to dict
        echo "Error: Invalid option"
        exit;;
   esac
done

dict "${1}"

