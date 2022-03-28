#!/bin/bash

# User-supplied values
PORT=$1
VOLUME=$2
NAME=$3

docker run \
  --rm \
  -p ${PORT}:8888 \
  -v ${VOLUME}:/home/jovyan/work \
  -e DOCKER_STACKS_JUPYTER_CMD \
  --name ${NAME} elara