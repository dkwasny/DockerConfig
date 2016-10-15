FROM dkwasny/hadoop-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install \
	mariadb \
	git \
	sudo \
	pig \
	sqoop

RUN mkdir /workspace

COPY files/hdfs-init.sh /workspace/
RUN chmod 700 /workspace/hdfs-init.sh

WORKDIR /workspace
