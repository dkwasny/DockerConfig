FROM dkwasny/yarn-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

COPY files/capacity-scheduler.xml /etc/hadoop/conf/

USER yarn

CMD ["yarn", "resourcemanager"]
