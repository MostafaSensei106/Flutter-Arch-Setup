#!/bin/bash
#
#

# require_sudo() {
#   if [ "$EUID" -ne 0 ]; then
#     print_error "Please run buy sudo."
#     exit 1
#   fi
# }

require_fish() {
  if ! command -v fish &>/dev/null; then
    print_info "Installing fish shell..."
    sudo pacman -S --noconfirm fish
  fi
}

require_wget() {
  if ! command -v wget &>/dev/null; then
    print_info "Installing wget..."
    sudo pacman -S --noconfirm wget
  fi
}

require_git() {
  if ! command -v git &>/dev/null; then
    print_info "Installing git..."
    sudo pacman -S --noconfirm git
  fi
}
