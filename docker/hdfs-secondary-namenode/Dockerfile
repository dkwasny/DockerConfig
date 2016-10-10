FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-hdfs-secondarynamenode

ENV HADOOP_HEAPSIZE=256

USER hdfs

CMD ["hdfs", "secondarynamenode"]
