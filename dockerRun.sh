#!/bin/bash

cd electrode_ota
docker build -t muratkarakas/ota:latest  src/docker/

cd ..

docker-compose up