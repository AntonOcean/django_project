#!/bin/bash
# grafana 127.0.0.1:9090 - server mode

docker stop django_prod-1
docker stop django_prod-2
docker stop django_prod-3

docker build -t django_prod .

docker run --rm -p 8001:8000 --name django_prod-1 django_prod &
docker run --rm -p 8002:8000 --name django_prod-2 django_prod &
docker run --rm -p 8003:8000 --name django_prod-3 django_prod &

cd ./prometheus
docker stop django_prod_prometheus
docker build -t django_prod_prometheus .
docker run --rm --network host --name django_prod_prometheus django_prod_prometheus &

docker run --rm --network host --name django_prod_grafana grafana/grafana
