FROM dkwasny/hbase-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hbase-master

USER hbase

CMD ["hbase", "master", "start"]
