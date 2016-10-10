FROM dkwasny/yarn-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-yarn-resourcemanager

COPY files/capacity-scheduler.xml /etc/hadoop/conf/

USER yarn

CMD ["yarn", "resourcemanager"]
