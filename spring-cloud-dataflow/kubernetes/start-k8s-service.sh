#!/bin/sh

# Deploy Message Broker

kubectl create -f ./rabbitmq/

# Deploy MySQL
kubectl create -f ./mysql/

## Enable Monitoring
kubectl create -f ./prometheus/prometheus-clusterroles.yaml
kubectl create -f ./prometheus/prometheus-clusterrolebinding.yaml
kubectl create -f ./prometheus/prometheus-serviceaccount.yaml

# Deploy Prometheus proxy
kubectl create -f ./prometheus-proxy/

# Deploy Prometheus and Grafana
kubectl create -f ./prometheus/prometheus-configmap.yaml
kubectl create -f ./prometheus/prometheus-deployment.yaml
kubectl create -f ./prometheus/prometheus-service.yaml

# Deploy Grafana
kubectl create -f ./grafana/

# Create Data Flow Role Bindings and Service Account
kubectl create -f ./server/server-roles.yaml
kubectl create -f ./server/server-rolebinding.yaml
kubectl create -f ./server/service-account.yaml

# Deploy Skipper
kubectl create -f ./skipper/skipper-config-rabbit.yaml
kubectl create -f ./skipper/skipper-deployment.yaml
kubectl create -f ./skipper/skipper-svc.yaml

# Deploy Data Flow Server
kubectl create -f ./server/server-config.yaml
kubectl create -f ./server/server-svc.yaml
kubectl create -f ./server/server-deployment.yaml