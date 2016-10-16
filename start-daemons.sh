#!/bin/bash

function help() {
	echo "$0 [-d NUM_DATANODES] [-r NUM_REGIONSERVERS] [-n NUM_NODEMANAGERS] [-a NUM_ALL]";
	echo "NUM_ALL will apply to all other parameters";
}

function run() {
	IMAGE="$1";
	NAME="$2";

	echo "Starting $NAME";

	docker run \
		-d \
		--name "$NAME" \
		-h "$NAME.docker" \
		--net docker \
		dkwasny/"$IMAGE" > /dev/null;
}

while getopts hd:r:n:a: ARG; do
	case "$ARG" in
		h) help; exit 0;;
		d) NUM_DATANODES="$OPTARG";;
		r) NUM_REGIONSERVERS="$OPTARG";;
		n) NUM_NODEMANAGERS="$OPTARG";;
		a) NUM_DATANODES="$OPTARG";
			NUM_REGIONSERVERS="$OPTARG";
			NUM_NODEMANAGERS="$OPTARG";;
	esac;
done;

if [ -z "$NUM_DATANODES" ]; then
	echo "NUM_DATANODES not specified";
	exit 1;
elif [ -z "$NUM_REGIONSERVERS" ]; then
	echo "NUM_REGIONSERVERS not specified";
	exit 1;
elif [ -z "$NUM_NODEMANAGERS" ]; then
	echo "NUM_NODEMANAGERS not specified";
	exit 1;
fi;

echo "Starting with:
	$NUM_DATANODES datanodes
	$NUM_REGIONSERVERS regionservers
	$NUM_NODEMANAGERS nodemanagers
";

echo "Starting dnsmasq";
docker run -d --name "dnsmasq" -h "dnsmasq.docker" --net docker --ip 172.18.1.1 dkwasny/dnsmasq > /dev/null;

DAEMONS="
	mariadb
	hdfs-namenode 
	hdfs-secondary-namenode
	yarn-resourcemanager
	zookeeper
	hbase-master
	mapreduce-historyserver
	hive-hcatalog
	hive-webhcat
	hive-server
	oozie
";

for i in $DAEMONS; do
	run "$i" "$i";
done;

i=0;
while (( ++i <= $NUM_DATANODES )); do
	run hdfs-datanode hdfs-datanode-$i;
done;

i=0;
while (( ++i <= $NUM_REGIONSERVERS )); do
	run hbase-regionserver hbase-regionserver-$i;
done;

i=0;
while (( ++i <= $NUM_NODEMANAGERS )); do
	run yarn-nodemanager yarn-nodemanager-$i;
done;
