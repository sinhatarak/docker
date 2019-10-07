FROM centos

MAINTAINER tarak

RUN yum install -y httpd*
#CMD "echo"  "Welcome to APACHE" >> /var/www/html/index.html

ADD index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
