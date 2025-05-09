#!/usr/bin/env bash

set -e

# Create the necessary directories and files
sudo mkdir -p data
sudo touch data/.runner
sudo mkdir -p data/.cache

# Change ownership to the user running the script
sudo chown -R $(id -u):$(id -g) data/.runner
sudo chown -R $(id -u):$(id -g) data/.cache

# Set the appropriate permissions
sudo chmod 775 data/.runner
sudo chmod 775 data/.cache
sudo chmod g+s data/.runner
sudo chmod g+s data/.cache


# #!/usr/bin/env bash

# set -e

# mkdir -p data
# touch data/.runner
# mkdir -p data/.cache

# chown -R 1001:1001 data/.runner
# chown -R 1001:1001 data/.cache
# chmod 775 data/.runner
# chmod 775 data/.cache
# chmod g+s data/.runner
# chmod g+s data/.cache