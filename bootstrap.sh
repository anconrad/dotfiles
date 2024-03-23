#!/bin/bash
#
# symlinks zsh dotfiles from current user into /root

set -euo pipefail

sudo ln -s .dotfiles/.zshrc /root/.zshrc
sudo ln -s .dotfiles/.oh-my-zsh-custom /root/.oh-my-zsh-custom
