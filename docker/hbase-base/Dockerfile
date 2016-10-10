FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hbase

COPY files/hbase-site.xml /etc/hbase/conf/

ENV HBASE_HEAPSIZE=256
