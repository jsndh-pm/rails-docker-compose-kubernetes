#!/bin/bash

if [ -z "$1" ]; then
  LC=$(git rev-parse --short HEAD)
  docker build -t jsndh/webapp:${LC} .
else
  LC=$1
fi

docker push jsndh/webapp:${LC}
