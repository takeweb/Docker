FROM mysql:8.0-debian
RUN apt update && apt install -y \
	vim locales

RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
ENV LANG ja_JP.UTF8

COPY sql/*.sql /docker-entrypoint-initdb.d/
RUN chown mysql /docker-entrypoint-initdb.d/*.sql
RUN chmod 700 /docker-entrypoint-initdb.d/*.sql

COPY conf/my.cnf /etc/mysql/conf.d/my.cnf
