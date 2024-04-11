#!/bin/bash
#
# symlinks zsh dotfiles and scripts

set -euo pipefail

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

move_and_symlink() {
    local source="$1"
    local target="$2"
    local backup="${target}.bak"

    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "$target exists and is not a symlink. Moving to $backup"
        sudo mv "$target" "$backup"
    fi

    sudo ln -snf "$source" "$target"
}


# zsh
move_and_symlink "$SCRIPT_DIR/.zshrc" /root/.zshrc
move_and_symlink "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"

move_and_symlink "$SCRIPT_DIR/.oh-my-zsh-custom" /root/.oh-my-zsh-custom
move_and_symlink "$SCRIPT_DIR/.oh-my-zsh-custom" "$HOME/.oh-my-zsh-custom"

move_and_symlink "$HOME/.oh-my-zsh" /root/.oh-my-zsh


# git
move_and_symlink "$SCRIPT_DIR/.gitconfig" "$HOME/.gitconfig"


# custom scripts
for script in "$SCRIPT_DIR/scripts"/*; do
    script_name=$(basename "$script")
    move_and_symlink "$script" "/usr/local/bin/$script_name"
done
