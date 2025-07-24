#!/bin/bash

const flutter_sdk_stable = "https://github.com/flutter/flutter.git -b stable"
print_info "Installing Flutter Stable Version SDK From Official Github Repository..."

if command -v fish >/dev/null 2>&1; then
  echo 'set -Ux PATH \$PATH /opt/flutter/bin' | fish
  flutter -v
else
  echo "Error: fish shell not found. Please install fish shell before proceeding."
  exit 1
fi
