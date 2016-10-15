FROM dkwasny/hadoop-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install mysql-connector-java

RUN ln -s /usr/share/java/mysql-connector-java.jar /usr/lib/hive/lib/

COPY files/hive-log4j.properties /etc/hive/conf/
COPY files/webhcat-log4j.properties /etc/hive-webhcat/conf/
