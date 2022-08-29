#!/bin/bash
export HASHCOMMIT=`git log -1 --pretty=format:"%h"`
sed -i "s/v1/$HASHCOMMIT/" docker-compose.yml
docker compose up -d 



