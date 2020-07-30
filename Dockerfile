FROM centos:latest
RUN yum install httpd -y 
COPY  /root/jenkins-ws/* /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80 
