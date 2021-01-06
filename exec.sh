#!/bin/bash

docker rm -f tama-child

cd base && docker build -t tama-base . && cd ../parent && docker build -t tama-parent . && cd ../child && docker build -t tama-child . &&  cd .. && docker run -d --name tama-child tama-child
