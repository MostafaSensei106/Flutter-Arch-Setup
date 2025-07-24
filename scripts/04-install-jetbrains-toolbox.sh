#!/bin/bash

if pacman -Q jetbrains-toolbox &>/dev/null && ! yay -Qum | grep -q "^jetbrains-toolbox$"; then
    print_info "JetBrains Toolbox is already installed and up to date. Skipping installation."
else
    print_info "Installing / updating JetBrains Toolbox..."
    yay -S jetbrains-toolbox
fi
