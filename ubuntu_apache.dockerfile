FROM ubuntu:22.04
RUN apt-get update -y && apt-get install -y apache2
COPY ./index.html /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
