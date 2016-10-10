FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-hdfs-namenode

USER hdfs
RUN hdfs namenode -format

CMD ["hdfs", "namenode"]
