#!/bin/bash

export DOCKER_BUILDKIT=1
UID=`cat /etc/passwd | grep $USER | awk -F: '{print $4}'`
docker build -t defect:latest --build-arg uid=$UID .