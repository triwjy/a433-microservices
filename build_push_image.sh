#! /bin/bash

# build docker image
docker build -t item-app:v1 .

# melihat daftar docker image di local machine
docker images

# mengubah nama image untuk diunggah ke github package
docker tag item-app:v1 ghcr.io/triwjy/item-app:v1

# login ke github package
echo $PASSWORD_GHCR | docker login -u triwjy --password-stdin

# mengunggah image ke github package
docker push ghcr.io/triwjy/item-app:v1