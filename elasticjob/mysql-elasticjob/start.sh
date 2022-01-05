#!/bin/sh

docker rmi mysql_5.7.25

docker build -t mysql_5.7.25 .

docker-compose -f mysql-elasticjob.yml up -d 