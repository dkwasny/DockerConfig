FROM dkwasny/hdfs-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-hdfs-secondarynamenode

COPY files/hdfs-site.xml /etc/hadoop/conf/
COPY files/hadoop-hdfs-secondarynamenode /etc/default/

USER hdfs

CMD ["hdfs", "secondarynamenode"]
