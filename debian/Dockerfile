FROM debian:latest

# RUN apt-get update
# RUN apt-get install -y bzip2 sudo wget vim curl gawk make gcc \
#         locales-all task-japanese

# RUN mkdir /workspace

# RUN localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
# RUN source /etc/default/locale
# RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
# RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# RUN locale-gen ja_JP.UTF-8 \
# RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
# ENV LANG ja_JP.UTF8


apt-get install -y locales
sudo dpkg-reconfigure locales
sudo dpkg-reconfigure tzdata