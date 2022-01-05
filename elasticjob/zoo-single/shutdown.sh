#!/bin/sh

echo ------------------------------------------------
echo Remove zookeeper single stack
echo ------------------------------------------------
docker-compose --compatibility -f zoo-single.yml down