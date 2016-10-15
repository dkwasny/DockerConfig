#!/bin/bash

function run() {
	IMAGE="$1";
	NAME="$2";

	docker run \
		-d \
		--name "$NAME" \
		-h "$NAME.docker" \
		--net docker \
		dkwasny/"$IMAGE";
}

docker run -d --name "dnsmasq" -h "dnsmasq.docker" --net docker --ip 172.18.1.1 dkwasny/dnsmasq;
run mariadb mariadb;

run hdfs-namenode hdfs-namenode;
run hdfs-secondary-namenode hdfs-secondary-namenode;
run hdfs-datanode hdfs-datanode-1;
run hdfs-datanode hdfs-datanode-2;

run zookeeper zookeeper;

run hbase-master hbase-master;
run hbase-regionserver hbase-regionserver-1;
run hbase-regionserver hbase-regionserver-2;

run yarn-resourcemanager yarn-resourcemanager;
run yarn-nodemanager yarn-nodemanager-1;
run yarn-nodemanager yarn-nodemanager-2;
run mapreduce-historyserver mapreduce-historyserver;

run hive-hcatalog hive-hcatalog;
run hive-webhcat hive-webhcat;
run hive-server hive-server;
