#!/bin/bash
sudo apt-get -y install rcm 
yes | rcup -d /workspaces/.codespaces/.persistedshare/dotfiles/ -t git
