#!/bin/bash

# Check if authorized_keys file exists
if [ ! -f ~/.ssh/authorized_keys ]; then
    # If not, create one
    touch ~/.ssh/authorized_keys
fi

# Get the public key from GitHub
curl -o ~/zorran_rsa.pub https://raw.githubusercontent.com/ZorranGit/SSHStuff/main/zorran_rsa.pub

# Append the public key to authorized_keys
cat ~/zorran_rsa.pub >> ~/.ssh/authorized_keys

# Delete the public key file
rm ~/zorran_rsa.pub
