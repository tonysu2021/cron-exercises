#!/bin/bash

echo ------------------------------------------------
echo Build zookeeper single stack
echo ------------------------------------------------
docker-compose --compatibility -f zoo-single.yml up --build -d
