#!/bin/bash
#!/bin/bash

# Enable Docker BuildKit
export DOCKER_BUILDKIT=1

# Build the Docker image and tag it: latest
docker build --tag nodejs-app:latest --cache-from=type=local,src=.cache --cache-to=type=local,dest=.cache .

# Display a message upon successful build
echo "Docker image 'nodejs-app:latest' built successfully."

