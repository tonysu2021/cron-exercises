#!/bin/sh

# Deploy Message Broker

kubectl create -f ./kubernetes/rabbitmq/

# Deploy MySQL
kubectl create -f ./kubernetes/mysql/

## Enable Monitoring
kubectl create -f ./kubernetes/prometheus/prometheus-clusterroles.yaml
kubectl create -f ./kubernetes/prometheus/prometheus-clusterrolebinding.yaml
kubectl create -f ./kubernetes/prometheus/prometheus-serviceaccount.yaml

# Deploy Prometheus proxy
kubectl create -f ./kubernetes/prometheus-proxy/

# Deploy Prometheus and Grafana
kubectl create -f ./kubernetes/prometheus/prometheus-configmap.yaml
kubectl create -f ./kubernetes/prometheus/prometheus-deployment.yaml
kubectl create -f ./kubernetes/prometheus/prometheus-service.yaml

# Deploy Grafana
kubectl create -f ./kubernetes/grafana/

# Create Data Flow Role Bindings and Service Account
kubectl create -f ./kubernetes/server/server-roles.yaml
kubectl create -f ./kubernetes/server/server-rolebinding.yaml
kubectl create -f ./kubernetes/server/service-account.yaml

# Deploy Skipper
kubectl create -f ./kubernetes/skipper/skipper-config-rabbit.yaml
kubectl create -f ./kubernetes/skipper/skipper-deployment.yaml
kubectl create -f ./kubernetes/skipper/skipper-svc.yaml

# Deploy Data Flow Server
kubectl create -f ./kubernetes/server/server-config.yaml
kubectl create -f ./kubernetes/server/server-svc.yaml
kubectl create -f ./kubernetes/server/server-deployment.yaml