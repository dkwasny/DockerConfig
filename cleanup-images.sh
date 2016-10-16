#!/bin/bash

LEFTOVER_IMAGES=$(docker images -f "dangling=true" -q);

if [ -z "$LEFTOVER_IMAGES" ]; then
	echo "No leftover images";
else
	docker rmi $LEFTOVER_IMAGES;
fi;
