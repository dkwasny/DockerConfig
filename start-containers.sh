#!/bin/bash


function run() {
	IMAGE="$1";
	NAME="$2";
	IP="$3";

	docker run \
		-d \
		--name "$NAME" \
		-h "$NAME" \
		--net kwasnet \
		--ip "$IP" \
		dkwasny/"$IMAGE";
}

run dnsmasq dnsmasq 172.18.1.1
run hdfs-namenode hdfs-namenode 172.18.2.1
run hdfs-secondary-namenode hdfs-secondary-namenode 172.18.2.2
run hdfs-datanode hdfs-datanode-1 172.18.3.1
run hdfs-datanode hdfs-datanode-2 172.18.3.2
