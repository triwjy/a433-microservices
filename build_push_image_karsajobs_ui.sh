#! /bin/bash

# build docker image
docker build -t ghcr.io/triwjy/karsajobs-ui:latest .

# login ke github package
echo $PASSWORD_GHCR | docker login ghcr.io -u triwjy --password-stdin

# mengunggah image ke github package
docker push ghcr.io/triwjy/karsajobs-ui:latest
