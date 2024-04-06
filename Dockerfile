# Use Alpine base image with edge repository
FROM --platform=${BUILDPLATFORM} alpine:edge

ARG PGID=1000
ARG PUID=1000
ENV PGID=${PGID}
ENV PUID=${PUID}
ENV USER=app
ENV TZ="UTC"

# hadolint ignore=DL3018
RUN addgroup -g ${PGID} ${USER} && \
    adduser -D -u ${PUID} -G ${USER} ${USER} && \
    apk update && \
    apk add --no-cache curl bash ffmpeg yt-dlp && \
    yt-dlp --version

USER app

ENTRYPOINT ["yt-dlp"]
