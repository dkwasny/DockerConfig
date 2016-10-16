#!/bin/bash

CONTAINERS_TO_STOP=$(docker ps -qa);
if [ -z "$CONTAINERS_TO_STOP" ]; then
	echo "No containers to stop";
else
	docker stop $CONTAINERS_TO_STOP;
	docker rm $CONTAINERS_TO_STOP;
fi;
