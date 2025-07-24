#!/bin/bash

flutter_sdk="https://github.com/flutter/flutter.git"
readonly flutter_sdk_stable

  if [ -d "$HOME/flutter" ]; then
    print_info "Flutter SDK already exists, skipping downloading SDK..."
  else
    print_info "Installing flutter stable SDK from official GitHub repository..."
    cd ~/
    git clone $flutter_sdk -b stable
  fi

    FLUTTER_BIN_PATH="$HOME/flutter/bin"
    readonly FLUTTER_BIN_PATH

    if command -v fish >/dev/null 2>&1; then
      print_info "Configuring fish shell by adding Flutter to PATH..."

      # Check if Flutter bin path is already in fish shell's PATH
      # We use 'contains' within fish context to check the current and universal PATH
      if fish -c "contains '$FLUTTER_BIN_PATH' \$PATH" >/dev/null 2>&1; then
        print_info "Flutter path already exists in fish shell's PATH."
      else
        # Add Flutter bin path to fish's universal PATH variable
        # set -Ux ensures the variable is universal and persists across sessions
        if fish -c "set -Ux PATH '$FLUTTER_BIN_PATH' \$PATH"; then
          print_info "Successfully added Flutter to fish shell's PATH."
          print_info "You may need to restart your fish shell for changes to take full effect."
        else
          print_info "Failed to add Flutter to fish shell's PATH."
        fi
      fi
    else
      echo "Error: fish shell not found. Please install fish shell before proceeding."
      exit 1
    fi
