#!/bin/bash
sudo apt-get -y install rcm shellcheck
yes | rcup -d /workspaces/.codespaces/.persistedshare/dotfiles/ -t git
