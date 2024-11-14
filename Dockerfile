FROM alpine:latest

ARG CHANNEL

RUN apk add curl ffmpeg python3
RUN cd /bin && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o yt-dlp && \
    chmod 777 yt-dlp && \
    ./yt-dlp --update-to ${CHANNEL}

WORKDIR /yt-dlp-downloads

ENTRYPOINT [ "/bin/yt-dlp", "--no-cache-dir", "--restrict-filenames" ]
