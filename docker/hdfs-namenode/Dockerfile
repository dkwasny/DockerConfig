FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-hdfs-namenode

COPY files/hdfs-site.xml /etc/hadoop/conf/
COPY files/hadoop-hdfs-namenode /etc/default/

USER hdfs
RUN hdfs namenode -format

CMD ["hdfs", "namenode"]
