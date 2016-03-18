#!/bin/bash

docker build -t nizq/heka-build .
docker run --rm -ti \
       -v `pwd`:/source \
       nizq/heka-build /source/build-heka.sh

cp Dockerfile.final final/Dockerfile
cp entrypoint.sh final
cd final
docker build -t nizq/heka .
