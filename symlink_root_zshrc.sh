#!/bin/bash
#
# symlinks zsh dotfiles from current user into /root

set -euo pipefail

sudo ln -s $HOME/.zshrc /root/.zshrc
sudo ln -s $HOME/.oh-my-zsh-custom /root/.oh-my-zsh-custom
