#!/bin/bash

if [ -z "${YT_DLP_VERSION}" ]; then
    echo "YT_DLP_VERSION is not set. Exiting."
    exit 1
fi

if [ -z "${BUILDPLATFORM}" ]; then
    echo "BUILDPLATFORM is not set. Exiting."
    exit 1
fi

# Define the URL based on the platform
if [ "${BUILDPLATFORM}" = "linux/arm/v7" ]; then
    URL="https://github.com/yt-dlp/yt-dlp/releases/${YT_DLP_VERSION}/download/yt-dlp_linux_armv7l"
else
    URL="https://github.com/yt-dlp/yt-dlp/releases/${YT_DLP_VERSION}/download/yt-dlp_linux"
fi

# Download yt-dlp binary
curl -L "$URL" -o yt-dlp

# Set permissions
chmod +x yt-dlp

# Move yt-dlp to /usr/local/bin
mv yt-dlp /usr/local/bin/yt-dlp

# Display yt-dlp version
yt-dlp --version
