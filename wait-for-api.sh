#!/bin/bash

response=$(curl -s -o /dev/null -w "%{http_code}" host.docker.internal:"$1")

if [ "$response" -eq 200 ]; then
    exit 0
fi
exit 1
