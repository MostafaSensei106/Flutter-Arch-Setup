#!/bin/bash

flutter_sdk_stable = "https://github.com/flutter/flutter.git -b stable"
readonly flutter_sdk_stable

print_info "Installing Flutter Stable Version SDK From Official Github Repository..."

git clone $flutter_sdk_stable /opt/flutte

if command -v fish >/dev/null 2>&1; then
  echo 'set -Ux PATH \$PATH /opt/flutter/bin' | fish
  flutter -v
else
  echo "Error: fish shell not found. Please install fish shell before proceeding."
  exit 1
fi
