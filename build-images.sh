#!/bin/bash

SCRIPT_DIR="$(dirname $0)";

function build-dockerfile() {
	IMAGE_NAME="$1";
	IMAGE_DIR="$SCRIPT_DIR/docker/$IMAGE_NAME";
	docker build \
		-f "$IMAGE_DIR/Dockerfile" \
		-t "dkwasny/$IMAGE_NAME" \
		"$IMAGE_DIR";
}

# We need to ensure base-image is built first.
build-dockerfile "base"
build-dockerfile "hdfs-base"

# Build all images.
for i in $(ls docker); do
	build-dockerfile "$i";
done;

