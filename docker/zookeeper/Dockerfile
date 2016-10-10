FROM dkwasny/base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install zookeeper-server

COPY files/myid /var/lib/zookeeper/
COPY files/zoo.cfg /etc/zookeeper/conf/

ENV SERVER_JVMFLAGS="-Xmx256m"
ENV JMXDISABLE="No JMX for you"

USER zookeeper

CMD ["zookeeper-server", "start-foreground"]
