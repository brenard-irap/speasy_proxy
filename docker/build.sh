#!/usr/bin/env sh

BASEDIR=$(dirname "$0")
PORT=${1:-6543}
NAME=${2:-speasy_proxy}
SPEASY=${3:-speasy}

read -p "IRAP Gitlab user: " GITLAB_USER
read -p "IRAP Gitlab password: " GITLAB_PWD
docker build --no-cache --build-arg PORT=$PORT --build-arg SPEASY=$SPEASY --build-arg GITLAB_USER=$GITLAB_USER --build-arg GITLAB_PWD=$GITLAB_PWD -t $NAME -f $BASEDIR/Dockerfile $BASEDIR/../
