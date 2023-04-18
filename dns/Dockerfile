FROM ubuntu:latest

# Instalación de paquetes necesarios
RUN apt-get update && apt-get install -y bind9

# Copia de archivos de configuración
COPY /dns/named.conf /etc/bind/named.conf
COPY /dns/thelibrary.asix /etc/bind/thelibrary.asix

# Puertos expuestos
EXPOSE 53/tcp
EXPOSE 53/udp

# Comando para iniciar el servidor DNS
CMD ["named", "-g"]
