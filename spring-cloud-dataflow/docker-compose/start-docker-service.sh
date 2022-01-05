#!/bin/sh

docker-compose -f ./docker-compose.yml \
               -f ./docker-compose-rabbitmq.yml \
               -f ./docker-compose-postgres.yml \
               -f ./docker-compose-prometheus.yml up -d

## http://172.20.101.27:9393/dashboard