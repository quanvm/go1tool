#!/usr/bin/env bash

for service in "$@"
do
 ./mr.sh $service staging production "Deploy production" duy
done
