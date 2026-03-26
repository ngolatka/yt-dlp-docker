#!/usr/bin/env bash

basePath=$(dirname "${0}")

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

read -r -p "Enter URL: " url

# If URL contains '&' remove it and everything afterwards
urlClean=($echo "${url%%&*}")

docker compose -f "${basePath}/docker-compose.yml" run --rm app "${@}" "${urlClean}"
