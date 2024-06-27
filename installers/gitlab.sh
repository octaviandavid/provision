#!/bin/bash

# https://gitlab.com/gitlab-org/cli/-/releases

ASSET_FILTER="Linux_x86_64.tar.gz"
INSTALLATION_DIR="$HOME/.local/bin"

# Find the latest version
LATEST=$(curl -s https://gitlab.com/api/v4/projects/gitlab-org%2Fcli/releases | jq -r '.[0].tag_name')
VERSION=$(echo $LATEST | cut -c 2-)
echo "Version: $VERSION"

# Find the download URL
DOWNLOAD_URL=$(
  curl -s https://gitlab.com/api/v4/projects/gitlab-org%2Fcli/releases | \
  jq -r '.[0].assets.links | .[] | select(.link_type == "other" ) | .direct_asset_url ' | \
  grep "glab_${VERSION}_${ASSET_FILTER}"
)

if [ -z "$DOWNLOAD_URL" ]; then
  echo "Download URL modified or not found. Please check the URL manually and edit this script."
  exit 1
fi

# Download and extract glab binary
echo "Downloading glab version $DOWNLOAD_URL..."
curl -sL "$DOWNLOAD_URL" | tar -xzv bin/glab --strip-components 1

# Move glab binary to /usr/local/bin
mv glab "${INSTALLATION_DIR}"

echo "glab version $LATEST has been installed."

# Check the version
glab version
