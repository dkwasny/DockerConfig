FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-yarn hadoop-mapreduce

COPY files/yarn-site.xml /etc/hadoop/conf/
COPY files/mapred-site.xml /etc/hadoop/conf/

ENV YARN_HEAPSIZE=256
