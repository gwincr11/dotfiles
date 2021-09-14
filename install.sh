#!/bin/bash

sudo apt -y install rcm fortune
npm install --global parrotsay
yes | rcup -d /workspaces/.codespaces/.persistedshare/dotfiles/ -t git
source ~/.bash_profile