## Main install script
# File: install.sh

#!/bin/bash
set -e

source ./utils/colors.sh
source ./utils/helpers.sh

./scripts/00-check-env.sh
./scripts/01-install-jdk.sh
./scripts/02-install-dev-tools.sh
./scripts/03-install-flutter.sh
./scripts/04-install-android-sdk.sh
