#!/bin/bash

# Enable Docker BuildKit
export DOCKER_BUILDKIT=1

#PREBUILD
#stuff like checking docker version


# BUILD the Docker image
export db-name, db-username, db-password
docker build --progress=plain -t node-server .
docker push to repo #provided Jfrog/aws repo URL

#POSTBUILD
#we can do stuff like triggering new containers like
aws ecs update-services --cluster NETSHI_cluster --force new deployment
