#!/bin/sh
# This script requires the devcontainer tool for publishing. You can install it with
#   npm install -g @devcontainers/cli
# More details can be found here https://github.com/devcontainers/cli#try-it-out
#
# The script currently requires you to edit the devcontainer.json to replace the ${templateOption:imageVariant}
# with the swift version number you are testing with
template_id=swift
set -e

# Build container
echo "Building dev container"
id_label="test-container=${template_id}"
devcontainer up --id-label ${id_label} --workspace-folder "src/${template_id}/"

# Test swift runs
devcontainer exec --workspace-folder "src/${template_id}/" --id-label ${id_label} /bin/sh -c 'swift --version'

# Clean up
docker rm -f $(docker container ls -f "label=${id_label}" -q)