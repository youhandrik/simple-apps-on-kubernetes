#!/bin/bash

docker build frontend/ -t <repository_url>:staging
docker push <repository_url>:staging
docker build backend/ -t <repository_url>:staging
docker push <repository_url>:staging
helm install backend-staging helm/backend/ -f helm/backend/values-staging.yaml
helm install frontend-staging helm/frontend/ -f helm/frontend/values-staging.yaml

