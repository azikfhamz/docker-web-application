FROM ubuntu:latest

LABEL "project"="barista"
LABEL "author"="muthu"

RUN apt update
RUN apt install apache2 -y

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

EXPOSE 80

WORKDIR /var/www/html
VOLUME /var/www/html

ADD waso.tar.gz /var/www/html
