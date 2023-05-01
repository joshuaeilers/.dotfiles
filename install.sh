#!/bin/zsh

set -e -o pipefail

# homebrew: https://brew.sh/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
  eval "$(/opt/homebrew/bin/brew shellenv)" &&\
  brew bundle install --file=./config/Brewfile

# open jdk

sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# fzf: https://github.com/junegunn/fzf

/opt/homebrew/opt/fzf/install

# nvm: https://github.com/nvm-sh/nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# vscode: https://github.com/VSCodeVim/Vim#mac-setup

set +e
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false || true              # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false || true      # For VS Code Insider
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false || true         # For VS Codium
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false || true   # For VS Codium Exploration users
defaults delete -g ApplePressAndHoldEnabled || true                                           # If necessary, reset global default
set -e

# powerline: https://powerline.readthedocs.io

pip3 install powerline-status

# nvim setup

mkdir -p ~/.config/nvim
git clone git@github.com:joshuaeilers/nvim.git ~/.config/nvim

# entry points for configs

cp ./entry/.gitconfig ~
cp ./entry/.tmux.conf ~
cp ./entry/.vimrc ~
cp ./entry/.zshrc ~
