#!/bin/bash

echo ------------------------------------------------
echo Build elasticjob-ui stack
echo ------------------------------------------------
docker-compose --compatibility -f elasticjob-ui.yml up --build -d
