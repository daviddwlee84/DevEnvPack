#!/bin/bash

############ Ubuntu #############

##### Customize one #########
# https://docs.docker.com/engine/install/ubuntu/

# echo "Update the apt package index and install packages to allow apt to use a repository over HTTPS"
# sudo apt-get update
# sudo apt-get install -y \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg-agent \
#     software-properties-common

# echo "Add Docker’s official GPG key"
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# echo "Verify fingerprint"
# sudo apt-key fingerprint 0EBFCD88

# echo "Set up the stable repository"
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"

# echo "Install Docker Engine"
# sudo apt-get update
# sudo apt-get install -y docker-ce docker-ce-cli containerd.io
# sudo usermod -aG docker $USER

#### Official one ######
# Using these scripts is not recommended for production environments
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh


############## WSL ################

sudo apt update
sudo apt install docker.io
sudo usermod -aG docker $USER

echo "Windows WSL Docker" >> ~/.profile
echo "export DOCKER_HOST=127.0.0.1:2375" >> ~/.profile

echo "Verify installation"
docker run hello_world