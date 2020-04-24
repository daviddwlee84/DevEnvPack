#!/bin/bash
############################
# This script will setup a basic confortable environment
############################

echo "Upgrade the source"
sudo apt update; sudo apt upgrade -y
echo "...done"

echo "Installing some must have"
sudo apt install -y build-essential \
                    git \
                    zsh \
                    vim \
                    tmux \
                    neovim \
                    curl
echo "...done"

echo "Installing Oh-my-zsh"
# https://github.com/ohmyzsh/ohmyzsh
# https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# If zsh didn't become default shell (after log-out & log-in)
# https://askubuntu.com/questions/131823/how-to-make-zsh-the-default-shell
# 1. Try `chsh -s $(which zsh)` first
# 2. Modify here and find /bin/bash to /bin/zsh `sudo vi /etc/passwd`
echo "...done"

echo "Installing zsh plugin"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "...done"

# Installation of fzf might fail if not match the Linux distribution
# https://github.com/junegunn/fzf#using-linux-package-managers
echo "Install fzf"
sudo apt install fzf
# https://askubuntu.com/questions/29370/how-to-check-if-a-command-succeeded
if [ $? -ne 0 ]; then
    echo "Install fzf manually"
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --key-bindings --completion --no-update-rc
fi
echo "...done"

echo "Setup dotfiles"
./UpdateDotFiles.sh
echo "...done"
