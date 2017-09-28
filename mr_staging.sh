#!/usr/bin/env bash

for service in "$@"
do
 ./mr.sh $service master staging "Deploy staing" duy
done
