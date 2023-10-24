#!/bin/bash

if [ "$1" == "install" ]; then
    echo "Installing..."
    # Clone the repository and create a symbolic link
    sudo git clone https://github.com/andrewbae/pwndocker.git /usr/local/bin/pwndocker
    sudo ln -s /usr/local/bin/pwndocker/pd /usr/local/bin/pd
    echo "Installation complete."
elif [ "$1" == "uninstall" ]; then
    echo "Uninstalling..."
    # Remove the symbolic link and the cloned repository
    sudo rm /usr/local/bin/pd
    sudo rm -rf /usr/local/bin/pwndocker
    echo "Uninstallation complete."
fi