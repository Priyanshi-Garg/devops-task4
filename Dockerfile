FROM centos:latest
RUN yum install httpd -y 
COPY  /dev-task4/* /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80 
