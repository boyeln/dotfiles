#!/bin/sh

# Install homebrew
echo "=== Installing Homebrew ==="
if [[ $(command -v brew) == "" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Install Kitty terminal
echo "=== Installing Kitty terminal ==="
if [[ $(command -v brew) == "" ]]; then
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
else
    echo "Kitty terminal already installed"
fi

# Install Oh My Zsh
echo "=== Installing Oh My Zsh ==="
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh already installed"
fi

# Install pure terminal prompt
echo "=== Installing Pure terminal prompt ==="
if [ ! -d ~/.zsh/pure ]; then
    mkdir -p "~/.zsh"
    git clone https://github.com/sindresorhus/pure.git "~/.zsh/pure"
else
    echo "Pure terminal prompt already installed"
fi

# Install Oh My Zsh highlight plugin
echo "=== Installing Oh My Zsh highlight plugin ==="
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
    echo "Oh My Zsh highlight plugin already installed"
fi