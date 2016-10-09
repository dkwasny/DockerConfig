FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-hdfs-datanode

COPY files/hdfs-site.xml /etc/hadoop/conf/
COPY files/hadoop-hdfs-datanode /etc/default/

USER hdfs

CMD ["hdfs", "datanode"]
