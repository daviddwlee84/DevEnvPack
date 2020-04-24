#!/bin/bash
############################
# This script will either backup current installed VSCode extensions or install new extensions (if any)
############################

########## Variables

extension_list="vscode_extension.txt"

##########

# https://stackoverflow.com/questions/18544359/how-to-read-user-input-into-a-variable-in-bash
read -p "What do you want to do with VSCode extensions? ([B]ackup/[U]pgrade): " confirm

if [[ ${confirm^^} == 'BACKUP' || $confirm == [Bb] ]]; then
    # https://stackoverflow.com/questions/35929746/automatically-install-extensions-in-vs-code
	echo "Backup and current extensions to $extension_list"
    code --list-extensions > $extension_list
    echo "...done"
elif [[ ${confirm^^} == 'UPGRADE' || $confirm == [Uu] ]]; then
    echo "Install extensions"
    cat $extension_list | xargs -L 1 code --install-extension
    echo "...done"
else
	echo "Do nothing..."
fi

