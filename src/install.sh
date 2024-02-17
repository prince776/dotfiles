#!/bin/bash

isM1=0
if [[ $(arch) == 'arm64' ]]; then
    isM1=1
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# # if M1 mac, install intel homebrew as well
#if [[ $isM1 == 1 ]]; then
#    echo here
#    cd ~/Downloads
#    mkdir homebrew
#    curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
#    sudo mv homebrew /usr/local/homebrew
#fi

export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/homebrew/bin:$PATH

printf "Installing xcode command line utilities\n"
xcode-select --install

brewFormulae="boost \
    cmake \
    isl \
    jq \
    libmpc \
    lua \
    meson \
    pkg-config \
    wrk"

brewCask="amethyst \
    iterm2 \
    visual-studio-code \
    "

printf "Installing homebrew stuff\n"
brew install $brewFormulae
brew install --cask $brewCask
