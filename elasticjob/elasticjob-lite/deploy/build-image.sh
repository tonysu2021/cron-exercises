#!/bin/sh

service_name="elasticjob"

echo "------------------------------------------------"
echo "Remove Old Image : ${service_name}"
echo "------------------------------------------------"
docker rmi ${service_name}:0.0.1

echo "------------------------------------------------"
echo "Build New Image : ${service_name}"
echo "------------------------------------------------"
# docker build --network=host --tag ${service_name}:0.0.1 --file ./Dockerfile ../
docker build --network=host --tag ${service_name}:0.0.1 .