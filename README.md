# Usage example

Bash alias:

    alias yt-dlp='export USER_ID=$(id -u) && export GROUP_ID=$(id -g) && docker compose -f /path/to/repo/yt-dlp-docker/docker-compose.yml run --rm app'

The user ID and group ID are applied to the downloaded file.

# Build and update yt-dlp

    docker compose build

By default, yt-dlp will be updated to the nightly channel. You can override this with the build arg `CHANNEL`.
