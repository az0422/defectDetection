#!/bin/bash

export DOCKER_BUILDKIT=1
docker build -t defect:latest --build_arg uid=${UID} .
