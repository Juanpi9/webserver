FROM centos:latest

MAINTAINER NewstarCorporation

RUN yum -y install httpd

COPY test/index.html /tmp

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
