FROM dkwasny/base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install \
	java-1.8.0-openjdk-devel \
	zookeeper \
	hadoop-hdfs \
	hadoop-yarn \
	hadoop-mapreduce \
	hbase \
	hive \
	hive-hcatalog \
	hive-webhcat \
	oozie-client

COPY files/core-site.xml /etc/hadoop/conf/
COPY files/log4j.properties /etc/hadoop/conf/
COPY files/hdfs-site.xml /etc/hadoop/conf/
COPY files/yarn-site.xml /etc/hadoop/conf/
COPY files/mapred-site.xml /etc/hadoop/conf/
COPY files/hbase-site.xml /etc/hbase/conf/
COPY files/hive-site.xml /etc/hive/conf/
