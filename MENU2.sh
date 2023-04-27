#!/bin/bash

PS3="* Bash Commands *"
options=("List files" "Show Free disk space" "Show system path" "Display command history" "Backup files" "Exit")
HISTFILE=~/.bash_history
set -o history
menu()
{
    echo *Please select an option:*
    select opt in "${options[@]}"
    do 
        case $opt in 
            "List files")
                echo "this is a list of files"
                ls;;

            "Show Free disk space")
                echo "this will free the disk space"
                df -h;;

            "Show system path")
                echo "system path:" 
                $PATH;;

            "Display command history")
                echo "display command history:"
                history;;

            "Backup files")
                read -p "Enter name of directory" directory
                mkdir BackupFolder
                cp -r $directory BackupFolder
                ls BackupFolder;;

            "Exit")
                echo "exiting..."
                break;;
            *)
                echo "please select option from the menu";;
        esac 
    done 
}
menu
