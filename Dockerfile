FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get install apache2-utils -y
ADD . /var/www/html
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
