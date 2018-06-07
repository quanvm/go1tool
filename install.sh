#!/usr/bin/env bash

if [ $1 == local ]; then
  echo "Local install: $2"
  http -h POST http://web/GO1/$2/install
fi

if [ $1 == dev ]; then
  echo "Dev install: $2"
  http -h POST https://api-dev.go1.co/$2/install
fi

if [ $1 == prod ]; then
  echo "Prod install: $2"
  http -h POST https://api.go1.co/$2/install
fi
