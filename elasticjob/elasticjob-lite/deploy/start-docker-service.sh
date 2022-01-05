#!/bin/sh
export IMAGE_NAME="${1:-elasticjob:0.0.1}"
service_name="elasticjob"

echo "------------------------------------------------"
echo "Remove Old Stack : ${service_name}"
echo "------------------------------------------------"
docker stack rm ${service_name}

echo "------------------------------------------------"
echo "Deploy New Stack : ${service_name}"
echo "------------------------------------------------"
docker stack deploy -c ${service_name}.yml --prune ${service_name}