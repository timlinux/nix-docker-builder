#!/usr/bin/env bash

nix-build docker.nix
# To create the image only
#docker load < result
# To create and run it directly
docker run -t $(docker load < result | grep "Loaded image:" | sed 's/Loaded image: //g')
