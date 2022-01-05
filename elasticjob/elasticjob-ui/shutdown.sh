#!/bin/sh

echo ------------------------------------------------
echo Remove elasticjob-ui stack
echo ------------------------------------------------
docker-compose --compatibility -f elasticjob-ui.yml down