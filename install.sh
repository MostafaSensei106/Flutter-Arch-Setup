## Main install script
# File: install.sh

#!/bin/bash
set -e

chmod +x install.sh scripts/*.sh utils/*.sh


source ./utils/colors.sh
source ./utils/helpers.sh

source ./scripts/00-check-env.sh
source ./scripts/01-install-jdk.sh
source ./scripts/02-install-dev-tools.sh
source ./scripts/03-install-flutter.sh
source ./scripts/04-install-android-sdk.sh
