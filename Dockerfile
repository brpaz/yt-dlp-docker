# Use Debian base image with bookworm-slim
FROM --platform=${BUILDPLATFORM} debian:bookworm-slim

# Define arguments and environment variables
ARG BUILDPLATFORM
ARG PGID=1000
ARG PUID=1000
ARG YT_DLP_VERSION
ENV BUILDPLATFORM=${BUILDPLATFORM}
ENV YT_DLP_VERSION=${YT_DLP_VERSION:-latest}
ENV PGID=${PGID}
ENV PUID=${PUID}
ENV USER=app
ENV TZ="UTC"

# Create user and install dependencies
# hadolint ignore=DL3008
RUN groupadd -g ${PGID} ${USER} && \
    useradd -u ${PUID} -g ${USER} -m ${USER} -l && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    bash \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the script into the container
COPY scripts/download_yt-dlp.sh .

# Run the script to download yt-dlp
RUN chmod +x download_yt-dlp.sh && \
    ./download_yt-dlp.sh

# Switch to non-root user
USER ${USER}

ENTRYPOINT ["yt-dlp"]
