FROM ubuntu:latest

# Instalación de paquetes necesarios
RUN apt-get update && apt-get install -y bind9 supervisor

# Copia de archivos de configuración
COPY dns/named.conf /etc/bind/named.conf
COPY dns/thelibrary.asix /etc/bind/thelibrary.asix

RUN chown root:bind /etc/bind/*
RUN chmod 775 /etc/bind/*

# Copia el archivo de zona a la ubicación correcta
COPY dns/thelibrary.asix /var/named/thelibrary.asix

# Copia el archivo de configuración de supervisord
COPY dns/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Puertos expuestos
EXPOSE 53/tcp
EXPOSE 53/udp

# Comando para iniciar supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
