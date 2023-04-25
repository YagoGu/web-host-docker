FROM mysql:latest

# Establece las variables de entorno para la configuración de MySQL
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=BBDDLibrary
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expone el puerto de MySQL
EXPOSE 3306

COPY /php/BBDDLibrary.sql /var/lib/mysql/BBDDLibrary.sql

# Comando para iniciar el servidor MySQL y importar la base de datos
CMD ["mysqld"]


