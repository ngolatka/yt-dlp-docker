Usage example:

    alias yt-dlp='export USER_ID=$(id -u) && export GROUP_ID=$(id -g) && docker compose -f /path/to/repo/yt-dlp-docker/docker-compose.yml run --rm app'

Build and update yt-dlp:

    docker compose build
