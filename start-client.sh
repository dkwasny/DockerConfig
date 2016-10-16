#!/bin/bash

BASE_DIR="$(cd $(dirname $0); echo $PWD)";

docker run \
	-t \
	-i \
	--name client \
	-h client.docker \
	--net docker \
	-v $BASE_DIR/client-volume:/workspace/client-volume \
	dkwasny/client;
