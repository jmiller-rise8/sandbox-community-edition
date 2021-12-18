#!/bin/bash

docker-compose up --detach
#sleep 5
./wait-until-healthy.sh