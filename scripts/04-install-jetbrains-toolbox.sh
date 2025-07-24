#!/bin/bash

print_info "Installing JetBrains Toolbox..."

wget -O /tmp/toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.29.33.15593.tar.gz
mkdir -p /opt/jetbrains-toolbox
bsdtar -xvf /tmp/toolbox.tar.gz -C /opt/jetbrains-toolbox --strip-components=1
chmod +x /opt/jetbrains-toolbox/jetbrains-toolbox
/opt/jetbrains-toolbox/jetbrains-toolbox &
