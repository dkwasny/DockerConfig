FROM dkwasny/yarn-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install hadoop-yarn-nodemanager

RUN mkdir -p /usr/lib/hadoop-yarn/logs/
RUN chown yarn:yarn /usr/lib/hadoop-yarn/logs/

USER yarn

CMD ["yarn", "nodemanager"]
