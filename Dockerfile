#FROM php:7.2-apache
FROM php:7.3-apache-buster
COPY ./update.sh /usr/local/bin.
COPY . /var/www/html/
RUN echo $PORT
#COPY apache2.conf /etc/apache2/sites-available/000-default.conf
#CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf && service apache2 start
CMD [ "./update.sh" ]


