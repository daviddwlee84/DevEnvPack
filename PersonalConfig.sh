#!/bin/bash

# *** Please tell me who you are.
# 
# Run
# 
#   git config --global user.email "you@example.com"
#   git config --global user.name "Your Name"
# 
# to set your account's default identity.
# Omit --global to set the identity only in this repository.
git config --global user.email "daviddwlee84@gmail.com"
git config --global user.name "David Lee"

# https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git-gitextension
# This will store password in plain text, make sure disable this or remember to delete this when its not on your personal device
git config --global credential.helper store