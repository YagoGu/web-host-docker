FROM ubuntu:20.04

#Actualización de repositorios con update y upgrade:
RUN apt-get update -y && apt-get upgrade -y

#Instalación de servicio http:
RUN apt-get -y install nginx 
RUN apt-get -y install 

#Copiar configuracion base de http:
COPY default /etc/nginx/sites-available/default

COPY /website/web.html /var/www/html/web.html
COPY /website/css.css /var/www/html/css.css
COPY /website/icono.ico /var/www/html/icono.ico
COPY /website/portada_libros /var/www/html/portada_libros


#Exponer puerto tcp & http:
EXPOSE 80/tcp 53

#Arranque del servidor:
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]