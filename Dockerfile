FROM ubuntu:16.04

RUN apt-get update -yqq
RUN apt-get install apt-utils -y
RUN apt-get install wget -y
RUN apt-get install language-pack-en git unzip curl -yqq
RUN apt-get install -y software-properties-common python-software-properties
RUN LC_ALL=C.UTF-8 add-apt-repository -y  ppa:ondrej/php
RUN apt-get update -yqq
RUN apt-get install -y php7.2 php7.2-cli php7.2-mbstring php7.2-zip php7.2-mysql php7.2-opcache php7.2-json php7.2-curl php7.2-ldap php7.2-intl php7.2-common php7.2-gd php7.2.soap php7.2-mcrypt php7.2-xdebug php7.2-xml php7.2-mysql php7.2-opcache php7.2-sqlite3
RUN echo 'memory_limit=512M'> /etc/php/7.1/cli/conf.d/php-memory_limit.ini
RUN curl -sS https://getcomposer.org/installer| php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get -y install phpunit
RUN curl -sL https://deb.nodesource.com/setup_10.x| bash - && apt-get install nodejs

