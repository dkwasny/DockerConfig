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

ENV HADOOP_HEAPSIZE=256 \
	HBASE_HEAPSIZE=256 \
	YARN_HEAPSIZE=256 \
	HADOOP_HOME_WARN_SUPPRESS=true \
	HADOOP_HOME=/usr/lib/hadoop \
	HADOOP_PREFIX=/usr/lib/hadoop \
	HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec \
	HADOOP_CONF_DIR=/etc/hadoop/conf \
	HADOOP_COMMON_HOME=/usr/lib/hadoop \
	HADOOP_HDFS_HOME=/usr/lib/hadoop-hdfs \
	HADOOP_MAPRED_HOME=/usr/lib/hadoop-mapreduce \
	HADOOP_YARN_HOME=/usr/lib/hadoop-yarn \
	HADOOP_LOG_DIR=/var/log/hadoop-hdfs \
	HADOOP_MAPRED_LOG_DIR=/var/log/hadoop-mapreduce \
	HBASE_CONF_DIR=/etc/hbase/conf \
	HBASE_HOME=/usr/lib/hbase \
	HBASE_LOG_DIR=/var/log/hbase \
	YARN_CONF_DIR=/etc/hadoop/conf \
	YARN_LOG_DIR=/var/log/hadoop-yarn

