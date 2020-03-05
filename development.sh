#!/bin/bash

docker build frontend/ -t <repository_url>:development
docker push <repository_url>:development
docker build backend/ -t <repository_url>:development
docker push <repository_url>:development
helm install backend-development helm/backend/ -f helm/backend/values-development.yaml
helm install frontend-development helm/frontend/ -f helm/frontend/values-development.yaml

