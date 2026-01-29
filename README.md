# yt-dlp-docker

This allows you to run [yt-dlp](https://github.com/yt-dlp/yt-dlp) in a Docker container, without having to install it and
all the dependencies natively on your system.

Thanks to everyone working on yt-dlp for providing such an awesome tool!

## Step 1: Build

Run this command to create a Docker image with an updated yt-dlp version.

    docker compose build

This needs to be done from time to time to keep everything working. If you notice that downloads aren't working as
expected, run the above command to update yt-dlp in the Docker image, then try again.

By default, yt-dlp will be updated to the nightly channel. You can override this with the optional build arg `CHANNEL`.

## Step 2: Preparation

Create a bash alias in your `.bashrc` or `.bash_aliases`.

    alias yt-dlp='export USER_ID=$(id -u) && export GROUP_ID=$(id -g) && docker compose -f /path/to/repo/yt-dlp-docker/docker-compose.yml run --rm app'

## Step 3: Use it

Run `yt-dlp` with the desired parameters, see [documentation](https://github.com/yt-dlp/yt-dlp/blob/master/README.md#usage-and-options).
This works the same as running it natively.

Note that you should remove `&` characters from the download-URL. Otherwise the shell might interpret the URL incorrectly.
