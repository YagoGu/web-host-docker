FROM ubuntu:20.04

#Actualización de repositorios con update y upgrade:
RUN apt-get update -y && apt-get upgrade -y

#Instalación de servicio nginx y ssl, herramientas de php y mysql y supervisord:
RUN apt-get -y install nginx 
RUN apt-get -y install openssl
#estas herramientas nos serviran para poder realizar codigo php y conectarnos a la BBDD
RUN apt-get -y install php7.4-fpm
RUN apt-get -y install php7.4-mysqli
RUN apt-get -y install supervisor

COPY /nginx/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Copiar configuracion base de http:
COPY /nginx/default /etc/nginx/sites-available/default

# Crear un directorio para los certificados SSL
RUN mkdir /etc/nginx/ssl

# Generar el certificado SSL autofirmado
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -days 365 -nodes -subj "/CN=asix"

# Establecer los permisos adecuados para los archivos SSL
RUN chmod 400 /etc/nginx/ssl/nginx.key /etc/nginx/ssl/nginx.crt

#Copiar los archivos basicos de la web
COPY /nginx/website/portada_libros /var/www/html/portada_libros
COPY /nginx/website/plantilla.css /var/www/html/plantilla.css
COPY /nginx/website/icono.ico /var/www/html/icono.ico
COPY /nginx/website/web.php /var/www/html/web.php

#Exponer puerto https & http:
EXPOSE 443 80

#Arranque del servidor:
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
