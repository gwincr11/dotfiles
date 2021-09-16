#!/bin/bash
sudo apt -y install rcm 
yes | rcup -d /workspaces/.codespaces/.persistedshare/dotfiles/ -t git
