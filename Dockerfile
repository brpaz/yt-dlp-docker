# Use Alpine base image with edge repository
FROM --platform=${BUILDPLATFORM} alpine:edge

# hadolint ignore=DL3018
RUN apk update && \
    apk add --no-cache curl bash ffmpeg yt-dlp && \
    yt-dlp --version

ENTRYPOINT ["yt-dlp"]
