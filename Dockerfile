FROM centos:7

#RUN for user in Kenneth; do useradd $user; echo "kenneth" | passwd $user --stdin; done
RUN yum update -y && yum install httpd -y

CMD ["rm /var/www/html/index.html"]


COPY ./webpage /var/www/html
