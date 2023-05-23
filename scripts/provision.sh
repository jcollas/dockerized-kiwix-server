#!/bin/bash

# Get most recent version of 'kiwix-tools' from its channel's feed.xml
wget https://download.kiwix.org/release/kiwix-tools/feed.xml
ARCH=`arch`
FILE_NAME="(?<=<title>)kiwix-tools_linux-$ARCH.*(?=</title>)"
TAR_FILE="$(grep -oP $FILE_NAME feed.xml | head -1 )"

# Install latest version of kiwix-tools
wget -O "${TAR_FILE}" https://download.kiwix.org/release/kiwix-tools/"${TAR_FILE}"
tar -xvzf "${TAR_FILE}" -C ./bin --strip-components 1

rm feed.xml
rm "${TAR_FILE}"
