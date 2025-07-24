#!/bin/bash
#
print_info "Installing required development tools for Linux..."
sudo pacman -S --needed --noconfirm base-devel gcc clang ninja cmake pkg-config unzip
