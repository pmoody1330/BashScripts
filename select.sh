#!/bin/bash
PS3='Enter the Environment: '
Env=("PROD" "TEST" "DEV0" "QUIT")
select Environment in "${Env[@]}"; do
    case $Environment in
        "PROD")
            echo 'You chose PROD'
            #optional code here
            ;;
        "TEST")
            echo 'You chose TEST'
            #optional code here
            ;;
        "DEV0")
            echo 'You chose DEV0'
            #option code here
            ;;
        "QUIT")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done