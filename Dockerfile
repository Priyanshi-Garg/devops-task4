FROM centos:latest
RUN yum install httpd -y 
RUN echo `pwd`
WORKDIR /root/jen-ws
RUN echo `pwd`
COPY  *.html  /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80 
