FROM php:apache
COPY index.php /var/www/html/index.php
RUN sed -r 's#([[:space:]]*Listen[[:space:]]+)(80)#\1 8080#g' /etc/apache2/ports.conf \
 && sed -r 's#([[:space:]]*Listen[[:space:]]+)(443)#\1 8443#g' /etc/apache2/ports.conf
