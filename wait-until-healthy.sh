#!/bin/bash

echo -n "Waiting for the service to be healthy..."
response="starting"

until [[ ! $response ]]; do
  sleep 1
  echo -n "."
  response=$(docker-compose ps | grep -E "(starting|unhealthy)")
done

printf "Success!\n"
echo "Please visit http://sandbox:3001"
