FROM dkwasny/hadoop-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install \
	mysql-connector-java \
	unzip \
	oozie

RUN ln -s /usr/share/java/mysql-connector-java.jar /usr/lib/oozie/lib/

ADD http://archive.cloudera.com/gplextras/misc/ext-2.2.zip /usr/lib/oozie/libext/
RUN unzip -d /usr/lib/oozie/libext/ /usr/lib/oozie/libext/ext-2.2.zip

COPY files/oozie-site.xml /etc/oozie/conf/

RUN /usr/lib/oozie/tomcat-deployment.sh

CMD ["/usr/lib/oozie/bin/oozied.sh", "run"]
