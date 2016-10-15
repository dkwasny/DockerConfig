FROM dkwasny/base
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN yum -y install mariadb mariadb-server

COPY files/mariadb-setup.sh /tmp/
RUN chown mysql:mysql /tmp/mariadb-setup.sh
RUN chmod 700 /tmp/mariadb-setup.sh

COPY files/mariadb-run.sh /tmp/
RUN chown mysql:mysql /tmp/mariadb-run.sh
RUN chmod 700 /tmp/mariadb-run.sh

USER mysql

RUN mysql_install_db

RUN /tmp/mariadb-setup.sh

CMD ["/tmp/mariadb-run.sh"]
