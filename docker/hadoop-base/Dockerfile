FROM dkwasny/base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install \
	java-1.8.0-openjdk-devel \
	zookeeper \
	hadoop-hdfs \
	hadoop-yarn \
	hadoop-mapreduce \
	hbase

COPY files/core-site.xml /etc/hadoop/conf/
COPY files/log4j.properties /etc/hadoop/conf/

COPY files/hdfs-site.xml /etc/hadoop/conf/
ENV HADOOP_HEAPSIZE=256

COPY files/yarn-site.xml /etc/hadoop/conf/
COPY files/mapred-site.xml /etc/hadoop/conf/
ENV YARN_HEAPSIZE=256

COPY files/hbase-site.xml /etc/hbase/conf/
ENV HBASE_HEAPSIZE=256
