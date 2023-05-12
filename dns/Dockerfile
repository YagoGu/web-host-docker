FROM ubuntu:latest

# Instalación de paquetes necesarios
RUN apt-get update && apt-get install -y bind9
# Copia de archivos de configuración
COPY dns/named.conf /var/named/named.conf
COPY dns/thelibrary.asix.zone /var/named/thelibrary.asix.zone

RUN chown root:bind /var/named/*
RUN chmod 775 /var/named/*

# Puertos expuestos
EXPOSE 53

# Comando para iniciar supervisord
CMD ["named", "-g"]
