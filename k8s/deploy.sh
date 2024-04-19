#!/bin/sh
kubectl apply -f namespace.yaml
kubectl create secret -n valaxy generic regcred \
    --from-file=.dockerconfigjson=/home/ubuntu/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml