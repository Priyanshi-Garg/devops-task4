FROM centos:latest
RUN yum install httpd -y 
RUN yum install php -y
COPY -rvf *.html /var/www/html
COPY -rvf *.php /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80 
