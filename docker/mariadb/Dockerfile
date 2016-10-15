FROM dkwasny/base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install mariadb mariadb-server

COPY files/mariadb-secure.sh /tmp/
RUN chown mysql:mysql /tmp/mariadb-secure.sh
RUN chmod 700 /tmp/mariadb-secure.sh

COPY files/mariadb-run.sh /tmp/
RUN chown mysql:mysql /tmp/mariadb-run.sh
RUN chmod 700 /tmp/mariadb-run.sh

USER mysql

RUN mysql_install_db

RUN /tmp/mariadb-secure.sh

CMD ["/tmp/mariadb-run.sh"]
