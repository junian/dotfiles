#!/bin/sh

docker create \
  --name=komga \
  --user 1000:1000 \
  -p 8080:8080 \
  --mount type=bind,source=D:/Docker/Komga/config,target=/config \
  --mount type=bind,source=D:/Docker/Komga/data,target=/data \
  --restart unless-stopped \
  gotson/komga
