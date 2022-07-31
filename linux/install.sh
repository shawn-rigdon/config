#!/bin/bash

sudo apt-get install xclip neovim

sudo apt-get install bash-completion
git submodule update --init --recursive

cp -r nvim ~/.config/
cp -r nerdfonts ~/.local/share/fonts/
cp .bash* ~/
cp complete-alias/complete_alias ~/.complete_alias
