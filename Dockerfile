FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

COPY ./src /var/www/html

EXPOSE 8080
CMD ["apache2ctl", "-D", "FOREGROUND"]

