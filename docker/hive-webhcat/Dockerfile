FROM dkwasny/hive-base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

ENV WEBHCAT_LOG_DIR=/var/log/hive-hcatalog

USER hive

CMD ["/usr/lib/hive-hcatalog/sbin/webhcat_server.sh", "foreground"]
