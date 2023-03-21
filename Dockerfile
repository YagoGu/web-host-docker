FROM ubuntu:20.04

#Actualización de repositorios con update y upgrade:
RUN apt-get update -y && apt-get upgrade -y

#Instalación de servicio http:
RUN apt-get -y install nginx 
RUN apt-get -y install openssl

#Copiar configuracion base de http:
COPY default /etc/nginx/sites-available/default

# Crear un directorio para los certificados SSL
RUN mkdir /etc/nginx/ssl

# Generar el certificado SSL autofirmado
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -days 365 -nodes -subj "/CN=localhost"

# Establecer los permisos adecuados para los archivos SSL
RUN chmod 400 /etc/nginx/ssl/nginx.key /etc/nginx/ssl/nginx.crt

#Copiar los archivos basicos de la web
COPY /website/web.html /var/www/html/web.html
COPY /website/css.css /var/www/html/css.css
COPY /website/icono.ico /var/www/html/icono.ico
COPY /website/portada_libros /var/www/html/portada_libros

#Exponer puerto https & http:
EXPOSE 443 80 

#Arranque del servidor:
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
