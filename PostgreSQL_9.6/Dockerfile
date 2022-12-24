FROM postgres:9.6
RUN apt-get update && apt-get install -y \
    vim \
    postgresql-contrib-9.6 \
    postgresql-9.6-postgis-2.3\
    postgis
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
ENV LANG ja_JP.UTF8
