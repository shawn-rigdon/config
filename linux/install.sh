#!/bin/bash

git submodule update --init --recursive

# bash aliases
echo "Updating bash aliases with completion ..."
sudo apt-get install bash-completion
git submodule update --init --recursive

cp .bash* ~/
cp complete-alias/complete_alias ~/.complete_alias

# neovim installation
if ! which nvim &> /dev/null; then
	echo "Building neovim from source ..."
	sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
	pushd neovim
	make CMAKE_BUILD_TYPE=RelWithDebInfo
	sudo make install 
	popd
fi

if ! which node &> /dev/null; then
	curl -sL install-node.now.sh | sudo bash #install latest stable nodejs
	curl --compressed -o- -L https://yarnpkg.com/install.sh | sudo bash #install yarn
fi

echo "Installing neovim configuration ..."
sudo apt-get install xclip curl
cp -r nvim ~/.config/
cp -r nerdfonts ~/.local/share/fonts/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
. ~/.bashrc
sudo npm i -g pyright
nvim --headless +PlugInstall +qall
