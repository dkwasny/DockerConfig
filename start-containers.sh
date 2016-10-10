#!/bin/bash


function run() {
	IMAGE="$1";
	NAME="$2";

	docker run \
		-d \
		--name "$NAME" \
		-h "$NAME" \
		--net kwasnet \
		dkwasny/"$IMAGE";
}

docker run -d --name dnsmasq -h dnsmasq --net kwasnet --ip 172.18.1.1 dkwasny/dnsmasq
run hdfs-namenode hdfs-namenode;
run hdfs-secondary-namenode hdfs-secondary-namenode;
run hdfs-datanode hdfs-datanode-1;
run hdfs-datanode hdfs-datanode-2;
