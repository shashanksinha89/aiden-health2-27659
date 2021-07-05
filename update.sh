#!/usr/bin/env bash

#sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf
#service apache2 start

sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/ports.conf
sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/apache2.conf
sed -i "s/VirtualHost \*:80/VirtualHost \*:${PORT:-80}/g" /etc/apache2/sites-available/000-default.conf
apache2-foreground "$@"
