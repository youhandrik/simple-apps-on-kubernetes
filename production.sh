#!/bin/bash

docker build frontend/ -t <repository_url>:production
docker push <repository_url>:production
docker build backend/ -t <repository_url>:production
docker push <repository_url>:production
helm install backend-production helm/backend/ -f helm/backend/values-production.yaml
helm install frontend-production helm/frontend/ -f helm/frontend/values-production.yaml

