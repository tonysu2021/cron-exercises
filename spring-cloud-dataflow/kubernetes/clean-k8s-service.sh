#!/bin/sh

# Remove Message Broker

kubectl delete all -l app=rabbitmq

# Remove MySQL
kubectl delete all,pvc,secrets -l app=mysql


## Disable Monitoring
kubectl delete clusterrole,clusterrolebinding,sa -l app=prometheus-proxy
kubectl delete clusterrole,clusterrolebinding,sa -l app=prometheus

# Remove Prometheus proxy
kubectl delete all,cm,svc -l app=prometheus-proxy

# Remove Prometheus and Grafana
kubectl delete all,cm,svc -l app=prometheus

# Remove Grafana
kubectl delete all,cm,svc,secrets -l app=grafana

# Remove Data Flow Role Bindings and Service Account
kubectl delete role scdf-role
kubectl delete rolebinding scdf-rb
kubectl delete serviceaccount scdf-sa

# Remove Skipper
kubectl delete all,cm -l app=skipper

# Remove Data Flow Server
kubectl delete all,cm -l app=scdf-server