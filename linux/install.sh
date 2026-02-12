#!/bin/bash

function source_nvm {
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

git submodule update --init --recursive
sudo apt-get install curl

# bash aliases
echo "Updating bash aliases with completion ..."
sudo apt-get install bash-completion
git submodule update --init --recursive

cp .bash* ~/
cp complete-alias/complete_alias ~/.complete_alias
source_nvm

# neovim installation
if ! which nvim &> /dev/null; then
	echo "Building neovim from source ..."
	sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen
	pushd neovim
	make CMAKE_BUILD_TYPE=RelWithDebInfo
	sudo make install 
	popd
fi

if ! command -v nvm &> /dev/null; then
	echo "Installing nvm (node version manager) ..."
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
	source_nvm
	echo "Installing latest stable nodejs and yarn ..."
	nvm install node
	npm install -g yarn
fi

echo "Installing neovim configuration ..."
sudo apt-get install xclip
cp -r nvim ~/.config/
cp -r nerdfonts ~/.local/share/fonts/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo npm i -g pyright
nvim --headless +PlugInstall +qall
