FROM centos:7
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install java-1.8.0-openjdk-devel

COPY files/bigtop.repo /etc/yum.repos.d/
COPY files/core-site.xml /etc/hadoop/conf/
COPY files/log4j.properties /etc/hadoop/conf/
