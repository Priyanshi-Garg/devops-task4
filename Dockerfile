FROM centos:latest
RUN yum install httpd -y 
WORKDIR /root/jen-ws
COPY  *.html  /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80 
